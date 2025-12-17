part of 'command_log_bloc.dart';

@freezed
class CommandLogEvent with _$CommandLogEvent {
  const factory CommandLogEvent.started() = _Started;
  const factory CommandLogEvent.refresh() = _Refresh;
  const factory CommandLogEvent.clearLogs() = _ClearLogs;
  const factory CommandLogEvent.executeCommand(String command) = _ExecuteCommand;
  const factory CommandLogEvent.selectEntry(String? entryId) = _SelectEntry;
  const factory CommandLogEvent.entriesUpdated(List<CommandLogEntry> entries) = _EntriesUpdated;
}
