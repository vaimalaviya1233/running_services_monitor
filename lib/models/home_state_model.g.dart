// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeStateModel _$HomeStateModelFromJson(Map<String, dynamic> json) =>
    _HomeStateModel(
      allApps:
          (json['allApps'] as List<dynamic>?)
              ?.map((e) => AppProcessInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalRamKb: (json['totalRamKb'] as num?)?.toDouble() ?? 0.0,
      freeRamKb: (json['freeRamKb'] as num?)?.toDouble() ?? 0.0,
      usedRamKb: (json['usedRamKb'] as num?)?.toDouble() ?? 0.0,
      isSearching: json['isSearching'] as bool? ?? false,
      searchQuery: json['searchQuery'] as String? ?? '',
      selectedProcessFilter:
          $enumDecodeNullable(
            _$ProcessStateFilterEnumMap,
            json['selectedProcessFilter'],
          ) ??
          ProcessStateFilter.all,
      sortAscending: json['sortAscending'] as bool? ?? false,
    );

Map<String, dynamic> _$HomeStateModelToJson(_HomeStateModel instance) =>
    <String, dynamic>{
      'allApps': instance.allApps,
      'totalRamKb': instance.totalRamKb,
      'freeRamKb': instance.freeRamKb,
      'usedRamKb': instance.usedRamKb,
      'isSearching': instance.isSearching,
      'searchQuery': instance.searchQuery,
      'selectedProcessFilter':
          _$ProcessStateFilterEnumMap[instance.selectedProcessFilter]!,
      'sortAscending': instance.sortAscending,
    };

const _$ProcessStateFilterEnumMap = {
  ProcessStateFilter.all: 'all',
  ProcessStateFilter.active: 'active',
  ProcessStateFilter.cached: 'cached',
  ProcessStateFilter.withServices: 'withServices',
};
