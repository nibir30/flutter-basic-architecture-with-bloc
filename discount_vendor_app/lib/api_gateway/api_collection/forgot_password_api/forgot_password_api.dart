// import 'package:medi_bee/features/forgot_password/data/model/forgot_password_response_model.dart';

// import '../../base_model/api_provider.dart';
// import '../../base_model/base_model.dart';
// import '../../base_model/base_api.dart';
// import '../../base_model/base_request.dart';
// import '../../base_model/base_response.dart';
// import '../api_names.dart';

// class ForgotPasswordApi extends BaseApi<BaseRequest, ForgotPasswordResponseModel, BaseError> {
//   ForgotPasswordApi() : super(ApiNames.forgotPassword, ApiProvider(), BaseError());
//   @override
//   BaseModel mapResponse(Map<String, dynamic>? responseJson) {
//     final BaseResponse base = BaseResponse.fromJson(responseJson ?? {});
//     final ForgotPasswordResponseModel _passwordResponse = ForgotPasswordResponseModel.fromJson(responseJson?["data"]);
//     _passwordResponse.setStatus(base);
//     return _passwordResponse;
//   }
// }
