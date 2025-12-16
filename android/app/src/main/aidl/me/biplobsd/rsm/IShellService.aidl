package me.biplobsd.rsm;

import android.os.ParcelFileDescriptor;

interface IShellService {
    String executeCommand(String command) = 1;
    ParcelFileDescriptor executeCommandWithFd(String command) = 2;
    void destroy() = 16777114;
}
