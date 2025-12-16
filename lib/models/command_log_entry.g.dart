// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'command_log_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommandLogEntry _$CommandLogEntryFromJson(Map<String, dynamic> json) =>
    _CommandLogEntry(
      id: json['id'] as String,
      command: json['command'] as String,
      output: json['output'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      isSuccess: json['isSuccess'] as bool? ?? true,
    );

Map<String, dynamic> _$CommandLogEntryToJson(_CommandLogEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
      'output': instance.output,
      'timestamp': instance.timestamp.toIso8601String(),
      'isSuccess': instance.isSuccess,
    };
