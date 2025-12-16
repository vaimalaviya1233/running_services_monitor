package me.biplobsd.rsm

import android.content.Context
import android.os.ParcelFileDescriptor
import java.io.ByteArrayOutputStream
import kotlin.system.exitProcess

class ShellService : IShellService.Stub {
    constructor() : super()

    @Suppress("UNUSED_PARAMETER") constructor(context: Context) : super()

    override fun executeCommand(command: String): String {
        val process = Runtime.getRuntime().exec(command)
        val buffer = ByteArray(8192)
        val output = ByteArrayOutputStream()
        var bytesRead: Int

        val inputStream = process.inputStream
        while (inputStream.read(buffer).also { bytesRead = it } != -1) {
            output.write(buffer, 0, bytesRead)
        }

        val errorStream = process.errorStream
        while (errorStream.read(buffer).also { bytesRead = it } != -1) {
            output.write(buffer, 0, bytesRead)
        }

        process.waitFor()
        inputStream.close()
        errorStream.close()

        return output.toString(Charsets.UTF_8.name())
    }

    override fun executeCommandWithFd(command: String): ParcelFileDescriptor {
        val pipes = ParcelFileDescriptor.createPipe()
        val readFd = pipes[0]
        val writeFd = pipes[1]

        Thread {
                    try {
                        val outputStream = ParcelFileDescriptor.AutoCloseOutputStream(writeFd)
                        val process = Runtime.getRuntime().exec(command)
                        val buffer = ByteArray(8192)
                        var bytesRead: Int

                        val inputStream = process.inputStream
                        while (inputStream.read(buffer).also { bytesRead = it } != -1) {
                            outputStream.write(buffer, 0, bytesRead)
                        }

                        val errorStream = process.errorStream
                        while (errorStream.read(buffer).also { bytesRead = it } != -1) {
                            outputStream.write(buffer, 0, bytesRead)
                        }

                        process.waitFor()
                        inputStream.close()
                        errorStream.close()
                        outputStream.close()
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
