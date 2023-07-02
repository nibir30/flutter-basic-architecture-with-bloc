import '../../../../api_gateway/repositories/registration_repository/registration_repository.dart';
import '../entities/registration_request_entity.dart';
import '../entities/registration_response_entity.dart';

// class RegistrationUseCase extends BaseUseCase<RegistrationResponseEntity?, BaseAuthData>{
class RegistrationUseCase {
  final RegistrationRepository registrationRepository;
  RegistrationUseCase({required this.registrationRepository});

  Future<RegistrationResponseEntity?> register(RegistrationRequestEntity registrationRequestEntity) async {
    return await registrationRepository.registerUser(registrationRequestEntity);
  }
}
