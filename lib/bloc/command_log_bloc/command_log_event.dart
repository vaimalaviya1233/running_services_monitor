part of 'command_log_bloc.dart';

@freezed
class CommandLogEvent with _$CommandLogEvent {
  const factory CommandLogEvent.started() = _Started;
  const factory CommandLogEvent.refresh() = _Refresh;
  const factory CommandLogEvent.clearLogs() = _ClearLogs;
}
