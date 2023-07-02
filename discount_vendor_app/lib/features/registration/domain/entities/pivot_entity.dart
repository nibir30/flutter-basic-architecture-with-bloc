import 'package:discount_vendor_app/features/registration/data/models/pivot_model.dart';

class PivotEntity {
  double? model_id;
  double? role_id;
  String? model_type;

  PivotEntity(
    this.model_id,
    this.role_id,
    this.model_type,
  );

  PivotModel toModel() {
    return PivotModel(
      model_id,
      role_id,
      model_type,
    );
  }
}
