import 'package:freezed_annotation/freezed_annotation.dart';

part 'contributor_info.freezed.dart';
part 'contributor_info.g.dart';

@freezed
abstract class ContributorInfo with _$ContributorInfo {
  const factory ContributorInfo({
    required String login,
    required String htmlUrl,
    required int contributions,
    @Default([]) List<PullRequestInfo> pullRequests,
  }) = _ContributorInfo;

  factory ContributorInfo.fromJson(Map<String, dynamic> json) => _$ContributorInfoFromJson(json);
}

@freezed
abstract class PullRequestInfo with _$PullRequestInfo {
  const factory PullRequestInfo({
    required int number,
    required String title,
    required String htmlUrl,
  }) = _PullRequestInfo;

  factory PullRequestInfo.fromJson(Map<String, dynamic> json) => _$PullRequestInfoFromJson(json);
}
