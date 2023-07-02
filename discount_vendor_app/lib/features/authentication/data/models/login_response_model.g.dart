// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    (json['id'] as num?)?.toDouble(),
    json['name'] as String?,
    json['email'] as String?,
    (json['status'] as num?)?.toDouble(),
    json['otp'] as String?,
    (json['refer_by'] as num?)?.toDouble(),
    json['refer_code'] as String?,
    json['updated_at'] as String?,
    json['created_at'] as String?,
    (json['roles'] as List<dynamic>?)
        ?.map((e) => UserRoleModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['authorisation'] == null
        ? null
        : AuthorizationModel.fromJson(
            json['authorisation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'status': instance.status,
      'otp': instance.otp,
      'refer_by': instance.refer_by,
      'refer_code': instance.refer_code,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'roles': instance.roles,
      'authorisation': instance.authorisation,
    };
