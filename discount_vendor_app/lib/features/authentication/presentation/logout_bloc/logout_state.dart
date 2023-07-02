part of 'logout_bloc.dart';

@immutable
abstract class LogoutState {}

class LogoutInitial extends LogoutState {}

class LogoutErrorState extends LogoutState {
  final String errorMsg;
  LogoutErrorState(this.errorMsg);
}

class LogoutLoadingState extends LogoutState{}

class LogoutSuccessState extends LogoutState {}
