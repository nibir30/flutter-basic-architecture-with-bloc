import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_request.dart';
import '../../domain/entities/authorization_entity.dart';

part 'authorization_model.g.dart';

@JsonSerializable()
class AuthorizationModel extends BaseRequest {
  String? token;
  String? type;

  AuthorizationModel(
    this.token,
    this.type,
  );

  factory AuthorizationModel.fromJson(Map<String, dynamic> json) => _$AuthorizationModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthorizationModelToJson(this);

  AuthorizationEntity toEntity() {
    return AuthorizationEntity(
      token,
      type,
    );
  }
}
