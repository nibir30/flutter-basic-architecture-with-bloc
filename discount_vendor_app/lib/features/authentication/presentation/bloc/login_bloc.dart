import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../api_gateway/repositories/login_repository/login_repository.dart';
import '../../../../core/user_info.dart';
import '../../domain/entities/login_request_entity.dart';
import '../../domain/entities/login_response_entity.dart';
import '../../domain/usecases/login_usecase.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(AuthInitial()) {
    on<LoadingLoginEvent>((event, emit) => emit(LoginLoadingState()));
    on<ErrorLoginEvent>(_onErrorAuth);
    on<RequestLoginEvent>(_onRequestAuth);
  }

  Future<void> _onRequestAuth(final RequestLoginEvent event, final Emitter<LoginState> emit) async {
    emit(LoginLoadingState());
    final LoginRepository _repository = LoginRepositoryImpl();
    final LoginUseCase _useCase = LoginUseCase(authRepository: _repository);
    final LoginResponseEntity? _entity = await _useCase.login(event.loginRequestEntity);
    if (_entity != null) {
      userInfo.setUserData(_entity);
      emit(LoginSuccessState(_entity));
    } else {
      emit(LoginErrorState("Unable to authenticate"));
    }
  }

  Future<void> _onErrorAuth(final ErrorLoginEvent event, final Emitter<LoginState> emit) async {
    emit(LoginErrorState(event.errorMsg));
  }
}
