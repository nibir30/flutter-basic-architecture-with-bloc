// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthorizationModel _$AuthorizationModelFromJson(Map<String, dynamic> json) {
  return AuthorizationModel(
    json['token'] as String?,
    json['type'] as String?,
  );
}

Map<String, dynamic> _$AuthorizationModelToJson(AuthorizationModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
    };
