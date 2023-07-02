import 'package:discount_vendor_app/features/registration/data/models/authorization_model.dart';

import '../../../features/registration/data/models/registration_response_model.dart';
import '../../base_model/api_provider.dart';
import '../../base_model/base_api.dart';
import '../../base_model/base_model.dart';
import '../../base_model/base_request.dart';
import '../../base_model/base_response.dart';
import '../api_names.dart';

class RegistrationApi extends BaseApi<BaseRequest, RegistrationResponseModel, BaseError> {
  RegistrationApi() : super(ApiNames.register, ApiProvider(), BaseError());
  @override
  BaseModel mapResponse(Map<String, dynamic>? responseJson) {
    final BaseResponse base = BaseResponse.fromJson(responseJson ?? {});
    final RegistrationResponseModel _registrationResponse = RegistrationResponseModel.fromJson(responseJson!["user"]);
    final AuthorizationModel _authorization = AuthorizationModel.fromJson(responseJson["authorisation"]);
    _registrationResponse.authorisation = _authorization;
    _registrationResponse.setStatus(base);
    return _registrationResponse;
  }
}
