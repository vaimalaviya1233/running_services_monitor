// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contributor_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContributorInfo _$ContributorInfoFromJson(Map<String, dynamic> json) =>
    _ContributorInfo(
      login: json['login'] as String,
      name: json['name'] as String?,
      contributions: (json['contributions'] as num).toInt(),
      pullRequests:
          (json['pullRequests'] as List<dynamic>?)
              ?.map((e) => PullRequestInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ContributorInfoToJson(_ContributorInfo instance) =>
    <String, dynamic>{
      'login': instance.login,
      'name': instance.name,
      'contributions': instance.contributions,
      'pullRequests': instance.pullRequests,
    };

_PullRequestInfo _$PullRequestInfoFromJson(Map<String, dynamic> json) =>
    _PullRequestInfo(
      number: (json['number'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$PullRequestInfoToJson(_PullRequestInfo instance) =>
    <String, dynamic>{'number': instance.number, 'title': instance.title};
