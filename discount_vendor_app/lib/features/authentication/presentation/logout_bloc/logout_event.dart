part of 'logout_bloc.dart';

@immutable
abstract class LogoutEvent {}
class LoadingLogoutEvent extends LogoutEvent{

}
class ErrorLogoutEvent extends LogoutEvent{
  final String errorMsg;
  ErrorLogoutEvent(this.errorMsg);
}

class RequestLogoutEvent extends LogoutEvent {}
