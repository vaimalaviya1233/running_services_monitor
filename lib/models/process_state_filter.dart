enum ProcessStateFilter { all, active, cached, withServices }

bool isActiveState(String? processState, {bool hasServices = false}) {
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
      state.startsWith('pers');
}

bool isCachedState(String? processState) {
  if (processState == null) return false;
  return processState.toLowerCase().startsWith('cch');
}

extension ProcessStateFilterExtension on ProcessStateFilter {
  bool matchesAppState(String? processState, bool hasServices, {bool isCached = false}) {
    switch (this) {
      case ProcessStateFilter.all:
        return true;
      case ProcessStateFilter.active:
        return isActiveState(processState, hasServices: hasServices);
      case ProcessStateFilter.cached:
        return isCachedState(processState) || isCached;
      case ProcessStateFilter.withServices:
        return hasServices;
    }
  }
}
