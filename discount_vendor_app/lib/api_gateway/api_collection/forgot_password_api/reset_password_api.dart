// import 'package:medi_bee/features/forgot_password/data/model/post_reset_password_response_model.dart';

// import '../../base_model/api_provider.dart';
// import '../../base_model/base_model.dart';
// import '../../base_model/base_api.dart';
// import '../../base_model/base_request.dart';
// import '../../base_model/base_response.dart';
// import '../api_names.dart';

// class ResetPasswordApi extends BaseApi<BaseRequest, ResetPasswordResponseModel, BaseError> {
//   ResetPasswordApi() : super(ApiNames.resetPassword, ApiProvider(), BaseError());
//   @override
//   BaseModel mapResponse(Map<String, dynamic>? responseJson) {
//     final BaseResponse base = BaseResponse.fromJson(responseJson ?? {});
//     final ResetPasswordResponseModel _passwordResponse = ResetPasswordResponseModel.fromJson(responseJson?["data"]);
//     _passwordResponse.setStatus(base);
//     return _passwordResponse;
//   }
// }
