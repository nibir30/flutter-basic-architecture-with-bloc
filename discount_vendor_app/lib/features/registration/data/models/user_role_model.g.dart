// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRoleModel _$UserRoleModelFromJson(Map<String, dynamic> json) {
  return UserRoleModel(
    (json['id'] as num?)?.toDouble(),
    json['name'] as String?,
    json['guard_name'] as String?,
    json['created_at'] as String?,
    json['updated_at'] as String?,
    json['pivot'] == null
        ? null
        : PivotModel.fromJson(json['pivot'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserRoleModelToJson(UserRoleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'guard_name': instance.guard_name,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'pivot': instance.pivot,
    };
