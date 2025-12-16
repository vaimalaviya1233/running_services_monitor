import 'package:freezed_annotation/freezed_annotation.dart';

part 'command_log_entry.freezed.dart';
part 'command_log_entry.g.dart';

@freezed
abstract class CommandLogEntry with _$CommandLogEntry {
  const factory CommandLogEntry({
    required String id,
    required String command,
    required String output,
    required DateTime timestamp,
    @Default(true) bool isSuccess,
  }) = _CommandLogEntry;

  factory CommandLogEntry.fromJson(Map<String, dynamic> json) => _$CommandLogEntryFromJson(json);
}
