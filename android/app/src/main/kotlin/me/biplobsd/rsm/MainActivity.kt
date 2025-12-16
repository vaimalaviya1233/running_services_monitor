package me.biplobsd.rsm

import android.content.pm.PackageManager
import android.os.Handler
import android.os.Looper
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import rikka.shizuku.Shizuku
import java.io.BufferedReader
import java.io.InputStreamReader

class MainActivity : FlutterActivity(), Shizuku.OnRequestPermissionResultListener {
    val channel = "com.runningservices/shizuku"
    val streamChannel = "com.runningservices/shizuku_stream"
    val shizukuPermissionRequestCode = 1001
    var pendingPermissionResult: MethodChannel.Result? = null
    val mainHandler = Handler(Looper.getMainLooper())
    var isRootAvailable: Boolean? = null
    var currentWorkingMode: String = "auto"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        Shizuku.addRequestPermissionResultListener(this)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            when (call.method) {
                "runCommand" -> {
                    val command = call.argument<String>("command")
                    val mode = call.argument<String>("mode") ?: currentWorkingMode
                    if (command != null) {
                        runCommandInBackground(command, mode, result)
                    } else {
                        result.error("INVALID_ARGUMENT", "Command cannot be null", null)
                    }
                }
                "setWorkingMode" -> {
                    val mode = call.argument<String>("mode")
                    if (mode != null) {
                        currentWorkingMode = mode
                        result.success(true)
                    } else {
                        result.error("INVALID_ARGUMENT", "Mode cannot be null", null)
                    }
                }
                "getWorkingMode" -> {
                    result.success(currentWorkingMode)
                }
                "pingBinder" -> {
                    try {
                        result.success(Shizuku.pingBinder())
                    } catch (e: Exception) {
                        result.success(false)
                    }
                }
                "checkRootPermission" -> {
                    CoroutineScope(Dispatchers.IO).launch {
                        val hasRoot = checkRootAvailable()
                        withContext(Dispatchers.Main) {
                            result.success(hasRoot)
                        }
                    }
                }
                "requestRootPermission" -> {
                    CoroutineScope(Dispatchers.IO).launch {
                        val hasRoot = checkRootAvailable()
                        withContext(Dispatchers.Main) {
                            result.success(hasRoot)
                        }
                    }
                }
                "checkPermission" -> {
                    try {
                        if (Shizuku.isPreV11()) {
                            result.success(false)
                        } else {
                            result.success(Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED)
                        }
                    } catch (e: Exception) {
                        result.success(false)
                    }
                }
                "requestPermission" -> {
                    try {
                        if (Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED) {
                            result.success(true)
                        } else if (Shizuku.shouldShowRequestPermissionRationale()) {
                            pendingPermissionResult = result
                            Shizuku.requestPermission(shizukuPermissionRequestCode)
                        } else {
                            pendingPermissionResult = result
                            Shizuku.requestPermission(shizukuPermissionRequestCode)
                        }
                    } catch (e: Exception) {
                        result.error("PERMISSION_ERROR", e.message, null)
                    }
                }
                else -> result.notImplemented()
            }
        }

        EventChannel(flutterEngine.dartExecutor.binaryMessenger, streamChannel).setStreamHandler(
            object : EventChannel.StreamHandler {
                override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                    if (events == null) return
                    
                    val command = arguments as? String
                    if (command == null) {
                        events.error("INVALID_ARGUMENT", "Command cannot be null", null)
                        events.endOfStream()
                        return
                    }

                    CoroutineScope(Dispatchers.IO).launch {
                        try {
                            executeCommandWithStream(command, currentWorkingMode, events)
                            withContext(Dispatchers.Main) {
                                events.endOfStream()
                            }
                        } catch (e: Exception) {
                            withContext(Dispatchers.Main) {
                                events.error("EXECUTION_ERROR", e.message, null)
                                events.endOfStream()
                            }
                        }
                    }
                }

                override fun onCancel(arguments: Any?) {
                }
            }
        )
    }

    override fun onDestroy() {
        super.onDestroy()
        Shizuku.removeRequestPermissionResultListener(this)
    }

    override fun onRequestPermissionResult(requestCode: Int, grantResult: Int) {
        if (requestCode == shizukuPermissionRequestCode) {
            val granted = grantResult == PackageManager.PERMISSION_GRANTED
            pendingPermissionResult?.success(granted)
            pendingPermissionResult = null
        }
    }



    fun runCommandInBackground(command: String, mode: String, result: MethodChannel.Result) {
        CoroutineScope(Dispatchers.IO).launch {
            try {
                val output = executeCommand(command, mode)
                withContext(Dispatchers.Main) {
                    result.success(output)
                }
            } catch (e: Exception) {
                println("command: $command")
                println("mode: $mode")
                e.printStackTrace()
                e.message?.let {
                    println("Exception: $it")
                }
                withContext(Dispatchers.Main) {
                    result.error("EXECUTION_ERROR", e.message, null)
                }
            }
        }
    }

    fun executeCommand(command: String, mode: String): String {
        return when (mode) {
            "root" -> {
                if (checkRootAvailable()) {
                    executeRootCommand(command)
                } else {
                    throw Exception("Root is not available")
                }
            }
            "shizuku" -> {
                if (Shizuku.pingBinder()) {
                    executeShizukuCommand(command)
                } else {
                    throw Exception("Shizuku is not running")
                }
            }
            else -> {
                if (checkRootAvailable()) {
                    executeRootCommand(command)
                } else if (Shizuku.pingBinder()) {
                    executeShizukuCommand(command)
                } else {
                    throw Exception("No execution mode available")
                }
            }
        }
    }



    fun executeShizukuCommand(command: String): String {
        val process = Shizuku.newProcess(arrayOf("sh", "-c", command), null, null)
        val reader = BufferedReader(InputStreamReader(process.inputStream))
        val output = StringBuilder()
        var line: String?

        while (reader.readLine().also { line = it } != null) {
            output.append(line).append("\n")
        }

        process.waitFor()
        return output.toString()
    }

    fun checkRootAvailable(): Boolean {
        if (isRootAvailable != null) {
            return isRootAvailable!!
        }

        isRootAvailable = try {
            val process = Runtime.getRuntime().exec(arrayOf("su", "-c", "id"))
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            val output = reader.readLine()
            process.waitFor()
            reader.close()
            output?.contains("uid=0") == true
        } catch (e: Exception) {
            false
        }

        return isRootAvailable!!
    }

    fun executeRootCommand(command: String): String {
        val process = Runtime.getRuntime().exec(arrayOf("su", "-c", command))
        val reader = BufferedReader(InputStreamReader(process.inputStream))
        val output = StringBuilder()
        var line: String?

        while (reader.readLine().also { line = it } != null) {
            output.append(line).append("\n")
        }

        process.waitFor()
        reader.close()
        return output.toString()
    }

    fun executeCommandWithStream(command: String, mode: String, events: EventChannel.EventSink) {
        val process: Process = when (mode) {
            "root" -> {
                if (checkRootAvailable()) {
                    Runtime.getRuntime().exec(arrayOf("su", "-c", command))
                } else {
                    throw Exception("Root is not available")
                }
            }
            "shizuku" -> {
                if (Shizuku.pingBinder()) {
                    Shizuku.newProcess(arrayOf("sh", "-c", command), null, null)
                } else {
                    throw Exception("Shizuku is not running")
                }
            }
            else -> {
                if (checkRootAvailable()) {
                    Runtime.getRuntime().exec(arrayOf("su", "-c", command))
                } else if (Shizuku.pingBinder()) {
                    Shizuku.newProcess(arrayOf("sh", "-c", command), null, null)
                } else {
                    throw Exception("No execution mode available")
                }
            }
        }

        val reader = BufferedReader(InputStreamReader(process.inputStream))
        var line: String?

        while (reader.readLine().also { line = it } != null) {
            line?.let {
                val finalLine = it
                mainHandler.post {
                    events.success(finalLine)
                }
            }
        }

        val errorReader = BufferedReader(InputStreamReader(process.errorStream))
        while (errorReader.readLine().also { line = it } != null) {
            line?.let {
                val finalLine = it
                mainHandler.post {
                    events.success("ERROR: $finalLine")
                }
            }
        }

        process.waitFor()
        reader.close()
        errorReader.close()
    }
}
