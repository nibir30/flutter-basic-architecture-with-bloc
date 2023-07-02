// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    json['memberID'] as int,
    json['memberRoleID'] as int,
    json['dateOfBirth'] as String,
    json['profileThumbUrl'] as String,
    json['accessToken'] as String,
    json['expiredAfterInMins'] as int,
    json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'memberID': instance.memberID,
      'memberRoleID': instance.memberRoleID,
      'accessToken': instance.accessToken,
      'dateOfBirth': instance.dateOfBirth,
      'expiredAfterInMins': instance.expiredAfterInMins,
      'refreshToken': instance.refreshToken,
      'profileThumbUrl': instance.profileThumbUrl,
    };
