part of 'command_log_bloc.dart';

@freezed
class CommandLogState with _$CommandLogState {
  const factory CommandLogState.initial({@Default([]) List<CommandLogEntry> value}) = _Initial;

  const factory CommandLogState.loading({required List<CommandLogEntry> value}) = _Loading;

  const factory CommandLogState.success({required List<CommandLogEntry> value, String? selectedEntryId}) = _Success;

  const factory CommandLogState.error({required List<CommandLogEntry> value, required String message}) = _Error;

  const CommandLogState._();

  @override
  List<CommandLogEntry> get value => when(
    initial: (entries) => entries,
    loading: (entries) => entries,
    success: (entries, selectedEntryId) => entries,
    error: (entries, message) => entries,
  );
}
