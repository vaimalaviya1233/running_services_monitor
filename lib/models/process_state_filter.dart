import 'package:running_services_monitor/models/service_info.dart';

enum ProcessStateFilter { all, active, cached, withServices }

bool isActiveState(String? processState, {bool hasServices = false, bool hasActiveService = false}) {
  if (hasActiveService) return true;
  if (processState == null) return hasServices;
  final state = processState.toLowerCase();
  return state.startsWith('fg') ||
      state.startsWith('vis') ||
      state.startsWith('prev') ||
      state.startsWith('prcp') ||
      state.startsWith('svcb') ||
      state.startsWith('home') ||
      state.startsWith('hvy') ||
      state.startsWith('psvc') ||
      state.startsWith('pers') ||
      state.startsWith('top') ||
      state.startsWith('btop') ||
      state.startsWith('impf') ||
      state.startsWith('bfgs') ||
      state.startsWith('rcvr');
}

bool isCachedState(String? processState) {
  if (processState == null) return false;
  return processState.toLowerCase().startsWith('cch');
}

extension ProcessStateFilterExtension on ProcessStateFilter {
  bool matches(AppProcessInfo app) {
    switch (this) {
      case ProcessStateFilter.all:
        return true;
      case ProcessStateFilter.active:
        return app.isActive;
      case ProcessStateFilter.cached:
        return app.isCached;
      case ProcessStateFilter.withServices:
        return app.hasServices;
    }
  }
}
