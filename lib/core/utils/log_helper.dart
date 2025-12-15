import 'dart:developer' as developer;
import 'package:running_services_monitor/core/constants.dart';

void logError(Object error, StackTrace stackTrace) {
  developer.log(AppConstants.appName, error: error, stackTrace: stackTrace, level: 1000);
}
