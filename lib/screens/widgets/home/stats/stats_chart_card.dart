import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';

class StatsChartCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget child;
  final double? height;

  const StatsChartCard({super.key, required this.title, this.subtitle, required this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Theme.of(context).shadowColor.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            if (subtitle != null) ...[
              SizedBox(height: 8.h),
              Text(
                subtitle!,
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
              ),
            ],
            SizedBox(height: 24.h),
            if (height != null) SizedBox(height: height, child: child) else child,
          ],
        ),
      ),
    );
  }
}
