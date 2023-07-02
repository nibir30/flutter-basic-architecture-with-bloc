import 'package:discount_vendor_app/features/registration/domain/entities/authorization_entity.dart';
import 'package:discount_vendor_app/features/registration/domain/entities/user_role_entity.dart';

import '../../data/models/registration_response_model.dart';
import '../../data/models/user_role_model.dart';

class RegistrationResponseEntity {
  String? name;
  String? email;
  double? refer_by;
  double? refer_code;
  double? otp;
  String? updated_at;
  String? created_at;
  double? id;
  List<UserRoleEntity>? roles;
  AuthorizationEntity? authorisation;

  RegistrationResponseEntity(
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

  RegistrationResponseModel toModel() {
    List<UserRoleModel>? userRoleModel = [];

    for (var i = 0; i < roles!.length; i++) {
      userRoleModel.add(roles![i].toModel());
    }
    return RegistrationResponseModel(
      name,
      email,
      refer_by,
      refer_code,
      otp,
      updated_at,
      created_at,
      id,
      userRoleModel,
      authorisation!.toModel(),
    );
  }
}
