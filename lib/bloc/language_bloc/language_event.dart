part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.changeLanguage(Locale locale) = _ChangeLanguage;
  const factory LanguageEvent.started() = _Started;
}
