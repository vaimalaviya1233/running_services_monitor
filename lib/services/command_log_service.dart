import 'package:injectable/injectable.dart';
import 'package:running_services_monitor/models/command_log_entry.dart';

@lazySingleton
class CommandLogService {
  List<CommandLogEntry> entries = [];

  void addEntry(String command, String output, {bool isSuccess = true}) {
    final entry = CommandLogEntry(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      command: command,
      output: output,
      timestamp: DateTime.now(),
      isSuccess: isSuccess,
    );
    entries.insert(0, entry);
  }

  List<CommandLogEntry> getEntries() => entries;

  CommandLogEntry? getEntry(String id) {
    return entries.where((e) => e.id == id).firstOrNull;
  }

  void clearEntries() {
    entries.clear();
  }
}
