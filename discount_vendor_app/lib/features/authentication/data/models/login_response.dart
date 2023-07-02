import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final int memberID;
  final int memberRoleID;
  final String accessToken;
  final String dateOfBirth;
  final int expiredAfterInMins;
  final String refreshToken;
  final String profileThumbUrl;

  LoginResponse(
    this.memberID,
    this.memberRoleID,
    this.dateOfBirth,
    this.profileThumbUrl,
    this.accessToken,
    this.expiredAfterInMins,
    this.refreshToken,
  );

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
