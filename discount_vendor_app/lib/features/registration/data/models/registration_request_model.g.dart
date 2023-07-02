// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationRequestModel _$RegistrationRequestModelFromJson(
    Map<String, dynamic> json) {
  return RegistrationRequestModel(
    json['name'] as String?,
    json['email'] as String?,
    json['password'] as String?,
    json['user_type'] as String?,
    json['refer_code'] as String?,
  );
}

Map<String, dynamic> _$RegistrationRequestModelToJson(
        RegistrationRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'user_type': instance.user_type,
      'refer_code': instance.refer_code,
    };
