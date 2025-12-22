import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:running_services_monitor/bloc/app_info_bloc/app_info_bloc.dart';
import 'package:running_services_monitor/bloc/home_bloc/home_bloc.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'package:running_services_monitor/models/app_info_state_model.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'package:running_services_monitor/utils/format_utils.dart';
import 'stats_chart_card.dart';

class TopRamConsumersBarChart extends StatelessWidget {
  const TopRamConsumersBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppInfoBloc, AppInfoState, Map<String, CachedAppInfo>>(
      bloc: getIt<AppInfoBloc>(),
      selector: (state) {
        return state.value.cachedApps;
      },
      builder: (context, cachedApps) {
        return BlocSelector<HomeBloc, HomeState, List<AppProcessInfo>>(
          selector: (state) => state.value.allApps,
          builder: (context, apps) {
            if (apps.isEmpty) return const SizedBox.shrink();

            final sortedApps = List<AppProcessInfo>.from(apps)
              ..sort((a, b) => b.totalRamInKb.compareTo(a.totalRamInKb));
            final topApps = sortedApps.take(7).toList();

            String appName(String packageName) {
              return cachedApps[packageName]?.appName ?? packageName;
            }

            return StatsChartCard(
              title: context.loc.statsTopRamConsumers,
              height: 300.h,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: topApps.isNotEmpty ? topApps.first.totalRamInKb * 1.1 : 0,
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (group) => Theme.of(context).colorScheme.surfaceContainerHighest,
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        return BarTooltipItem(
                          '${appName(topApps[groupIndex].packageName)}\n',
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                          ),
                          children: [
                            TextSpan(
                              text: rod.toY.formatRam(),
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= 0 && value.toInt() < topApps.length) {
                            return Padding(
                              padding: EdgeInsets.only(top: 8.h),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Text(
                                  appName(topApps[value.toInt()].packageName),
                                  style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                        reservedSize: 80.h,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 50.w,
                        getTitlesWidget: (value, meta) {
                          if (value == 0) return const SizedBox.shrink();
                          return Text(
                            value.formatRam(decimalPlaces: 1),
                            style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: topApps.asMap().entries.map((entry) {
                    final index = entry.key;
                    final app = entry.value;
                    return BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY: app.totalRamInKb,
                          gradient: LinearGradient(
                            colors: [Theme.of(context).colorScheme.primary, Theme.of(context).colorScheme.tertiary],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                          width: 18.w,
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(6)),
                          backDrawRodData: BackgroundBarChartRodData(
                            show: true,
                            toY: topApps.first.totalRamInKb * 1.1,
                            color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: ((topApps.first.totalRamInKb * 1.1) / 5),
                    getDrawingHorizontalLine: (value) {
                      return FlLine(color: Theme.of(context).dividerColor.withValues(alpha: 0.1), strokeWidth: 1);
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
