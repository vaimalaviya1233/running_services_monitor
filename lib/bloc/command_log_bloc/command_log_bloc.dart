import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/models/command_log_entry.dart';
import 'package:running_services_monitor/services/command_log_service.dart';
import 'package:running_services_monitor/services/shizuku_service.dart';

part 'command_log_event.dart';
part 'command_log_state.dart';
part 'command_log_bloc.freezed.dart';

@lazySingleton
class CommandLogBloc extends Bloc<CommandLogEvent, CommandLogState> {
  final CommandLogService _commandLogService;
  final ShizukuService _shizukuService;

  CommandLogBloc(this._commandLogService, this._shizukuService) : super(const CommandLogState.initial()) {
    on<_Started>(_onStarted);
    on<_Refresh>(_onRefresh);
    on<_ClearLogs>(_onClearLogs);
    on<_ExecuteCommand>(_onExecuteCommand);
    on<_SelectEntry>(_onSelectEntry);
  }
  void _onStarted(_Started event, Emitter<CommandLogState> emit) {
    final entries = _commandLogService.getEntries();
    emit(CommandLogState.success(value: entries));
  }

  void _onRefresh(_Refresh event, Emitter<CommandLogState> emit) {
    final entries = _commandLogService.getEntries();
    emit(CommandLogState.success(value: entries));
  }

  void _onClearLogs(_ClearLogs event, Emitter<CommandLogState> emit) {
    _commandLogService.clearEntries();
    emit(const CommandLogState.success(value: []));
  }

  Future<void> _onExecuteCommand(_ExecuteCommand event, Emitter<CommandLogState> emit) async {
    emit(CommandLogState.loading(value: state.value));
    try {
      await _shizukuService.executeCommand(event.command);
      final entries = _commandLogService.getEntries();
      final latestEntryId = entries.isNotEmpty ? entries.first.id : null;
      emit(CommandLogState.success(value: entries, selectedEntryId: latestEntryId));
    } catch (e) {
      emit(CommandLogState.error(value: state.value, message: e.toString()));
    }
  }

  void _onSelectEntry(_SelectEntry event, Emitter<CommandLogState> emit) {
    emit(CommandLogState.success(value: state.value, selectedEntryId: event.entryId));
  }
}
