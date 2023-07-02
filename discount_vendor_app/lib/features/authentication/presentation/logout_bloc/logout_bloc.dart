import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/user_info.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<LoadingLogoutEvent>((event, emit) => emit(LogoutLoadingState()));
    on<RequestLogoutEvent>(_onRequestLogout);
  }

  Future<void> _onRequestLogout(final RequestLogoutEvent event, final Emitter<LogoutState> emit) async {
    emit(LogoutLoadingState());
    // final LoginRepository _repository = LoginRepositoryImpl();
    // final LoginUseCase _useCase = LoginUseCase(authRepository: _repository);
    // final BaseAuthData authData = BaseAuthData();
    // final LoginResponseEntity? _entity = await _useCase(authData);
    // if (_entity != null) {
    userInfo.clearLogin();
    emit(LogoutSuccessState());
    // } else {
    //   emit(LogoutErrorState("Unable to logout"));
    // }
  }
}
