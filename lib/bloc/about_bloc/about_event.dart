part of 'about_bloc.dart';

@freezed
abstract class AboutEvent with _$AboutEvent {
  const factory AboutEvent.started() = _Started;
}
