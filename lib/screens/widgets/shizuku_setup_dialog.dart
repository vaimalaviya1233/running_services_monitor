import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:running_services_monitor/l10n/app_localizations.dart';

class ShizukuSetupDialog extends StatelessWidget {
  final VoidCallback onRetry;

  const ShizukuSetupDialog({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.warning_amber_rounded, color: Colors.orange),
          const SizedBox(width: 8),
          Text(AppLocalizations.of(context)!.shizukuRequired),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context)!.shizukuRequiredMessage,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            Text(AppLocalizations.of(context)!.setupSteps, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            _buildStep('1', AppLocalizations.of(context)!.step1),
            _buildStep('2', AppLocalizations.of(context)!.step2),
            _buildStep('3', AppLocalizations.of(context)!.step3),
            _buildStep('4', AppLocalizations.of(context)!.step4),
            _buildStep('5', AppLocalizations.of(context)!.step5),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.quickStart,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppLocalizations.of(context)!.quickStartSteps,
                    style: TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.onPrimaryContainer),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: () => SystemNavigator.pop(), child: Text(AppLocalizations.of(context)!.exitApp)),
        FilledButton.icon(
          onPressed: onRetry,
          icon: const Icon(Icons.refresh),
          label: Text(AppLocalizations.of(context)!.retry),
        ),
      ],
    );
  }

  Widget _buildStep(String number, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Padding(padding: const EdgeInsets.only(top: 2), child: Text(text)),
          ),
        ],
      ),
    );
  }
}
