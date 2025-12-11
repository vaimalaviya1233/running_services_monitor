import 'package:flutter/material.dart';
import 'package:flutter_scale_kit/flutter_scale_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:running_services_monitor/models/contributor_info.dart';

class ContributorListTile extends StatelessWidget {
  final ContributorInfo contributor;

  const ContributorListTile({super.key, required this.contributor});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.h),
      child: InkWell(
        onTap: () => _launchUrl(contributor.htmlUrl),
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.person, size: 24.w, color: colorScheme.primary),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contributor.login,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '${contributor.contributions} contributions',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.open_in_new, size: 16.w, color: colorScheme.onSurfaceVariant),
                ],
              ),
              if (contributor.pullRequests.isNotEmpty) ...[
                SizedBox(height: 8.h),
                Wrap(
                  spacing: 6.w,
                  runSpacing: 4.h,
                  children: contributor.pullRequests.map((pr) {
                    return ActionChip(
                      avatar: Icon(Icons.merge, size: 14.w),
                      label: Text('#${pr.number}', style: TextStyle(fontSize: 12.sp)),
                      onPressed: () => _launchUrl(pr.htmlUrl),
                      visualDensity: VisualDensity.compact,
                      padding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.only(right: 8.w),
                      tooltip: pr.title,
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
