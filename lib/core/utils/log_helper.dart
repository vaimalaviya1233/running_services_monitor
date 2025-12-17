import 'package:flutter/foundation.dart';
import 'package:running_services_monitor/core/constants.dart';

void logError(Object error, StackTrace stackTrace) {
  debugPrint('${AppConstants.appName}: $error\n$stackTrace');
}
