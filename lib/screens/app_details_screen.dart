import 'package:flutter/material.dart';
import '../models/service_info.dart';
import 'widgets/app_header.dart';
import 'widgets/service_list.dart';

class AppDetailsScreen extends StatelessWidget {
  final AppProcessInfo appInfo;

  const AppDetailsScreen({super.key, required this.appInfo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Running app')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            AppHeader(appInfo: appInfo),
            const SizedBox(height: 24),

            // Description
            Text(
              'This app can\'t safely be stopped. If you stop it, you may lose some of your current work.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey[400]),
            ),

            const SizedBox(height: 32),
            const Divider(),
            const SizedBox(height: 16),

            // Service List
            Text('Active Services', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Expanded(child: ServiceList(services: appInfo.services)),
          ],
        ),
      ),
    );
  }
}
