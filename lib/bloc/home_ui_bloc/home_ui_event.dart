part of 'home_ui_bloc.dart';

@freezed
class HomeUiEvent with _$HomeUiEvent {
  const factory HomeUiEvent.scrollDirectionChanged(UiScrollDirection direction) = _ScrollDirectionChanged;
  const factory HomeUiEvent.tabChanged(int index) = _TabChanged;
  const factory HomeUiEvent.reset() = _Reset;
}
