import '../../../../api_gateway/repositories/login_repository/login_repository.dart';
import '../entities/login_request_entity.dart';
import '../entities/login_response_entity.dart';

class LoginUseCase {
  final LoginRepository authRepository;
  LoginUseCase({required this.authRepository});

  Future<LoginResponseEntity?> login(LoginRequestEntity loginRequestEntity) async {
    return await authRepository.getLoginData(loginRequestEntity);
  }
}
