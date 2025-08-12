// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fleet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FleetModelImpl _$$FleetModelImplFromJson(Map<String, dynamic> json) =>
    _$FleetModelImpl(
      id: json['id'] as String?,
      placa: json['placa'] as String,
      modelo: json['modelo'] as String,
      tipo: json['tipo'] as String,
      status: json['status'] as String,
      currentGrueroId: json['currentGrueroId'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$FleetModelImplToJson(_$FleetModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placa': instance.placa,
      'modelo': instance.modelo,
      'tipo': instance.tipo,
      'status': instance.status,
      'currentGrueroId': instance.currentGrueroId,
      'photoUrl': instance.photoUrl,
    };
