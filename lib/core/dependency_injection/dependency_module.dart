import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/services/shizuku_api.g.dart';

@module
abstract class DependencyModule {
  ShizukuHostApi get api => ShizukuHostApi();
}
