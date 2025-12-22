part of 'home_ui_bloc.dart';

@freezed
class HomeUiState with _$HomeUiState {
  const factory HomeUiState({@Default(true) bool isFabExtended, @Default(true) bool isFabVisible}) = _HomeUiState;

  const HomeUiState._();

  @override
  bool get isFabExtended => mapOrNull((value) => value.isFabExtended) ?? false;

  @override
  bool get isFabVisible => mapOrNull((value) => value.isFabVisible) ?? false;
}
