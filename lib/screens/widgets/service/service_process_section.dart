import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'package:running_services_monitor/models/service_info.dart';
import 'process_info_chip.dart';

class ServiceProcessSection extends StatelessWidget {
  final RunningServiceInfo service;

  const ServiceProcessSection({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorScheme.tertiaryContainer.withValues(alpha: 0.3), colorScheme.surfaceContainerLow],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16.rSafe),
        border: Border.all(color: colorScheme.outlineVariant.withValues(alpha: 0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(14.w),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(color: colorScheme.tertiary.withValues(alpha: 0.15), borderRadius: BorderRadius.circular(10.rSafe)),
                  child: Icon(Icons.account_tree_rounded, size: 18.w, color: colorScheme.tertiary),
                ),
                SizedBox(width: 10.w),
                Text(
                  context.loc.process,
                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold, color: colorScheme.onSurface),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: colorScheme.outlineVariant.withValues(alpha: 0.2)),
          Padding(
            padding: EdgeInsets.all(14.w),
            child: Wrap(
              spacing: 12.w,
              runSpacing: 8.h,
              children: [
                if (service.pid != null)
                  ProcessInfoChip(label: context.loc.pid, value: service.pid.toString(), icon: Icons.tag_rounded, color: colorScheme.primary),
                if (service.uid != null)
                  ProcessInfoChip(label: context.loc.uid, value: service.uid.toString(), icon: Icons.person_rounded, color: colorScheme.secondary),
                ProcessInfoChip(
                  label: context.loc.type,
                  value: service.isSystemApp ? context.loc.systemApp : context.loc.userApp,
                  icon: Icons.category_rounded,
                  color: service.isSystemApp ? Colors.orange : Colors.green,
                ),
                if (service.hasBound) ProcessInfoChip(label: context.loc.bound, value: context.loc.yes, icon: Icons.link_rounded, color: Colors.blue),
              ],
            ),
          ),
          if (service.appProcessRecord != null) ...[
            Divider(height: 1, color: colorScheme.outlineVariant.withValues(alpha: 0.2)),
            Padding(
              padding: EdgeInsets.all(14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.code_rounded, size: 14.w, color: colorScheme.tertiary),
                      SizedBox(width: 6.w),
                      Text(
                        context.loc.processRecord,
                        style: TextStyle(fontSize: 11.sp, color: colorScheme.onSurfaceVariant, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(color: colorScheme.surfaceContainerHighest, borderRadius: BorderRadius.circular(8.rSafe)),
                    child: SelectableText(
                      service.appProcessRecord!,
                      style: TextStyle(fontSize: 11.sp, fontFamily: 'monospace', color: colorScheme.onSurface),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
