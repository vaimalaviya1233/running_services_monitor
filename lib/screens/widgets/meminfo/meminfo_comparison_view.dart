import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/models/meminfo_data.dart';
import 'package:running_services_monitor/models/service_info.dart';
import '../home/stats/meminfo_compare_radar_chart.dart';

class MemInfoComparisonView extends StatelessWidget {
  final MemInfoData currentData;
  final MemInfoData comparisonData;
  final List<AppProcessInfo> otherApps;
  final String packageName;
  final VoidCallback? onCurrentAppTap;
  final VoidCallback? onCompareAppTap;

  const MemInfoComparisonView({
    super.key,
    required this.currentData,
    required this.comparisonData,
    required this.otherApps,
    required this.packageName,
    this.onCurrentAppTap,
    this.onCompareAppTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeBloc, HomeState, (AppProcessInfo?, AppProcessInfo?)>(
      bloc: getIt<HomeBloc>(),
      selector: (state) {
        final currentApp = state.value.allApps.firstWhereOrNull((a) => a.packageName == currentData.packageName);
        final compareApp = state.value.allApps.firstWhereOrNull((a) => a.packageName == comparisonData.packageName);
        return (currentApp, compareApp);
      },
      builder: (context, apps) {
        final (currentApp, compareApp) = apps;

        return MemInfoCompareRadarChart(
          currentData: currentData,
          comparisonData: comparisonData,
          currentLabel: currentApp?.packageName ?? 'Current',
          compareLabel: compareApp?.packageName ?? 'Compare',
        );
      },
    );
  }
}
