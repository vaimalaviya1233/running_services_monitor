import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/models/working_mode.dart';
import 'package:running_services_monitor/services/command_log_service.dart';
import 'package:running_services_monitor/services/shizuku_api.g.dart';

@lazySingleton
class ShizukuService {
  final CommandLogService commandLogService;
  final ShizukuHostApi api = ShizukuHostApi();

  ShizukuService(this.commandLogService);

  bool isInitialized = false;
  bool hasPermission = false;
  bool hasRootPermission = false;
  WorkingMode? currentMode;

  Future<bool> isShizukuRunning() async => api.pingBinder();

  Future<bool> checkRootPermission() async {
    hasRootPermission = await api.checkRootPermission();
    return hasRootPermission;
  }

  Future<bool> requestRootPermission() async {
    hasRootPermission = await api.requestRootPermission();
    return hasRootPermission;
  }

  Future<bool> checkPermission() async {
    hasPermission = await api.checkPermission();
    return hasPermission;
  }

  Future<bool> requestPermission() async {
    hasPermission = await api.requestPermission();
    return hasPermission;
  }

  Future<void> setWorkingMode(WorkingMode mode) async {
    currentMode = mode;
    await api.setWorkingMode(mode.name);
  }

  Future<bool> initialize() async {
    if (isInitialized) return true;

    if (await checkRootPermission() && await requestRootPermission()) {
      isInitialized = true;
      hasPermission = true;
      hasRootPermission = true;
      currentMode ??= WorkingMode.root;
      return true;
    }

    if (await isShizukuRunning()) {
      if (!await checkPermission()) {
        if (await requestPermission()) {
          isInitialized = true;
          hasPermission = true;
          currentMode ??= WorkingMode.shizuku;
          return true;
        }
      } else {
        isInitialized = true;
        hasPermission = true;
        currentMode ??= WorkingMode.shizuku;
        return true;
      }
    }

    throw Exception('No permission mode available');
  }

  Future<String?> executeCommand(String command, {bool logCommand = true}) async {
    if (!isInitialized || !(hasPermission || hasRootPermission)) {
      throw Exception('Not initialized or no permission');
    }

    final result = await api.runCommand(CommandRequest(command: command));

    if (result.error != null) {
      if (logCommand) commandLogService.addEntry(command, 'Error: ${result.error}', isSuccess: false);
      throw Exception(result.error);
    }

    if (logCommand) commandLogService.addEntry(command, result.output ?? '');
    return result.output;
  }

  Stream<String> executeCommandStream(String command, {bool logCommand = true}) {
    if (!isInitialized || !(hasPermission || hasRootPermission)) {
      return Stream.error(Exception('Not initialized or no permission'));
    }

    final controller = StreamController<String>();
    final outputBuffer = StringBuffer();

    api
        .setStreamCommand(command)
        .then((_) {
          streamOutput().listen(
            (line) {
              outputBuffer.writeln(line);
              controller.add(line);
            },
            onDone: () {
              if (logCommand) commandLogService.addEntry(command, outputBuffer.toString());
              controller.close();
            },
            onError: (error, stackTrace) {
              if (logCommand) commandLogService.addEntry(command, 'Error: $error', isSuccess: false);
              controller.addError(error, stackTrace);
              controller.close();
            },
            cancelOnError: true,
          );
        })
        .catchError((error, stackTrace) {
          if (logCommand) commandLogService.addEntry(command, 'Error: $error', isSuccess: false);
          controller.addError(error, stackTrace);
          controller.close();
        });

    return controller.stream;
  }
}
