// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_rate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseRatesImpl _$$BaseRatesImplFromJson(Map<String, dynamic> json) =>
    _$BaseRatesImpl(
      servicioGruaKm: (json['servicio_grua_km'] as num?)?.toDouble(),
      auxilioGasolina: (json['auxilio_gasolina'] as num?)?.toDouble(),
      auxilioBateria: (json['auxilio_bateria'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BaseRatesImplToJson(_$BaseRatesImpl instance) =>
    <String, dynamic>{
      'servicio_grua_km': instance.servicioGruaKm,
      'auxilio_gasolina': instance.auxilioGasolina,
      'auxilio_bateria': instance.auxilioBateria,
    };

_$SurchargesImpl _$$SurchargesImplFromJson(Map<String, dynamic> json) =>
    _$SurchargesImpl(
      vehiculoBlindado: (json['vehiculo_blindado'] as num?)?.toDouble(),
      sotano: (json['sotano'] as num?)?.toDouble(),
      cargaPesada: (json['carga_pesada'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SurchargesImplToJson(_$SurchargesImpl instance) =>
    <String, dynamic>{
      'vehiculo_blindado': instance.vehiculoBlindado,
      'sotano': instance.sotano,
      'carga_pesada': instance.cargaPesada,
    };

_$NightScheduleImpl _$$NightScheduleImplFromJson(Map<String, dynamic> json) =>
    _$NightScheduleImpl(
      isActive: json['isActive'] as bool,
      startHour: (json['start_hour'] as num).toInt(),
      endHour: (json['end_hour'] as num).toInt(),
      rateMultiplier: (json['rate_multiplier'] as num).toDouble(),
    );

Map<String, dynamic> _$$NightScheduleImplToJson(_$NightScheduleImpl instance) =>
    <String, dynamic>{
      'isActive': instance.isActive,
      'start_hour': instance.startHour,
      'end_hour': instance.endHour,
      'rate_multiplier': instance.rateMultiplier,
    };
