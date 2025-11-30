import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:running_services_monitor/core/constants.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'package:url_launcher/url_launcher.dart';

class ShizukuPermissionDialog extends StatelessWidget {
  final VoidCallback onRetry;

  const ShizukuPermissionDialog({super.key, required this.onRetry});

  Future<void> _openShizukuOrPlayStore() async {
    // Try to check if Shizuku is installed
    final shizukuAppUri = Uri.parse('package:${AppConstants.shizukuPackageName}');
    final playStoreUri = Uri.parse(AppConstants.shizukuPlayStoreUrl);

    try {
      // Try to launch Shizuku app first
      final canLaunchApp = await canLaunchUrl(shizukuAppUri);
      if (canLaunchApp) {
        await launchUrl(shizukuAppUri);
      } else {
        // If Shizuku is not installed, open Play Store
        await launchUrl(playStoreUri, mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      // If package URI doesn't work, try Play Store directly
      try {
        await launchUrl(playStoreUri, mode: LaunchMode.externalApplication);
      } catch (e) {
        debugPrint('Error opening Shizuku or Play Store: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.lock_outlined, color: Colors.orange),
          const SizedBox(width: 8),
          Text(context.loc.permissionRequired),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.loc.permissionRequiredMessage,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Text(
              context.loc.permissionSteps,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildStep(
              context,
              '1',
              context.loc.permissionStep1,
            ),
            _buildStep(
              context,
              '2',
              context.loc.permissionStep2,
            ),
            _buildStep(
              context,
              '3',
              context.loc.permissionStep3,
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      context.loc.permissionNote,
                      style: TextStyle(
                        fontSize: 13,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => SystemNavigator.pop(),
          child: Text(context.loc.exitApp),
        ),
        FilledButton.icon(
          onPressed: _openShizukuOrPlayStore,
          icon: const Icon(Icons.open_in_new),
          label: Text(context.loc.openShizuku),
        ),
        FilledButton.icon(
          onPressed: onRetry,
          icon: const Icon(Icons.refresh),
          label: Text(context.loc.retry),
        ),
      ],
    );
  }

  Widget _buildStep(BuildContext context, String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(text),
            ),
          ),
        ],
      ),
    );
  }
}
