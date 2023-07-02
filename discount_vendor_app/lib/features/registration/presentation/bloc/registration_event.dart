part of 'registration_bloc.dart';

@immutable
abstract class RegistrationEvent {}

class RegistrationLoadingEvent extends RegistrationEvent {}

class RegistrationRequestEvent extends RegistrationEvent {
  final RegistrationRequestEntity registrationReqEntity;
  RegistrationRequestEvent(this.registrationReqEntity);
}

class RegistrationErrorEvent extends RegistrationEvent {
  final String errorMsg;
  RegistrationErrorEvent(this.errorMsg);
}
