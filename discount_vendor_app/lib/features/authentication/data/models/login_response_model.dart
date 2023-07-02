import 'package:json_annotation/json_annotation.dart';

import 'package:discount_vendor_app/features/registration/data/models/user_role_model.dart';

import '../../../../api_gateway/base_model/base_model.dart';
import '../../../../api_gateway/base_model/base_response.dart';
import '../../../registration/data/models/authorization_model.dart';
import '../../../registration/domain/entities/user_role_entity.dart';
import '../../domain/entities/login_response_entity.dart';
import 'login_user_model.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends BaseModel {
  @JsonKey(ignore: true)
  late final BaseResponse statusResponse;

  double? id;
  String? name;
  // String? username;
  String? email;
  // String? phone;
  double? status;
  String? otp;
  // double? user_type;
  // double? profile_photo;
  // double? address;
  double? refer_by;
  String? refer_code;
  // String? email_verified_at;
  String? updated_at;
  String? created_at;
  List<UserRoleModel>? roles;
  AuthorizationModel? authorisation;

  LoginResponseModel(
    this.id,
    this.name,
    // this.username,
    this.email,
    // this.phone,
    this.status,
    this.otp,
    // this.user_type,
    // this.profile_photo,
    // this.address,
    this.refer_by,
    this.refer_code,
    // this.email_verified_at,
    this.updated_at,
    this.created_at,
    this.roles,
    this.authorisation,
  );

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => _$LoginResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);

  LoginResponseEntity toEntity() {
    List<UserRoleEntity>? userRoleEntity = [];

    for (var i = 0; i < roles!.length; i++) {
      userRoleEntity.add(roles![i].toEntity());
    }
    return LoginResponseEntity(
      id,
      name,
      // username,
      email,
      // phone,
      status,
      otp,
      // user_type,
      // profile_photo,
      // address,
      refer_by,
      refer_code,
      // email_verified_at,
      updated_at,
      created_at,
      userRoleEntity,
      authorisation!.toEntity(),
    );
  }

  void setStatus(BaseResponse statusResponse) {
    this.statusResponse = statusResponse;
  }
}
