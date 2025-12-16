// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_mode_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkingModeStateModel _$WorkingModeStateModelFromJson(
  Map<String, dynamic> json,
) => _WorkingModeStateModel(
  currentMode:
      $enumDecodeNullable(_$WorkingModeEnumMap, json['currentMode']) ?? null,
  isRootAvailable: json['isRootAvailable'] as bool? ?? false,
  isShizukuAvailable: json['isShizukuAvailable'] as bool? ?? false,
  isDetecting: json['isDetecting'] as bool? ?? false,
);

Map<String, dynamic> _$WorkingModeStateModelToJson(
  _WorkingModeStateModel instance,
) => <String, dynamic>{
  'currentMode': _$WorkingModeEnumMap[instance.currentMode],
  'isRootAvailable': instance.isRootAvailable,
  'isShizukuAvailable': instance.isShizukuAvailable,
  'isDetecting': instance.isDetecting,
};

const _$WorkingModeEnumMap = {
  WorkingMode.root: 'root',
  WorkingMode.shizuku: 'shizuku',
};
