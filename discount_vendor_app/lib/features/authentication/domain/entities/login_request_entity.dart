import '../../data/models/login_request_model.dart';

class LoginRequestEntity {
  final String email;
  final String password;
  final String user_type;

  LoginRequestEntity(
    this.email,
    this.password,
    this.user_type,
  );

  LoginRequestModel toModel() => LoginRequestModel(
        email,
        password,
        user_type,
      );
}
