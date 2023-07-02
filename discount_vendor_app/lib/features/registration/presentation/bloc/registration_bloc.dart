import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../api_gateway/repositories/registration_repository/registration_repository.dart';
import '../../domain/entities/registration_request_entity.dart';
import '../../domain/entities/registration_response_entity.dart';
import '../../domain/usecases/registration_usecase.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<RegistrationErrorEvent>((event, emit) => emit(RegistrationErrorState("Something went wrong")));
    on<RegistrationLoadingEvent>((event, emit) => emit(RegistrationLoadingState()));
    on<RegistrationRequestEvent>(_onRegistrationSuccess);
  }

  Future<void> _onRegistrationSuccess(final RegistrationRequestEvent event, final Emitter<RegistrationState> emit) async {
    emit(RegistrationLoadingState());
    final RegistrationRepository _repository = RegistrationRepositoryImpl();
    final RegistrationUseCase _useCase = RegistrationUseCase(registrationRepository: _repository);
    final RegistrationResponseEntity? _entity = await _useCase.register(event.registrationReqEntity);
    if (_entity != null) {
      // userInfo.setUserData(_entity);
      emit(RegistrationSuccessState(_entity));
    } else {
      emit(RegistrationErrorState("Unable to register"));
    }
  }
}
