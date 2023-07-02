
// import '../../../features/authentication/data/models/login_response_model.dart';
// import '../../base_model/api_provider.dart';
// import '../../base_model/base_api.dart';
// import '../../base_model/base_model.dart';
// import '../../base_model/base_request.dart';
// import '../../base_model/base_response.dart';
// import '../api_names.dart';

// class LogoutApi extends BaseApi<BaseRequest, LoginResponseModel, BaseError> {
//   LogoutApi()
//       : super(ApiNames.userLogoutAPI, ApiProvider(), BaseError());
//   @override
//   BaseModel mapResponse(Map<String, dynamic>? responseJson) {
//     final BaseResponse base = BaseResponse.fromJson(responseJson ?? {});
//     final LoginResponseModel _loginResponse = LoginResponseModel.fromJson(responseJson?["data"]);
//     _loginResponse.setStatus(base);
//     return _loginResponse;
//   }
// }