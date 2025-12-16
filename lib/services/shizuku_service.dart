import 'dart:async';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/core/constants.dart';
import 'package:running_services_monitor/models/working_mode.dart';
import 'package:running_services_monitor/services/command_log_service.dart';

@lazySingleton
class ShizukuService {
  final CommandLogService commandLogService;

  ShizukuService(this.commandLogService);

  static const _channel = MethodChannel(AppConstants.shizukuChannelName);
  static const _streamChannel = EventChannel(AppConstants.shizukuStreamChannelName);

  bool _isInitialized = false;
  bool _hasPermission = false;
  bool _hasRootPermission = false;
  WorkingMode? _currentMode;

  bool get isInitialized => _isInitialized;

  bool get hasPermission => _hasPermission;

  bool get hasRootPermission => _hasRootPermission;

  WorkingMode? get currentMode => _currentMode;

  Future<bool> isShizukuRunning() async {
    final bool isRunning = await _channel.invokeMethod('pingBinder');
    return isRunning;
  }

  Future<bool> checkRootPermission() async {
    final bool granted = await _channel.invokeMethod('checkRootPermission');
    _hasRootPermission = granted;
    return _hasRootPermission;
  }

  Future<bool> requestRootPermission() async {
    final bool granted = await _channel.invokeMethod('requestRootPermission');
    _hasRootPermission = granted;
    return _hasRootPermission;
  }

  Future<bool> checkPermission() async {
    final bool granted = await _channel.invokeMethod('checkPermission');
    _hasPermission = granted;
    return _hasPermission;
  }

  Future<bool> requestPermission() async {
    final bool granted = await _channel.invokeMethod('requestPermission');
    _hasPermission = granted;
    return _hasPermission;
  }

  void setWorkingMode(WorkingMode mode) {
    _currentMode = mode;
    _channel.invokeMethod('setWorkingMode', {'mode': mode.name});
  }

  Future<bool> initialize() async {
    if (_isInitialized) {
      return true;
    }

    final hasRoot = await checkRootPermission();
    if (hasRoot) {
      final rootGranted = await requestRootPermission();
      if (rootGranted) {
        _isInitialized = true;
        _hasPermission = true;
        _hasRootPermission = true;
        _currentMode ??= WorkingMode.root;
        return true;
      }
    }

    final isShizukuRunning = await this.isShizukuRunning();
    if (isShizukuRunning) {
      final hasPermission = await checkPermission();
      if (!hasPermission) {
        final granted = await requestPermission();
        if (granted) {
          _isInitialized = true;
          _hasPermission = true;
          _currentMode ??= WorkingMode.shizuku;
          return true;
        }
      } else {
        _isInitialized = true;
        _hasPermission = true;
        _currentMode ??= WorkingMode.shizuku;
        return true;
      }
    }

    throw Exception('No permission mode available');
  }

  Future<String?> executeCommand(String command, {bool logCommand = true}) async {
    if (!_isInitialized || !(_hasPermission || _hasRootPermission)) {
      throw Exception('Not initialized or no permission');
    }

    final String? result = await _channel.invokeMethod(AppConstants.cmdMethodRunCommand, {'command': command});

    if (logCommand) {
      commandLogService.addEntry(command, result ?? '');
    }

    return result;
  }

  Stream<String> executeCommandStream(String command, {bool logCommand = true}) {
    if (!_isInitialized || !(_hasPermission || _hasRootPermission)) {
      return Stream.error(Exception('Not initialized or no permission'));
    }

    final StringBuffer outputBuffer = StringBuffer();

    return _streamChannel
        .receiveBroadcastStream(command)
        .map((event) {
          final output = event.toString();
          outputBuffer.write(output);
          return output;
        })
        .transform(
          StreamTransformer<String, String>.fromHandlers(
            handleData: (data, sink) {
              sink.add(data);
            },
            handleDone: (sink) {
              if (logCommand) {
                commandLogService.addEntry(command, outputBuffer.toString());
              }
              sink.close();
            },
            handleError: (error, stackTrace, sink) {
              if (logCommand) {
                commandLogService.addEntry(command, 'Error: $error', isSuccess: false);
              }
              sink.addError(error, stackTrace);
            },
          ),
        );
  }
}
