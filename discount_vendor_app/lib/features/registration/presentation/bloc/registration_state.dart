part of 'registration_bloc.dart';

@immutable
abstract class RegistrationState {}

class RegistrationInitial extends RegistrationState {}

class RegistrationErrorState extends RegistrationState {
  final String errorMsg;
  RegistrationErrorState(this.errorMsg);
}

class RegistrationLoadingState extends RegistrationState {}

class RegistrationSuccessState extends RegistrationState {
  final RegistrationResponseEntity registrationResponseEntity;
  RegistrationSuccessState(this.registrationResponseEntity);
}
