import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';
import 'package:running_services_monitor/core/extensions.dart';
import 'package:running_services_monitor/core/theme/theme_bloc.dart';

class ThemeToggleButton extends StatelessWidget {
  const ThemeToggleButton({super.key});

  AppThemeMode getNextThemeMode(AppThemeMode themeMode, Brightness brightness) {
    switch (themeMode) {
      case AppThemeMode.light:
        return brightness == Brightness.light
            ? AppThemeMode.dark
            : AppThemeMode.system;
      case AppThemeMode.dark:
        return brightness == Brightness.light
            ? AppThemeMode.system
            : AppThemeMode.light;
      case AppThemeMode.system:
        return brightness == Brightness.light
            ? AppThemeMode.light
            : AppThemeMode.dark;
    }
  }

  void onPressed(AppThemeMode themeMode, Brightness brightness) {
    final newThemeMode = getNextThemeMode(themeMode, brightness);
    getIt<ThemeBloc>().add(ThemeEvent.setTheme(mode: newThemeMode));
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ThemeBloc, AppThemeMode, AppThemeMode>(
      bloc: getIt<ThemeBloc>(),
      selector: (state) => state,
      builder: (context, themeMode) {
        final brightness = MediaQuery.platformBrightnessOf(context);
        final icon = switch (themeMode) {
          AppThemeMode.light => const Icon(Icons.light_mode),
          AppThemeMode.dark => const Icon(Icons.dark_mode),
          _ => const Icon(Icons.brightness_auto),
        };
        return IconButton(
          icon: icon,
          onPressed: () => onPressed(themeMode, brightness),
          tooltip: context.loc.toggleTheme,
        );
      },
    );
  }
}
