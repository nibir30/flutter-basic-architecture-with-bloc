import 'package:dartz/dartz.dart';

import '../../../../api_gateway/api_collection/login_api/login_api.dart';
import '../../../../api_gateway/base_model/base_data_source.dart';
import '../../../../api_gateway/base_model/base_model.dart';
import '../../domain/entities/login_request_entity.dart';
import '../models/login_response_model.dart';

abstract class AuthDataSource {
  Future<Either<LoginResponseModel, BaseError>?> getLoginData(LoginRequestEntity loginRequestEntity);
  // Future<Either<LoginResponseModel, BaseError>?> logout();
}

class AuthDataSourceImpl extends BaseDataSource implements AuthDataSource {
  final BaseError baseError = BaseError();
  final LoginApi _loginApi = LoginApi();

  AuthDataSourceImpl();

  @override
  Future<Either<LoginResponseModel, BaseError>?> getLoginData(LoginRequestEntity loginRequestEntity) async {
    final Either<LoginResponseModel, BaseError>? _response = await _loginApi.post(
      loginRequestEntity.toModel(),
      headers: super.authHeaders,
    );
    return _response;
  }
}
