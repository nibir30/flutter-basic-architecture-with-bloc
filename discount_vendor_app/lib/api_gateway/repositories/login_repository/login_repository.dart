import 'package:dartz/dartz.dart';

import '../../../features/authentication/data/models/login_response_model.dart';
import '../../../features/authentication/domain/entities/login_request_entity.dart';
import '../../../features/authentication/domain/entities/login_response_entity.dart';
import '../../base_model/base_model.dart';
import '../../../features/authentication/data/dataSources/auth_data_source.dart';

abstract class LoginRepository {
  Future<LoginResponseEntity?> getLoginData(LoginRequestEntity loginRequestEntity);
  // Future<LoginResponseEntity?> logout();
}

class LoginRepositoryImpl implements LoginRepository {
  final AuthDataSource _authDataSource = AuthDataSourceImpl();

  LoginRepositoryImpl();

  @override
  Future<LoginResponseEntity?> getLoginData(LoginRequestEntity loginRequestEntity) async {
    final Either<LoginResponseModel, BaseError>? _response = await _authDataSource.getLoginData(loginRequestEntity);
    LoginResponseEntity? _loginResponseEntity;
    _response?.fold((loginResponse) {
      _loginResponseEntity = loginResponse.toEntity();
    }, (error) => null);
    return _loginResponseEntity;
  }
}
