// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleModelImpl _$$VehicleModelImplFromJson(Map<String, dynamic> json) =>
    _$VehicleModelImpl(
      id: json['id'] as String?,
      marca: json['marca'] as String,
      modelo: json['modelo'] as String,
      anio: (json['anio'] as num).toInt(),
      placa: json['placa'] as String,
      esDueno: json['esDueno'] as bool,
      carnetCirculacionUrl: json['carnetCirculacionUrl'] as String?,
      cedulaUrl: json['cedulaUrl'] as String?,
    );

Map<String, dynamic> _$$VehicleModelImplToJson(_$VehicleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'marca': instance.marca,
      'modelo': instance.modelo,
      'anio': instance.anio,
      'placa': instance.placa,
      'esDueno': instance.esDueno,
      'carnetCirculacionUrl': instance.carnetCirculacionUrl,
      'cedulaUrl': instance.cedulaUrl,
    };
