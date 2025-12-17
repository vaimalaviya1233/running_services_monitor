import 'package:running_services_monitor/models/service_info.dart';
import 'package:running_services_monitor/utils/format_utils.dart';

class ProcessParser {
  static final serviceRecordRegex = RegExp(r'([a-zA-Z0-9._]+)/\.?([A-Za-z0-9.$]+)');
  static final _processRecordRegex = RegExp(r'(\d+):([^/]+)/u(\d+)a(\d+)');
  static final _lruLineRegex = RegExp(r'#\s*\d+:\s*(\S+(?:\s*\+\s*\d+)?)\s+(\S+)\s+\S+\s+(\d+):([^/]+)/u(\d+)a(\d+)');
  static final _ramLineRegex = RegExp(r'^\s*([\d,]+)K:\s+(\S+)\s+\(pid\s+(\d+)');
  static final _connectionRegex = RegExp(r'([a-zA-Z0-9._]+)/\.?([A-Za-z0-9.$]+):@([a-f0-9]+)\s+flags=(0x[a-f0-9]+)');
  static final _pssLineRegex = RegExp(r'^\s*([\d,]+)K:\s+([a-zA-Z0-9._:]+)(?:\s+\(pid\s+\d+)?', caseSensitive: false);
  static final _totalRamRegex = RegExp(r'Total RAM:\s+([\d,]+)K');
  static final _freeRamRegex = RegExp(r'Free RAM:\s+([\d,]+)K');

  static String getAppName(String packageName) {
    final lastDot = packageName.lastIndexOf('.');
    if (lastDot == -1 || lastDot == packageName.length - 1) return packageName;
    final name = packageName.substring(lastDot + 1);
    return name.isEmpty ? packageName : '${name[0].toUpperCase()}${name.substring(1)}';
  }

  static ({String packageName, String state, String adj, int pid, int uid})? parseLruLine(String line) {
    if (!line.trimLeft().startsWith('#')) return null;

    final match = _lruLineRegex.firstMatch(line);
    if (match == null) return null;

    final processName = match.group(4) ?? '';
    final colonIdx = processName.indexOf(':');

    return (
      packageName: colonIdx == -1 ? processName : processName.substring(0, colonIdx),
      state: match.group(1) ?? '',
      adj: match.group(2) ?? '',
      pid: int.parse(match.group(3) ?? '0'),
      uid: (int.parse(match.group(5) ?? '0')) * 100000 + 10000 + (int.parse(match.group(6) ?? '0')),
    );
  }

  static RunningServiceInfo? parseServiceBlock(List<String> lines, StringBuffer rawBuffer) {
    String? packageName;
    String? serviceName;
    String? processName;
    int? pid;
    int? uid;
    String? intent;
    String? baseDir;
    String? dataDir;
    bool? isForeground;
    int? foregroundId;
    String? createTime;
    String? lastActivityTime;
    bool? startRequested;
    bool? createdFromFg;
    int? recentCallingUid;
    List<ConnectionRecord>? connections;

    for (var i = 0; i < lines.length; i++) {
      final line = lines[i];
      final trimmed = line.trimLeft();

      if (trimmed.isEmpty) continue;

      final firstChar = trimmed[0];

      if (firstChar == '*' || firstChar == 'C') {
        if (trimmed.startsWith('* ConnectionRecord{') || trimmed.startsWith('ConnectionRecord{')) {
          final connMatch = _connectionRegex.firstMatch(trimmed);
          // print("Conn Match: g1: ${connMatch?.group(1)} g2: ${connMatch?.group(2)}} From: $line");
          if (connMatch != null) {
            connections ??= [];
            connections.add(
              ConnectionRecord(
                packageName: connMatch.group(1) ?? '',
                serviceName: connMatch.group(2) ?? '',
                conn: connMatch.group(3),
                flags: connMatch.group(4),
                isForeground: trimmed.contains(' FGS ') || trimmed.contains(' FG '),
                isVisible: trimmed.contains(' VIS '),
                hasCapabilities: trimmed.contains(' CAPS '),
                rawConnectionRecord: trimmed,
              ),
            );
          }
          continue;
        }
        if (trimmed.startsWith('* ServiceRecord{')) {
          serviceName = serviceRecordRegex.firstMatch(trimmed)?.group(2);
          continue;
        }
      }

      if (firstChar == 'i' && trimmed.startsWith('intent=')) {
        intent = trimmed.substring(7);
      } else if (firstChar == 'p' && trimmed.startsWith('packageName=')) {
        packageName = trimmed.substring(12);
        // print("Pkg Name: ${packageName} From: $line");
      } else if (firstChar == 'p' && trimmed.startsWith('processName=')) {
        processName = trimmed.substring(12);
        // print("Pkg process Name: ${processName} From: $line");
      } else if (firstChar == 'b' && trimmed.startsWith('baseDir=')) {
        baseDir = trimmed.substring(8);
      } else if (firstChar == 'd' && trimmed.startsWith('dataDir=')) {
        dataDir = trimmed.substring(8);
      } else if (firstChar == 'i' && trimmed.startsWith('isForeground=')) {
        isForeground = trimmed.length > 13 && trimmed[13] == 't';
      } else if (firstChar == 'f' && trimmed.startsWith('foregroundId=')) {
        foregroundId = int.tryParse(trimmed.substring(13));
      } else if (firstChar == 'c' && trimmed.startsWith('createTime=')) {
        createTime = trimmed.substring(11);
      } else if (firstChar == 'l' && trimmed.startsWith('lastActivity=')) {
        lastActivityTime = trimmed.substring(13);
      } else if (firstChar == 's' && trimmed.startsWith('startRequested=')) {
        startRequested = trimmed.length > 15 && trimmed[15] == 't';
      } else if (firstChar == 'c' && trimmed.startsWith('createdFromFg=')) {
        createdFromFg = trimmed.length > 14 && trimmed[14] == 't';
      } else if (firstChar == 'r' && trimmed.startsWith('recentCallingUid=')) {
        recentCallingUid = int.tryParse(trimmed.substring(17));
      } else if (firstChar == 'a' && trimmed.startsWith('app=ProcessRecord{')) {
        final pidMatch = _processRecordRegex.firstMatch(trimmed);
        if (pidMatch != null) {
          pid = int.tryParse(pidMatch.group(1) ?? '');
          uid =
              (int.tryParse(pidMatch.group(3) ?? '0') ?? 0) * 100000 +
              10000 +
              (int.tryParse(pidMatch.group(4) ?? '0') ?? 0);
        }
      }
    }

    if (packageName == null || serviceName == null) return null;

    for (var line in lines) {
      rawBuffer.write(line);
      // rawBuffer.write('\n');
    }

    return RunningServiceInfo(
      user: '0',
      pid: pid,
      processName: processName ?? packageName,
      serviceName: serviceName,
      packageName: packageName,
      isSystemApp:
          !packageName.contains('.') ||
          (uid != null && uid < 10000) ||
          (baseDir != null &&
              (baseDir.startsWith('/system') || baseDir.startsWith('/product') || baseDir.startsWith('/system_ext'))),
      intent: intent,
      baseDir: baseDir,
      dataDir: dataDir,
      isForeground: isForeground,
      foregroundId: foregroundId,
      createTime: createTime,
      lastActivityTime: lastActivityTime,
      startRequested: startRequested,
      createdFromFg: createdFromFg,
      rawServiceRecord: rawBuffer.toString(),
      uid: uid,
      recentCallingUid: recentCallingUid,
      connections: connections ?? const [],
    );
  }

  static List<double> parseSystemRamInfo(String result) {
    final totalMatch = _totalRamRegex.firstMatch(result);
    final freeMatch = _freeRamRegex.firstMatch(result);

    final totalRam = totalMatch != null ? double.tryParse(totalMatch.group(1)!.replaceAll(',', '')) ?? 0 : 0.0;
    final freeRam = freeMatch != null ? double.tryParse(freeMatch.group(1)!.replaceAll(',', '')) ?? 0 : 0.0;

    return [totalRam, freeRam, totalRam - freeRam];
  }

  static ({Map<int, double> pidMap, Map<String, double> processNameMap}) parseRamMaps(String meminfoOutput) {
    if (meminfoOutput.isEmpty) return (pidMap: const {}, processNameMap: const {});

    final pidMap = <int, double>{};
    final processNameMap = <String, double>{};

    var start = 0;
    while (start < meminfoOutput.length) {
      var end = meminfoOutput.indexOf('\n', start);
      if (end == -1) end = meminfoOutput.length;

      final line = meminfoOutput.substring(start, end);
      start = end + 1;

      final match = _ramLineRegex.firstMatch(line);
      if (match == null) continue;

      final ramKb = double.tryParse(match.group(1)?.replaceAll(',', '') ?? '0') ?? 0;
      final processName = match.group(2) ?? '';
      final pid = int.tryParse(match.group(3) ?? '0') ?? 0;

      if (pid > 0) pidMap.putIfAbsent(pid, () => ramKb);

      if (processName.isNotEmpty) {
        processNameMap.putIfAbsent(processName, () => ramKb);
        final colonIdx = processName.indexOf(':');
        if (colonIdx != -1) {
          processNameMap.putIfAbsent(processName.substring(0, colonIdx), () => ramKb);
        }
      }
    }

    return (pidMap: pidMap, processNameMap: processNameMap);
  }

  static Map<String, double> parseAllAppsFromMeminfo(String meminfoOutput) {
    if (meminfoOutput.isEmpty) return const {};

    final pssStart = meminfoOutput.indexOf('Total PSS by process:');
    if (pssStart == -1) return const {};

    final pssEnd = meminfoOutput.indexOf('Total PSS by OOM', pssStart);
    final section = pssEnd != -1 ? meminfoOutput.substring(pssStart, pssEnd) : meminfoOutput.substring(pssStart);

    final allApps = <String, double>{};

    var start = section.indexOf('\n') + 1;
    while (start < section.length) {
      var end = section.indexOf('\n', start);
      if (end == -1) end = section.length;

      final line = section.substring(start, end);
      start = end + 1;

      final match = _pssLineRegex.firstMatch(line);
      if (match == null) continue;

      var processName = match.group(2) ?? '';
      if (!processName.contains('.')) continue;

      final colonIdx = processName.indexOf(':');
      if (colonIdx != -1) processName = processName.substring(0, colonIdx);

      final pssKb = double.tryParse(match.group(1)?.replaceAll(',', '') ?? '0') ?? 0;
      if (pssKb > 0) {
        allApps.update(processName, (v) => v + pssKb, ifAbsent: () => pssKb);
      }
    }

    return allApps;
  }

  static AppProcessInfo createLruAppInfo({
    required String packageName,
    required ({String state, String adj, int pid, int uid}) lruInfo,
    required Map<int, double> pidRamMap,
    required Map<String, double> processNameRamMap,
  }) {
    final appName = getAppName(packageName);
    final ramFromPid = pidRamMap[lruInfo.pid];
    final ramFromName = processNameRamMap[packageName];

    final ramKb = ramFromPid ?? ramFromName ?? 0.0;
    final ramSource = ramFromPid != null
        ? RamSourceInfo(source: RamSourceType.lru, ramKb: ramKb, pid: lruInfo.pid)
        : ramFromName != null
        ? RamSourceInfo(source: RamSourceType.processName, ramKb: ramKb, processName: packageName)
        : null;

    return AppProcessInfo(
      packageName: packageName,
      appName: appName,
      services: const [],
      pids: [lruInfo.pid],
      totalRam: formatRam(ramKb),
      totalRamInKb: ramKb,
      processState: lruInfo.state,
      adjLevel: lruInfo.adj,
      hasServices: false,
      ramSources: ramSource != null ? [ramSource] : const [],
    );
  }

  static AppProcessInfo createAppProcessInfo({
    required String packageName,
    required List<RunningServiceInfo> services,
    required Map<int, double> pidRamMap,
    required Map<String, double> processNameRamMap,
  }) {
    final appName = getAppName(packageName);
    final pids = <int>{};
    final ramSources = <RamSourceInfo>[];
    var totalRamKb = 0.0;
    var isSystem = false;

    final enrichedServices = List<RunningServiceInfo>.generate(services.length, (i) {
      final service = services[i];
      final pid = service.pid;

      if (pid != null && pids.add(pid)) {
        final ramKb = pidRamMap[pid];
        if (ramKb != null) {
          totalRamKb += ramKb;
          ramSources.add(RamSourceInfo(source: RamSourceType.pid, ramKb: ramKb, pid: pid));
        }
      }

      if (service.isSystemApp) isSystem = true;

      final ramKb = pidRamMap[pid];
      return ramKb != null
          ? service.copyWith(ramInKb: ramKb, ramUsage: formatRam(ramKb), appName: appName)
          : service.copyWith(appName: appName);
    });

    if (totalRamKb <= 0) {
      final fallbackRam = processNameRamMap[packageName];
      if (fallbackRam != null) {
        totalRamKb = fallbackRam;
        ramSources.add(RamSourceInfo(source: RamSourceType.processName, ramKb: totalRamKb, processName: packageName));
      }
    }

    return AppProcessInfo(
      packageName: packageName,
      appName: appName,
      services: enrichedServices,
      pids: pids.toList(),
      totalRam: formatRam(totalRamKb),
      totalRamInKb: totalRamKb,
      isSystemApp: isSystem ? true : null,
      ramSources: ramSources,
    );
  }
}
