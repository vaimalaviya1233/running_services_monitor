part of 'command_log_bloc.dart';

@freezed
abstract class CommandLogState with _$CommandLogState {
  const factory CommandLogState({@Default([]) List<CommandLogEntry> entries, @Default(false) bool isLoading}) = _CommandLogState;

  factory CommandLogState.initial() => const CommandLogState();
}
