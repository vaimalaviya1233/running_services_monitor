import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_ui_bloc.freezed.dart';
part 'home_ui_event.dart';
part 'home_ui_state.dart';

enum UiScrollDirection { forward, reverse, idle }

@lazySingleton
class HomeUiBloc extends Bloc<HomeUiEvent, HomeUiState> {
  HomeUiBloc() : super(const HomeUiState()) {
    on<_ScrollDirectionChanged>(_onScrollDirectionChanged);
    on<_TabChanged>(_onTabChanged);
    on<_Reset>(_onReset);
  }

  void _onScrollDirectionChanged(_ScrollDirectionChanged event, Emitter<HomeUiState> emit) {
    if (event.direction == UiScrollDirection.reverse) {
      if (state.isFabExtended) {
        emit(state.copyWith(isFabExtended: false));
      }
    } else if (event.direction == UiScrollDirection.forward) {
      if (!state.isFabExtended) {
        emit(state.copyWith(isFabExtended: true));
      }
    }
  }

  void _onTabChanged(_TabChanged event, Emitter<HomeUiState> emit) {
    final shouldBeVisible = event.index == 0;
    if (state.isFabVisible != shouldBeVisible) {
      emit(state.copyWith(isFabVisible: shouldBeVisible));
    }
  }

  void _onReset(_Reset event, Emitter<HomeUiState> emit) {
    emit(const HomeUiState());
  }
}
