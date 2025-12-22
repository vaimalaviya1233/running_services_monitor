part of 'refresh_indicator_bloc.dart';

@freezed
class RefreshIndicatorState with _$RefreshIndicatorState {
  const factory RefreshIndicatorState({
    @Default(false) bool isRefreshing,
    @Default(false) bool isDismissing,
    @Default(0.0) double dragOffset,
    @Default(false) bool isDragging,
    @Default(false) bool shouldTriggerRefresh,
  }) = _RefreshIndicatorState;

  const RefreshIndicatorState._();

  static const double triggerThreshold = 80.0;
  static const double indicatorHeight = 60.0;

  double get currentHeight {
    if (isDismissing) return 0;
    return dragOffset.clamp(0.0, indicatorHeight);
  }

  bool get showIndicator => dragOffset > 0 || isRefreshing || isDismissing;
  double get progress => (dragOffset / triggerThreshold).clamp(0.0, 1.0);
  
  @override
  double get dragOffset => mapOrNull((value) => value.dragOffset) ?? 0.0;
  
  @override
  bool get isDismissing => mapOrNull((value) => value.isDismissing) ?? false;
  
  @override
  bool get isDragging => mapOrNull((value) => value.isDragging) ?? false;
  
  @override
  bool get isRefreshing => mapOrNull((value) => value.isRefreshing) ?? false;
  
  @override
  bool get shouldTriggerRefresh => mapOrNull((value) => value.shouldTriggerRefresh) ?? false;
}
