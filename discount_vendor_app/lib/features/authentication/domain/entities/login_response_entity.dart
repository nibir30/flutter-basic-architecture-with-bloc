import 'package:discount_vendor_app/features/registration/domain/entities/authorization_entity.dart';
import 'package:discount_vendor_app/features/registration/domain/entities/user_role_entity.dart';

import '../../../registration/data/models/user_role_model.dart';
import '../../data/models/login_response_model.dart';
import 'login_user_entity.dart';

class LoginResponseEntity {
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
  List<UserRoleEntity>? roles;
  AuthorizationEntity? authorisation;

  LoginResponseEntity(
    this.id,
    this.name,
    this.email,
    this.status,
    this.otp,
    this.refer_by,
    this.refer_code,
    this.updated_at,
    this.created_at,
    this.roles,
    this.authorisation,
  );

  LoginResponseModel toModel() {
    List<UserRoleModel>? userRoleModel = [];

    for (var i = 0; i < roles!.length; i++) {
      userRoleModel.add(roles![i].toModel());
    }
    return LoginResponseModel(
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
      userRoleModel,
      authorisation!.toModel(),
    );
  }
}
