part of 'refresh_indicator_bloc.dart';

@freezed
class RefreshIndicatorEvent with _$RefreshIndicatorEvent {
  const factory RefreshIndicatorEvent.startDrag() = _StartDrag;
  const factory RefreshIndicatorEvent.updateDrag(double delta) = _UpdateDrag;
  const factory RefreshIndicatorEvent.endDrag() = _EndDrag;
  const factory RefreshIndicatorEvent.overscroll(double amount) = _Overscroll;
  const factory RefreshIndicatorEvent.triggerRefresh() = _TriggerRefresh;
  const factory RefreshIndicatorEvent.refreshComplete() = _RefreshComplete;
  const factory RefreshIndicatorEvent.dismissComplete() = _DismissComplete;
  const factory RefreshIndicatorEvent.reset() = _Reset;
}
