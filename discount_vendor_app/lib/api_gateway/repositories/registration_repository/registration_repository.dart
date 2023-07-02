import 'package:dartz/dartz.dart';

import '../../../features/registration/data/dataSource/registration_data_source.dart';
import '../../../features/registration/data/models/registration_response_model.dart';
import '../../../features/registration/domain/entities/registration_request_entity.dart';
import '../../../features/registration/domain/entities/registration_response_entity.dart';
import '../../base_model/base_model.dart';

abstract class RegistrationRepository {
  Future<RegistrationResponseEntity?> registerUser(RegistrationRequestEntity registrationRequestEntity);
}

class RegistrationRepositoryImpl implements RegistrationRepository {
  final RegistrationDataSource _registrationDataSource = RegistrationDataSourceImpl();

  RegistrationRepositoryImpl();

  @override
  Future<RegistrationResponseEntity?> registerUser(RegistrationRequestEntity registrationRequestEntity) async {
    final Either<RegistrationResponseModel, BaseError>? _response = await _registrationDataSource.registerUser(registrationRequestEntity);
    RegistrationResponseEntity? registrationResponseEntity;
    _response?.fold((registrationResponse) {
      registrationResponseEntity = registrationResponse.toEntity();
    }, (error) => null);
    return registrationResponseEntity;
  }
}
