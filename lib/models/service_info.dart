import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:installed_apps/app_info.dart';

part 'service_info.freezed.dart';

/// Model for running service information
@freezed
abstract class RunningServiceInfo with _$RunningServiceInfo {
  const factory RunningServiceInfo({
    required String user,
    required int pid,
    required String processName,
    required String serviceName,
    required String packageName,
    required bool isSystemApp,
    String? serviceClass,
    String? appName,
    String? ramUsage, // e.g. "25 MB"
    double? ramInKb, // Parsed value for aggregation
    Uint8List? icon, // Service-specific icon from InstalledApps cache
  }) = _RunningServiceInfo;
}

/// Model for running app/process information (Grouped)
@freezed
abstract class AppProcessInfo with _$AppProcessInfo {
  const factory AppProcessInfo({
    required String packageName,
    required String appName,
    required List<RunningServiceInfo> services,
    required List<int> pids,
    required String totalRam, // Formatted string e.g. "150 MB"
    required double totalRamInKb, // For sorting/calculation
    required bool isSystemApp,
    AppInfo? appInfo, // AppInfo from installed_apps package
  }) = _AppProcessInfo;
}

/// Model for running process information (Raw from ps/dumpsys if needed)
@freezed
abstract class RunningProcessInfo with _$RunningProcessInfo {
  const factory RunningProcessInfo({
    required String packageName,
    required String processName,
    required int pid,
    required int uid,
    String? appName,
    required bool isSystemApp,
    required String importance,
  }) = _RunningProcessInfo;
}
