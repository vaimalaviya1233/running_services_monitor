part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState({required Locale? locale}) = _LanguageState;

  factory LanguageState.initial() => const LanguageState(locale: null);

  const LanguageState._();

  @override
  Locale? get locale => when((locale) => locale);
}
