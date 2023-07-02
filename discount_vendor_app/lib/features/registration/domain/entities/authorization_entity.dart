import 'package:discount_vendor_app/features/registration/data/models/authorization_model.dart';

class AuthorizationEntity {
  String? token;
  String? type;

  AuthorizationEntity(
    this.token,
    this.type,
  );

  AuthorizationModel toModel() {
    return AuthorizationModel(
      token,
      type,
    );
  }
}
