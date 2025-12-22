import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_services_monitor/bloc/app_info_bloc/app_info_bloc.dart';
import 'package:running_services_monitor/core/dependency_injection/dependency_injection.dart';

class AppNameText extends StatelessWidget {
  final String packageName;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const AppNameText({super.key, required this.packageName, this.style, this.maxLines, this.overflow, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppInfoBloc, AppInfoState, String?>(
      bloc: getIt<AppInfoBloc>(),
      selector: (state) => state.value.cachedApps[packageName]?.appName,
      builder: (context, appName) {
        return Text(appName ?? packageName, style: style, maxLines: maxLines, overflow: overflow, textAlign: textAlign);
      },
    );
  }
}
