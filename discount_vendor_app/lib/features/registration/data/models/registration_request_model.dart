import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_request.dart';

part 'registration_request_model.g.dart';

@JsonSerializable()
class RegistrationRequestModel extends BaseRequest {
  String? name;
  String? email;
  String? password;
  String? user_type;
  String? refer_code;

  RegistrationRequestModel(
    this.name,
    this.email,
    this.password,
    this.user_type,
    this.refer_code,
  );

  factory RegistrationRequestModel.fromJson(Map<String, dynamic> json) => _$RegistrationRequestModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RegistrationRequestModelToJson(this);
}
