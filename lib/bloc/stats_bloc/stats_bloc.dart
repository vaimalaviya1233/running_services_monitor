import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'stats_event.dart';
part 'stats_state.dart';
part 'stats_bloc.freezed.dart';

@lazySingleton
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  static const int maxRamHistoryPoints = 20;

  StatsBloc() : super(const StatsState()) {
    on<_AddRamHistoryPoint>(_onAddRamHistoryPoint);
    on<_UpdateChartTouchIndex>(_onUpdateChartTouchIndex);
    on<_ResetChartTouchIndex>(_onResetChartTouchIndex);
  }

  void _onAddRamHistoryPoint(_AddRamHistoryPoint event, Emitter<StatsState> emit) {
    final currentHistory = List<FlSpot>.from(state.ramHistory);
    final counter = state.ramHistoryCounter + 1;

    currentHistory.add(FlSpot(counter, event.usedRam));
    if (currentHistory.length > maxRamHistoryPoints) {
      currentHistory.removeAt(0);
    }

    emit(state.copyWith(ramHistory: currentHistory, ramHistoryCounter: counter));
  }

  void _onUpdateChartTouchIndex(_UpdateChartTouchIndex event, Emitter<StatsState> emit) {
    switch (event.chartType) {
      case 'ramDistribution':
        emit(state.copyWith(ramDistributionTouchedIndex: event.index));
        break;
      case 'userSystem':
        emit(state.copyWith(userSystemTouchedIndex: event.index));
        break;
      case 'processState':
        emit(state.copyWith(processStateTouchedIndex: event.index));
        break;
      case 'scatter':
        emit(state.copyWith(scatterTouchedIndex: event.index));
        break;
    }
  }

  void _onResetChartTouchIndex(_ResetChartTouchIndex event, Emitter<StatsState> emit) {
    emit(
      state.copyWith(
        ramDistributionTouchedIndex: -1,
        userSystemTouchedIndex: -1,
        processStateTouchedIndex: -1,
        scatterTouchedIndex: -1,
      ),
    );
  }
}
