import 'dart:ui';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'language_event.dart';
part 'language_state.dart';
part 'language_bloc.freezed.dart';

@injectable
class LanguageBloc extends HydratedBloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageState.initial()) {
    on<_ChangeLanguage>((event, emit) {
      emit(state.copyWith(locale: event.locale));
    });
  }

  @override
  LanguageState? fromJson(Map<String, dynamic> json) {
    try {
      final languageCode = json['locale'] as String;
      return LanguageState(locale: Locale(languageCode));
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LanguageState state) {
    return {'locale': state.locale.languageCode};
  }
}
