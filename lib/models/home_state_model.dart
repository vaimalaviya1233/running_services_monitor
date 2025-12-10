import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/service_info.dart';
import 'process_state_filter.dart';

part 'home_state_model.freezed.dart';

@freezed
abstract class HomeStateModel with _$HomeStateModel {
  const factory HomeStateModel({
    @Default(false) bool shizukuReady,

    @Default([]) List<AppProcessInfo> allApps,

    @Default(0.0) double totalRamKb,
    @Default(0.0) double freeRamKb,
    @Default(0.0) double usedRamKb,

    @Default(false) bool isAutoUpdateEnabled,
    @Default(false) bool isSearching,
    @Default('') String searchQuery,
    @Default(ProcessStateFilter.all) ProcessStateFilter selectedProcessFilter,
    @Default(false) bool sortAscending,
  }) = _HomeStateModel;
}

