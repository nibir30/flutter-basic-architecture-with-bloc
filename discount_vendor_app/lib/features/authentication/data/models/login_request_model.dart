import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_request.dart';
import '../../../../api_gateway/base_model/base_response.dart';
import '../../domain/entities/login_request_entity.dart';

part 'login_request_model.g.dart';

@JsonSerializable()
class LoginRequestModel extends BaseRequest {
  @JsonKey(ignore: true)
  late final BaseResponse statusResponse;

  final String email;
  final String password;
  final String user_type;

  LoginRequestModel(
    this.email,
    this.password,
    this.user_type,
  );

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) => _$LoginRequestModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);

  LoginRequestEntity toEntity() => LoginRequestEntity(
        email,
        password,
        user_type,
      );

  void setStatus(BaseResponse statusResponse) {
    this.statusResponse = statusResponse;
  }
}
