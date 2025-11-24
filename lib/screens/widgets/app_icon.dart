import 'package:flutter/material.dart';
import 'package:running_services_monitor/models/service_info.dart';

class AppIcon extends StatelessWidget {
  final AppProcessInfo appInfo;
  final double size;

  const AppIcon({super.key, required this.appInfo, this.size = 48});

  @override
  Widget build(BuildContext context) {

    if (appInfo.appInfo != null && appInfo.appInfo!.icon != null) {
      return Image.memory(appInfo.appInfo!.icon!, width: size, height: size);
    }


    for (var service in appInfo.services) {
      if (service.icon != null) {
        return Image.memory(service.icon!, width: size, height: size);
      }
    }


    return Icon(Icons.android, size: size);
  }
}
