// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      isActive: json['isActive'] as bool,
      serviceKey: json['serviceKey'] as String,
      requiresDestination: json['requiresDestination'] as bool,
      applicableVehicleTypes: (json['applicableVehicleTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'isActive': instance.isActive,
      'serviceKey': instance.serviceKey,
      'requiresDestination': instance.requiresDestination,
      'applicableVehicleTypes': instance.applicableVehicleTypes,
    };
