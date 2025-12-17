import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/services/shizuku_api.g.dart',
    kotlinOut: 'android/app/src/main/kotlin/me/biplobsd/rsm/ShizukuApi.kt',
    kotlinOptions: KotlinOptions(package: 'me.biplobsd.rsm'),
  ),
)
class CommandRequest {
  CommandRequest({required this.command, this.mode});
  String command;
  String? mode;
}

class CommandResult {
  CommandResult({this.output, this.error});
  String? output;
  String? error;
}

@HostApi()
abstract class ShizukuHostApi {
  @async
  CommandResult runCommand(CommandRequest request);

  void setWorkingMode(String mode);

  String getWorkingMode();

  bool pingBinder();

  @async
  bool checkRootPermission();

  @async
  bool requestRootPermission();

  bool checkPermission();

  @async
  bool requestPermission();

  void setStreamCommand(String command);
}

@EventChannelApi()
abstract class ShizukuStreamApi {
  String streamOutput();
}
