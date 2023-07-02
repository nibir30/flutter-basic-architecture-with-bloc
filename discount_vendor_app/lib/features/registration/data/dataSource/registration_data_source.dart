import 'package:dartz/dartz.dart';
import '../../../../api_gateway/api_collection/registration_api/registration_api.dart';
import '../../../../api_gateway/base_model/base_data_source.dart';
import '../../../../api_gateway/base_model/base_model.dart';
import '../../domain/entities/registration_request_entity.dart';
import '../models/registration_response_model.dart';

abstract class RegistrationDataSource {
  Future<Either<RegistrationResponseModel, BaseError>?> registerUser(RegistrationRequestEntity registrationRequestEntity);
}

class RegistrationDataSourceImpl extends BaseDataSource implements RegistrationDataSource {
  final BaseError baseError = BaseError();
  final RegistrationApi _registrationApi = RegistrationApi();

  RegistrationDataSourceImpl();

  @override
  Future<Either<RegistrationResponseModel, BaseError>?> registerUser(RegistrationRequestEntity registrationRequestEntity) async {
    final Either<RegistrationResponseModel, BaseError>? _response = await _registrationApi.post(
      registrationRequestEntity.toModel(),
      headers: super.authHeaders,
    );
    return _response;
  }
}
