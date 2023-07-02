// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) {
  return LoginUserModel(
    json['id'] as String,
    json['fullName'] as String,
    json['nickName'] as String,
    json['username'] as String,
    json['image'] as String?,
    json['currentInstitute'] as String?,
    json['currentPosition'] as String?,
    (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
    (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
    json['isPhoneVerified'] as bool?,
    json['isVerified'] as bool?,
    json['rating'] as List<dynamic>?,
    json['createdAt'] as String?,
    json['updatedAt'] as String?,
    json['iv'] as int?,
  );
}

Map<String, dynamic> _$LoginUserModelToJson(LoginUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'nickName': instance.nickName,
      'username': instance.username,
      'image': instance.image,
      'currentInstitute': instance.currentInstitute,
      'currentPosition': instance.currentPosition,
      'phone': instance.phone,
      'email': instance.email,
      'role': instance.role,
      'isPhoneVerified': instance.isPhoneVerified,
      'isVerified': instance.isVerified,
      'rating': instance.rating,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iv': instance.iv,
    };
