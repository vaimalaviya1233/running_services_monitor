part of 'working_mode_bloc.dart';

@freezed
sealed class WorkingModeEvent with _$WorkingModeEvent {
  const factory WorkingModeEvent.detectModes() = _DetectModes;
  const factory WorkingModeEvent.setMode(WorkingMode mode) = _SetMode;
  const factory WorkingModeEvent.refreshStatus() = _RefreshStatus;
}
