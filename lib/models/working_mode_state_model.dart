import 'package:freezed_annotation/freezed_annotation.dart';
import 'working_mode.dart';

part 'working_mode_state_model.freezed.dart';
part 'working_mode_state_model.g.dart';

@freezed
abstract class WorkingModeStateModel with _$WorkingModeStateModel {
  const factory WorkingModeStateModel({
    @Default(null) WorkingMode? currentMode,
    @Default(false) bool isRootAvailable,
    @Default(false) bool isShizukuAvailable,
    @Default(false) bool isDetecting,
  }) = _WorkingModeStateModel;

  factory WorkingModeStateModel.fromJson(Map<String, dynamic> json) => _$WorkingModeStateModelFromJson(json);
}
