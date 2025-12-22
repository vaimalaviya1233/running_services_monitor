import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:running_services_monitor/models/meminfo_data.dart';
import 'package:running_services_monitor/screens/widgets/meminfo/meminfo_chart_data.dart';
import 'package:running_services_monitor/utils/format_utils.dart';

class MemInfoCompareRadarChart extends StatefulWidget {
  final MemInfoData currentData;
  final MemInfoData comparisonData;
  final String currentLabel;
  final String compareLabel;

  const MemInfoCompareRadarChart({
    super.key,
    required this.currentData,
    required this.comparisonData,
    required this.currentLabel,
    required this.compareLabel,
  });

  @override
  State<MemInfoCompareRadarChart> createState() => _MemInfoCompareRadarChartState();
}

class _MemInfoCompareRadarChartState extends State<MemInfoCompareRadarChart> {
  bool showPss = true;

  @override
  Widget build(BuildContext context) {
    final metrics = showPss
        ? MemInfoChartData.buildPssMetrics(widget.currentData.appSummary, widget.comparisonData.appSummary)
        : MemInfoChartData.buildRssMetrics(widget.currentData.appSummary, widget.comparisonData.appSummary);

    final totalPss = MemInfoChartData.getTotalPss(widget.currentData.appSummary, widget.comparisonData.appSummary);
    final totalRss = MemInfoChartData.getTotalRss(widget.currentData.appSummary, widget.comparisonData.appSummary);

    final maxValue = metrics.expand((m) => [m.currentValue, m.compareValue]).reduce((a, b) => a > b ? a : b);

    if (maxValue == 0) return const SizedBox.shrink();

    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16.rSafe),
        border: Border.all(color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Memory Profile Comparison',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              _LegendDot(color: Theme.of(context).colorScheme.primary, label: widget.currentLabel),
              SizedBox(width: 16.w),
              _LegendDot(color: Theme.of(context).colorScheme.secondary, label: widget.compareLabel),
            ],
          ),
          SizedBox(height: 16.h),
          _buildTotalComparison(context, totalPss, totalRss),
          SizedBox(height: 16.h),
          _buildToggleButton(context),
          SizedBox(height: 16.h),
          SizedBox(
            height: 220.h,
            child: RadarChart(
              RadarChartData(
                dataSets: [
                  RadarDataSet(
                    fillColor: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    borderColor: Theme.of(context).colorScheme.primary,
                    borderWidth: 2,
                    entryRadius: 3,
                    dataEntries: metrics.map((m) => RadarEntry(value: m.currentValue)).toList(),
                  ),
                  RadarDataSet(
                    fillColor: Theme.of(context).colorScheme.secondary.withValues(alpha: 0.2),
                    borderColor: Theme.of(context).colorScheme.secondary,
                    borderWidth: 2,
                    entryRadius: 3,
                    dataEntries: metrics.map((m) => RadarEntry(value: m.compareValue)).toList(),
                  ),
                ],
                radarBackgroundColor: Colors.transparent,
                borderData: FlBorderData(show: false),
                radarBorderData: BorderSide(color: Theme.of(context).dividerColor.withValues(alpha: 0.3)),
                titlePositionPercentageOffset: 0.2,
                titleTextStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
                getTitle: (index, angle) {
                  return RadarChartTitle(text: metrics[index].label, angle: angle);
                },
                tickCount: 4,
                ticksTextStyle: TextStyle(fontSize: 8.sp, color: Colors.grey),
                tickBorderData: BorderSide(color: Theme.of(context).dividerColor.withValues(alpha: 0.2)),
                gridBorderData: BorderSide(color: Theme.of(context).dividerColor.withValues(alpha: 0.2)),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          _buildMetricsTable(context, metrics),
        ],
      ),
    );
  }

  Widget _buildToggleButton(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(8.rSafe),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => showPss = true),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                  color: showPss ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.rSafe),
                ),
                child: Text(
                  'PSS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: showPss ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() => showPss = false),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                decoration: BoxDecoration(
                  color: !showPss ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.rSafe),
                ),
                child: Text(
                  'RSS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                    color: !showPss ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalComparison(BuildContext context, MemoryMetric totalPss, MemoryMetric totalRss) {
    final maxValue = [
      totalPss.currentValue,
      totalPss.compareValue,
      totalRss.currentValue,
      totalRss.compareValue,
    ].reduce((a, b) => a > b ? a : b);

    if (maxValue == 0) return const SizedBox.shrink();

    return SizedBox(
      height: 100.h,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: maxValue * 1.2,
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipColor: (group) => Theme.of(context).colorScheme.surfaceContainerHighest,
              getTooltipItem: (group, groupIndex, rod, rodIndex) {
                final label = groupIndex == 0 ? 'Total PSS' : 'Total RSS';
                return BarTooltipItem(
                  '$label\n${rod.toY.formatRam()}',
                  TextStyle(color: Theme.of(context).colorScheme.onSurface, fontSize: 12.sp),
                );
              },
            ),
          ),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: AxisTitles(
              drawBelowEverything: true,
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  return Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      value.toInt() == 0 ? 'Total PSS' : 'Total RSS',
                      style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w500),
                    ),
                  );
                },
                reservedSize: 24.h,
              ),
            ),
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          barGroups: [
            BarChartGroupData(
              x: 0,
              barRods: [
                BarChartRodData(
                  toY: totalPss.currentValue,
                  color: Theme.of(context).colorScheme.primary,
                  width: 18.w,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                ),
                BarChartRodData(
                  toY: totalPss.compareValue,
                  color: Theme.of(context).colorScheme.secondary,
                  width: 18.w,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                ),
              ],
            ),
            BarChartGroupData(
              x: 1,
              barRods: [
                BarChartRodData(
                  toY: totalRss.currentValue,
                  color: Theme.of(context).colorScheme.primary,
                  width: 18.w,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                ),
                BarChartRodData(
                  toY: totalRss.compareValue,
                  color: Theme.of(context).colorScheme.secondary,
                  width: 18.w,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                ),
              ],
            ),
          ],
          gridData: const FlGridData(show: false),
        ),
      ),
    );
  }

  Widget _buildMetricsTable(BuildContext context, List<MemoryMetric> metrics) {
    return Column(
      children: metrics.map((metric) {
        final diff = metric.currentValue - metric.compareValue;
        final diffPercent = metric.compareValue > 0 ? ((diff / metric.compareValue) * 100).abs() : 0.0;
        final isLower = diff < 0;
        final isEqual = diff.abs() < 0.01;

        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(metric.label, style: TextStyle(fontSize: 11.sp)),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  metric.currentValue.formatRam(),
                  style: TextStyle(fontSize: 11.sp, color: Theme.of(context).colorScheme.primary),
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(width: 8.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: isEqual
                      ? Colors.grey.withValues(alpha: 0.2)
                      : isLower
                      ? Colors.green.withValues(alpha: 0.2)
                      : Colors.red.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(6.rSafe),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (!isEqual)
                      Icon(
                        isLower ? Icons.arrow_downward : Icons.arrow_upward,
                        size: 10.sp,
                        color: isLower ? Colors.green : Colors.red,
                      ),
                    SizedBox(width: 2.w),
                    Text(
                      isEqual ? '=' : '${diffPercent.toStringAsFixed(0)}%',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: isEqual ? Colors.grey : (isLower ? Colors.green : Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                flex: 2,
                child: Text(
                  metric.compareValue.formatRam(),
                  style: TextStyle(fontSize: 11.sp, color: Theme.of(context).colorScheme.secondary),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class _LegendDot extends StatelessWidget {
  final Color color;
  final String label;

  const _LegendDot({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10.w,
          height: 10.w,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        SizedBox(width: 6.w),
        Text(
          label,
          style: TextStyle(fontSize: 11.sp),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
