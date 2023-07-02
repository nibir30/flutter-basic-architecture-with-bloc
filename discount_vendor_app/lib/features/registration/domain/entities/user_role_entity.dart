import 'package:discount_vendor_app/features/registration/data/models/user_role_model.dart';

import 'pivot_entity.dart';

class UserRoleEntity {
  double? id;
  String? name;
  String? guard_name;
  String? created_at;
  String? updated_at;
  PivotEntity? pivot;

  UserRoleEntity(
    this.id,
    this.name,
    this.guard_name,
    this.created_at,
    this.updated_at,
    this.pivot,
  );

  UserRoleModel toModel() {
    return UserRoleModel(
      id,
      name,
      guard_name,
      created_at,
      updated_at,
      pivot!.toModel(),
    );
  }
}
