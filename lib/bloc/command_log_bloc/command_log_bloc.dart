import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/models/command_log_entry.dart';
import 'package:running_services_monitor/services/command_log_service.dart';

part 'command_log_event.dart';
part 'command_log_state.dart';
part 'command_log_bloc.freezed.dart';

@lazySingleton
class CommandLogBloc extends Bloc<CommandLogEvent, CommandLogState> {
  final CommandLogService _commandLogService;

  CommandLogBloc(this._commandLogService) : super(CommandLogState.initial()) {
    on<_Started>(_onStarted);
    on<_Refresh>(_onRefresh);
    on<_ClearLogs>(_onClearLogs);
  }

  void _onStarted(_Started event, Emitter<CommandLogState> emit) {
    final entries = _commandLogService.getEntries();
    emit(state.copyWith(entries: entries));
  }

  void _onRefresh(_Refresh event, Emitter<CommandLogState> emit) {
    final entries = _commandLogService.getEntries();
    emit(state.copyWith(entries: entries));
  }

  void _onClearLogs(_ClearLogs event, Emitter<CommandLogState> emit) {
    _commandLogService.clearEntries();
    emit(state.copyWith(entries: []));
  }
}
