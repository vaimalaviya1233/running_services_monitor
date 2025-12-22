import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:running_services_monitor/models/meminfo_data.dart';
import 'package:running_services_monitor/screens/widgets/meminfo/meminfo_chart_data.dart';
import 'package:running_services_monitor/utils/format_utils.dart';

class MemInfoPieChart extends StatelessWidget {
  final AppSummary summary;

  const MemInfoPieChart({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final segments = MemInfoChartData.buildSegments(summary);
    final segmentsTotal = MemInfoChartData.getSegmentsTotal(segments);

    if (segmentsTotal == 0) return const SizedBox.shrink();

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
            'Memory Distribution',
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              SizedBox(
                width: 120.w,
                height: 120.w,
                child: PieChart(
                  PieChartData(
                    sectionsSpace: 2,
                    centerSpaceRadius: 0,
                    sections: segments.where((s) => s.value > 0).map((segment) {
                      final percentage = (segment.value / segmentsTotal * 100);
                      return PieChartSectionData(
                        color: segment.color,
                        value: segment.value,
                        title: percentage > 10 ? '${percentage.toStringAsFixed(0)}%' : '',
                        radius: 60.w,
                        titleStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold, color: Colors.white),
                      );
                    }).toList(),
                  ),
                ),
              ),
              SizedBox(width: 16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: segments.where((s) => s.value > 0).map((segment) {
                    final percentage = (segment.value / segmentsTotal * 100).toStringAsFixed(1);
                    return Padding(
                      padding: EdgeInsets.only(bottom: 6.h),
                      child: Row(
                        children: [
                          Container(
                            width: 12.w,
                            height: 12.w,
                            decoration: BoxDecoration(
                              color: segment.color,
                              borderRadius: BorderRadius.circular(3.rSafe),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          Expanded(
                            child: Text(
                              segment.label,
                              style: TextStyle(fontSize: 11.sp),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '$percentage%',
                            style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600, color: segment.color),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Center(
            child: Text(
              'Total PSS: ${summary.totalPss.formatRam()}',
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
