import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:running_services_monitor/core/constants.dart';

part 'contributor_info.freezed.dart';
part 'contributor_info.g.dart';

@freezed
abstract class ContributorInfo with _$ContributorInfo {
  const ContributorInfo._();

  const factory ContributorInfo({
    required String login,
    String? name,
    required int contributions,
    @Default([]) List<PullRequestInfo> pullRequests,
  }) = _ContributorInfo;

  factory ContributorInfo.fromJson(Map<String, dynamic> json) => _$ContributorInfoFromJson(json);

  String get profileUrl => 'https://github.com/$login';
}

@freezed
abstract class PullRequestInfo with _$PullRequestInfo {
  const PullRequestInfo._();

  const factory PullRequestInfo({
    required int number,
    required String title,
  }) = _PullRequestInfo;

  factory PullRequestInfo.fromJson(Map<String, dynamic> json) => _$PullRequestInfoFromJson(json);

  String get prUrl => '${AppConstants.sourceCodeUrl}/pull/$number';
}
