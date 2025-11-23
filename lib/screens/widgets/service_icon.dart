import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:running_services_monitor/models/service_info.dart';

class ServiceIcon extends StatelessWidget {
  final RunningServiceInfo service;
  final double size;

  const ServiceIcon({super.key, required this.service, this.size = 40});

  @override
  Widget build(BuildContext context) {
    if (service.icon != null && service.icon is Uint8List) {
      return Image.memory(
        service.icon as Uint8List,
        width: size,
        height: size,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildDefaultIcon(context),
      );
    }

    return _buildDefaultIcon(context);
  }

  Widget _buildDefaultIcon(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        service.isSystemApp ? Icons.android : Icons.apps,
        color: Theme.of(context).colorScheme.onPrimaryContainer,
        size: size * 0.6,
      ),
    );
  }
}
