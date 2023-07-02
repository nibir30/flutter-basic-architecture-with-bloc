import 'package:json_annotation/json_annotation.dart';

import '../../../../api_gateway/base_model/base_request.dart';
import '../../domain/entities/pivot_entity.dart';

part 'pivot_model.g.dart';

@JsonSerializable()
class PivotModel extends BaseRequest {
  double? model_id;
  double? role_id;
  String? model_type;

  PivotModel(
    this.model_id,
    this.role_id,
    this.model_type,
  );

  factory PivotModel.fromJson(Map<String, dynamic> json) => _$PivotModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PivotModelToJson(this);

  PivotEntity toEntity() {
    return PivotEntity(
      model_id,
      role_id,
      model_type,
    );
  }
}
