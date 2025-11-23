part of 'app_details_bloc.dart';

@freezed
class AppDetailsState with _$AppDetailsState {
  const factory AppDetailsState.initial() = _Initial;
  const factory AppDetailsState.loading(AppProcessInfo appInfo) = _Loading;
  const factory AppDetailsState.success(AppProcessInfo appInfo) = _Success;
  const factory AppDetailsState.failure(AppProcessInfo appInfo, String message) = _Failure;
}
