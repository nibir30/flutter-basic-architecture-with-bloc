// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pivot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PivotModel _$PivotModelFromJson(Map<String, dynamic> json) {
  return PivotModel(
    (json['model_id'] as num?)?.toDouble(),
    (json['role_id'] as num?)?.toDouble(),
    json['model_type'] as String?,
  );
}

Map<String, dynamic> _$PivotModelToJson(PivotModel instance) =>
    <String, dynamic>{
      'model_id': instance.model_id,
      'role_id': instance.role_id,
      'model_type': instance.model_type,
    };
