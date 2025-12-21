import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/services/shizuku_service.dart';

typedef OnErrorCallback = void Function(String message);

class AndroidSettingsHelper {
  static OnErrorCallback? onError;

  static Future<void> tryOpenSystemRunningServices() async {
    try {
      final intent = AndroidIntent(
        action: 'android.intent.action.MAIN',
        package: 'com.android.settings',
        componentName: 'com.android.settings.SubSettings',
        arguments: <String, dynamic>{':settings:show_fragment': 'com.android.settings.applications.RunningServices'},
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK],
      );

      if (await intent.canResolveActivity() ?? false) {
        await intent.launch();
      } else {
        await _tryOpenWithShizuku();
      }
    } catch (e) {
      await _tryOpenWithShizuku();
    }
  }

  static Future<void> _tryOpenWithShizuku() async {
    try {
      final shizukuService = getIt<ShizukuService>();

      final command =
          'am start -n com.android.settings/com.android.settings.SubSettings '
          '-e :settings:show_fragment com.android.settings.applications.RunningServices';

      final result = await shizukuService.executeCommand(command);

      if (result == null || result.contains('Error') || result.contains('Exception')) {
        onError?.call('Failed to open Running Services settings');
      }
    } catch (e) {
      onError?.call('Error opening Running Services: ${e.toString()}');
    }
  }
}
