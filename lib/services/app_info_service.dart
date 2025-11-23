import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';

import 'package:injectable/injectable.dart';

@lazySingleton
class AppInfoService {
  Future<List<AppInfo>> getInstalledApps({
    bool excludeSystemApps = true,
    bool withIcon = false,
    String? packageNamePrefix,
  }) async {
    final token = RootIsolateToken.instance;
    if (token == null) {
      throw Exception('RootIsolateToken is null');
    }

    return compute(
      _fetchInstalledApps,
      _FetchAppsParams(
        token: token,
        excludeSystemApps: excludeSystemApps,
        withIcon: withIcon,
        packageNamePrefix: packageNamePrefix,
      ),
    );
  }

  Future<AppInfo?> getAppInfo(String packageName) async {
    final token = RootIsolateToken.instance;
    if (token == null) {
      throw Exception('RootIsolateToken is null');
    }

    return compute(_fetchAppInfo, _FetchAppInfoParams(token: token, packageName: packageName));
  }
}

class _FetchAppsParams {
  final RootIsolateToken token;
  final bool excludeSystemApps;
  final bool withIcon;
  final String? packageNamePrefix;

  _FetchAppsParams({
    required this.token,
    required this.excludeSystemApps,
    required this.withIcon,
    this.packageNamePrefix,
  });
}

class _FetchAppInfoParams {
  final RootIsolateToken token;
  final String packageName;

  _FetchAppInfoParams({required this.token, required this.packageName});
}

Future<List<AppInfo>> _fetchInstalledApps(_FetchAppsParams params) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(params.token);
  return InstalledApps.getInstalledApps(
    excludeSystemApps: params.excludeSystemApps,
    withIcon: params.withIcon,
    packageNamePrefix: params.packageNamePrefix,
  );
}

Future<AppInfo?> _fetchAppInfo(_FetchAppInfoParams params) async {
  BackgroundIsolateBinaryMessenger.ensureInitialized(params.token);
  return InstalledApps.getAppInfo(params.packageName);
}
