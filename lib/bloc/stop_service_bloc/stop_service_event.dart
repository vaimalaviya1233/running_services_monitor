part of 'stop_service_bloc.dart';

@freezed
class StopServiceEvent with _$StopServiceEvent {
  const factory StopServiceEvent.stopAllServices({required String packageName}) = _StopAllServices;

  const factory StopServiceEvent.stopSingleService({required String packageName, required String serviceName, int? pid}) =
      _StopSingleService;

  const factory StopServiceEvent.stopByPid({required String packageName, required int pid}) = _StopByPid;

  const factory StopServiceEvent.reset() = _Reset;
}
