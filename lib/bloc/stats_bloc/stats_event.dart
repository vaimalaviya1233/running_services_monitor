part of 'stats_bloc.dart';

@freezed
class StatsEvent with _$StatsEvent {
  const factory StatsEvent.addRamHistoryPoint(double usedRam) = _AddRamHistoryPoint;
  const factory StatsEvent.updateChartTouchIndex({required String chartType, required int index}) =
      _UpdateChartTouchIndex;
  const factory StatsEvent.resetChartTouchIndex() = _ResetChartTouchIndex;
}
