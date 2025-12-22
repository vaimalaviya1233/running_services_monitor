import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator_event.dart';
part 'refresh_indicator_state.dart';
part 'refresh_indicator_bloc.freezed.dart';

class RefreshIndicatorBloc extends Bloc<RefreshIndicatorEvent, RefreshIndicatorState> {
  RefreshIndicatorBloc() : super(const RefreshIndicatorState()) {
    on<_StartDrag>(_onStartDrag);
    on<_UpdateDrag>(_onUpdateDrag);
    on<_EndDrag>(_onEndDrag);
    on<_Overscroll>(_onOverscroll);
    on<_TriggerRefresh>(_onTriggerRefresh);
    on<_RefreshComplete>(_onRefreshComplete);
    on<_DismissComplete>(_onDismissComplete);
    on<_Reset>(_onReset);
  }

  void _onStartDrag(_StartDrag event, Emitter<RefreshIndicatorState> emit) {
    if (state.isRefreshing || state.isDismissing) return;
    emit(state.copyWith(isDragging: true));
  }

  void _onUpdateDrag(_UpdateDrag event, Emitter<RefreshIndicatorState> emit) {
    if (state.isRefreshing || state.isDismissing || !state.isDragging) return;

    final newOffset = (state.dragOffset + event.delta).clamp(0.0, double.infinity);
    emit(state.copyWith(dragOffset: newOffset));

    if (newOffset >= RefreshIndicatorState.triggerThreshold && !state.isRefreshing) {
      add(const RefreshIndicatorEvent.triggerRefresh());
    }
  }

  void _onEndDrag(_EndDrag event, Emitter<RefreshIndicatorState> emit) {
    if (state.isRefreshing || state.isDismissing) return;

    if (state.dragOffset >= RefreshIndicatorState.triggerThreshold && !state.isRefreshing) {
      add(const RefreshIndicatorEvent.triggerRefresh());
    } else if (state.dragOffset > 0) {
      emit(state.copyWith(isDragging: false, dragOffset: 0));
    } else {
      emit(state.copyWith(isDragging: false));
    }
  }

  void _onOverscroll(_Overscroll event, Emitter<RefreshIndicatorState> emit) {
    if (state.isRefreshing || state.isDismissing) return;

    final newOffset = state.dragOffset + event.amount;
    emit(state.copyWith(isDragging: true, dragOffset: newOffset));
  }

  void _onTriggerRefresh(_TriggerRefresh event, Emitter<RefreshIndicatorState> emit) {
    if (state.isRefreshing) return;
    emit(
      state.copyWith(
        isRefreshing: true,
        isDragging: false,
        dragOffset: RefreshIndicatorState.indicatorHeight,
        shouldTriggerRefresh: true,
      ),
    );
  }

  void _onRefreshComplete(_RefreshComplete event, Emitter<RefreshIndicatorState> emit) {
    emit(state.copyWith(isRefreshing: false, isDismissing: true, shouldTriggerRefresh: false));
  }

  void _onDismissComplete(_DismissComplete event, Emitter<RefreshIndicatorState> emit) {
    emit(const RefreshIndicatorState());
  }

  void _onReset(_Reset event, Emitter<RefreshIndicatorState> emit) {
    emit(const RefreshIndicatorState());
  }
}
