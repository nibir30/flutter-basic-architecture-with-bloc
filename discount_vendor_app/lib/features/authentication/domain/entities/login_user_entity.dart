import '../../data/models/login_user_model.dart';

class LoginUserEntity {
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

  LoginUserEntity(
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

  LoginUserModel toModel() => LoginUserModel(
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
