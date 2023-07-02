import '../../../features/authentication/data/models/login_response_model.dart';
import '../../../features/registration/data/models/authorization_model.dart';
import '../../base_model/api_provider.dart';
import '../../base_model/base_model.dart';
import '../../base_model/base_api.dart';
import '../../base_model/base_request.dart';
import '../../base_model/base_response.dart';
import '../api_names.dart';

class LoginApi extends BaseApi<BaseRequest, LoginResponseModel, BaseError> {
  LoginApi() : super(ApiNames.userLoginAPI, ApiProvider(), BaseError());
  @override
  BaseModel mapResponse(Map<String, dynamic>? responseJson) {
    final BaseResponse base = BaseResponse.fromJson(responseJson ?? {});
    final LoginResponseModel _loginResponse = LoginResponseModel.fromJson(responseJson?["user"]);
    final AuthorizationModel _authorization = AuthorizationModel.fromJson(responseJson?["authorisation"]);
    _loginResponse.authorisation = _authorization;

    _loginResponse.setStatus(base);
    return _loginResponse;
  }
}
