import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/login_user_entity.dart';

part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel {
  final String id;
  final String fullName;
  final String nickName;
  final String username;
  final String? image;
  final String? currentInstitute;
  final String? currentPosition;
  final List<String>? phone;
  final List<String>? email;
  final List<String>? role;
  final bool? isPhoneVerified;
  final bool? isVerified;
  final List? rating;
  final String? createdAt;
  final String? updatedAt;
  final int? iv;

  LoginUserModel(
    this.id,
    this.fullName,
    this.nickName,
    this.username,
    this.image,
    this.currentInstitute,
    this.currentPosition,
    this.phone,
    this.email,
    this.role,
    this.isPhoneVerified,
    this.isVerified,
    this.rating,
    this.createdAt,
    this.updatedAt,
    this.iv,
  );

  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);

  LoginUserEntity toEntity() => LoginUserEntity(
        id,
        fullName,
        nickName,
        username,
        image,
        currentInstitute,
        currentPosition,
        phone,
        email,
        role,
        isPhoneVerified,
        isVerified,
        rating,
        createdAt,
        updatedAt,
        iv,
      );
}
