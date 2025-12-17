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
    constructor() : super()

    @Suppress("UNUSED_PARAMETER") constructor(context: Context) : super()

    override fun executeCommand(command: String): String {
        val process = Runtime.getRuntime().exec(command)
        val output = process.inputStream.readToString() + process.errorStream.readToString()
        process.waitFor()
        return output
    }

    override fun executeCommandWithFd(command: String): ParcelFileDescriptor {
        val pipes = ParcelFileDescriptor.createPipe()
        val readFd = pipes[0]
        val writeFd = pipes[1]

        Thread {
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream(writeFd).use { output ->
                            val process = Runtime.getRuntime().exec(command)
                            process.inputStream.pipeTo(output)
                            process.errorStream.pipeTo(output)
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
