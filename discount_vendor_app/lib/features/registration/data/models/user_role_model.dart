import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_request.dart';
import '../../domain/entities/user_role_entity.dart';
import 'pivot_model.dart';

part 'user_role_model.g.dart';

@JsonSerializable()
class UserRoleModel extends BaseRequest {
  double? id;
  String? name;
  String? guard_name;
  String? created_at;
  String? updated_at;
  PivotModel? pivot;

  UserRoleModel(
    this.id,
    this.name,
    this.guard_name,
    this.created_at,
    this.updated_at,
    this.pivot,
  );

  factory UserRoleModel.fromJson(Map<String, dynamic> json) => _$UserRoleModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserRoleModelToJson(this);

  UserRoleEntity toEntity() {
    return UserRoleEntity(
      id,
      name,
      guard_name,
      created_at,
      updated_at,
      pivot!.toEntity(),
    );
  }
}
