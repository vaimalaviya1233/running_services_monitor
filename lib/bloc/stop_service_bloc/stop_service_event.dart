part of 'stop_service_bloc.dart';

@freezed
class StopServiceEvent with _$StopServiceEvent {
  const factory StopServiceEvent.stopAllServices({required String packageName, required List<int> pids}) =
      _StopAllServices;

  const factory StopServiceEvent.stopSingleService({
    required String packageName,
    required String serviceName,
    int? pid,
  }) = _StopSingleService;

  const factory StopServiceEvent.reset() = _Reset;
}
