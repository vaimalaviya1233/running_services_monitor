package me.biplobsd.rsm

import android.content.Context
import android.os.ParcelFileDescriptor
import java.io.InputStream
import java.io.OutputStream
import kotlin.system.exitProcess

fun InputStream.readToString(): String = bufferedReader().use { it.readText() }

fun InputStream.pipeTo(output: OutputStream) {
    copyTo(output)
    close()
}

class ShellService : IShellService.Stub {
    @Suppress("UNUSED_PARAMETER") constructor() : super()

    @Suppress("UNUSED_PARAMETER") constructor(context: Context) : super()

    override fun executeCommand(command: String): ShellResult {
        val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
        val output = process.inputStream.readToString()
        val errorOutput = process.errorStream.readToString()
        val exitCode = process.waitFor()
        return ShellResult(exitCode, output + errorOutput)
    }

    override fun executeCommandWithFd(command: String): ParcelFileDescriptor {
        val pipes = ParcelFileDescriptor.createPipe()
        val readFd = pipes[0]
        val writeFd = pipes[1]

        Thread {
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream(writeFd).use { output ->
                            val process = Runtime.getRuntime().exec(arrayOf("sh", "-c", command))
                            process.inputStream.pipeTo(output)
                            process.waitFor()
                        }
                    } catch (e: Exception) {
                        e.printStackTrace()
                    }
                }
                .start()

        return readFd
    }

    override fun destroy() {
        exitProcess(0)
    }
}
