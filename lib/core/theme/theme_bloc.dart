import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

@singleton
class ThemeBloc extends HydratedCubit<ThemeMode> {
  ThemeBloc() : super(ThemeMode.system);

  void toggleTheme() {
    state == ThemeMode.dark ? emit(ThemeMode.light) : emit(ThemeMode.dark);
  }

  void setTheme(ThemeMode mode) {
    emit(mode);
  }

  @override
  ThemeMode? fromJson(Map<String, dynamic> json) {
    return ThemeMode.values[json['theme_mode'] as int];
  }

  @override
  Map<String, dynamic>? toJson(ThemeMode state) {
    return {'theme_mode': state.index};
  }
}
