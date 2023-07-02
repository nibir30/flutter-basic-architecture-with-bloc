import 'package:discount_vendor_app/features/registration/domain/entities/user_role_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_model.dart';
import '../../../../api_gateway/base_model/base_response.dart';
import '../../domain/entities/registration_response_entity.dart';
import 'authorization_model.dart';
import 'user_role_model.dart';

part 'registration_response_model.g.dart';

@JsonSerializable()
class RegistrationResponseModel extends BaseModel {
  @JsonKey(ignore: true)
  late final BaseResponse statusResponse;

  String? name;
  String? email;
  double? refer_by;
  double? refer_code;
  double? otp;
  String? updated_at;
  String? created_at;
  double? id;
  List<UserRoleModel>? roles;
  AuthorizationModel? authorisation;

  RegistrationResponseModel(
    this.name,
    this.email,
    this.refer_by,
    this.refer_code,
    this.otp,
    this.updated_at,
    this.created_at,
    this.id,
    this.roles,
    this.authorisation,
  );

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) => _$RegistrationResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationResponseModelToJson(this);

  RegistrationResponseEntity toEntity() {
    List<UserRoleEntity>? userRoleEntity = [];

    for (var i = 0; i < roles!.length; i++) {
      userRoleEntity.add(roles![i].toEntity());
    }
    return RegistrationResponseEntity(
      name,
      email,
      refer_by,
      refer_code,
      otp,
      updated_at,
      created_at,
      id,
      userRoleEntity,
      authorisation!.toEntity(),
    );
  }

  void setStatus(BaseResponse statusResponse) {
    this.statusResponse = statusResponse;
  }
}
