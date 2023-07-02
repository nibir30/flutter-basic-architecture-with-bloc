// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationResponseModel _$RegistrationResponseModelFromJson(
    Map<String, dynamic> json) {
  return RegistrationResponseModel(
    json['name'] as String?,
    json['email'] as String?,
    (json['refer_by'] as num?)?.toDouble(),
    (json['refer_code'] as num?)?.toDouble(),
    (json['otp'] as num?)?.toDouble(),
    json['updated_at'] as String?,
    json['created_at'] as String?,
    (json['id'] as num?)?.toDouble(),
    (json['roles'] as List<dynamic>?)
        ?.map((e) => UserRoleModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['authorisation'] == null
        ? null
        : AuthorizationModel.fromJson(
            json['authorisation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RegistrationResponseModelToJson(
        RegistrationResponseModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'refer_by': instance.refer_by,
      'refer_code': instance.refer_code,
      'otp': instance.otp,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'roles': instance.roles,
      'authorisation': instance.authorisation,
    };
