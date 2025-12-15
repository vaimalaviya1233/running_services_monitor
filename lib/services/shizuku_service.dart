import 'dart:async';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/core/constants.dart';

@lazySingleton
class ShizukuService {
  ShizukuService();

  static const _channel = MethodChannel(AppConstants.shizukuChannelName);
  static const _streamChannel = EventChannel(AppConstants.shizukuStreamChannelName);

  bool _isInitialized = false;
  bool _hasPermission = false;
  bool _hasRootPermission = false;

  bool get isInitialized => _isInitialized;
  bool get hasPermission => _hasPermission;
  bool get hasRootPermission => _hasRootPermission;

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
        return true;
      }
    }

    final isRunning = await isShizukuRunning();
    if (!isRunning) {
      throw Exception('Shizuku is not running');
    }

    final hasPermission = await checkPermission();
    if (!hasPermission) {
      final granted = await requestPermission();
      if (!granted) {
        throw Exception('Shizuku permission denied');
      }
    }

    _isInitialized = true;
    _hasPermission = true;
    return true;
  }

  Future<String?> executeCommand(String command) async {
    if (!_isInitialized || !_hasPermission) {
      throw Exception('Shizuku not initialized or no permission');
    }

    final String? result = await _channel.invokeMethod(AppConstants.cmdMethodRunCommand, {'command': command});
    return result;
  }

  Stream<String> executeCommandStream(String command) {
    if (!_isInitialized || !_hasPermission) {
      return Stream.error(Exception('Shizuku not initialized or no permission'));
    }

    return _streamChannel.receiveBroadcastStream(command).map((event) {
      return event.toString();
    });
  }
}
