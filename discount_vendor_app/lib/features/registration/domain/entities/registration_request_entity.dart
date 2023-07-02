import '../../data/models/registration_request_model.dart';

class RegistrationRequestEntity {
  String? name;
  String? email;
  String? password;
  String? user_type;
  String? refer_code;

  RegistrationRequestEntity({
    this.name,
    this.email,
    this.password,
    this.user_type,
    this.refer_code,
  });

  RegistrationRequestModel toModel() => RegistrationRequestModel(
        name,
        email,
        password,
        user_type,
        refer_code,
      );
}
