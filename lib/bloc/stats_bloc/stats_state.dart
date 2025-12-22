part of 'stats_bloc.dart';

@freezed
abstract class StatsState with _$StatsState {
  const factory StatsState({
    @Default([]) List<FlSpot> ramHistory,
    @Default(0) double ramHistoryCounter,
    @Default(-1) int ramDistributionTouchedIndex,
    @Default(-1) int userSystemTouchedIndex,
    @Default(-1) int processStateTouchedIndex,
    @Default(-1) int scatterTouchedIndex,
  }) = _StatsState;
}
