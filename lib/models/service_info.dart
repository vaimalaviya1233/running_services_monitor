import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:installed_apps/app_info.dart';

part 'service_info.freezed.dart';


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
    String? ramUsage,
    double? ramInKb,
    Uint8List? icon,
  }) = _RunningServiceInfo;
}


@freezed
abstract class AppProcessInfo with _$AppProcessInfo {
  const factory AppProcessInfo({
    required String packageName,
    required String appName,
    required List<RunningServiceInfo> services,
    required List<int> pids,
    required String totalRam,
    required double totalRamInKb,
    required bool isSystemApp,
    AppInfo? appInfo,
  }) = _AppProcessInfo;
}


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
