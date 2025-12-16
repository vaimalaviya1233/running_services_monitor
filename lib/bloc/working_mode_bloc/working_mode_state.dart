part of 'working_mode_bloc.dart';

@freezed
sealed class WorkingModeState with _$WorkingModeState {
  const factory WorkingModeState.initial(WorkingModeStateModel value) = _Initial;
  const factory WorkingModeState.detecting(WorkingModeStateModel value) = _Detecting;
  const factory WorkingModeState.ready(WorkingModeStateModel value) = _Ready;
  const factory WorkingModeState.error(WorkingModeStateModel value, String message) = _Error;
}
