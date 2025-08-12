import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_rate_model.freezed.dart';
part 'service_rate_model.g.dart';

// Documento: base_rates
@freezed
class BaseRates with _$BaseRates {
  const factory BaseRates({
    // CORREGIDO: Usar lowerCamelCase y JsonKey.
    @JsonKey(name: 'servicio_grua_km') double? servicioGruaKm,
    @JsonKey(name: 'auxilio_gasolina') double? auxilioGasolina,
    @JsonKey(name: 'auxilio_bateria') double? auxilioBateria,
    // Añadir más campos según sea necesario
  }) = _BaseRates;

  factory BaseRates.fromJson(Map<String, dynamic> json) =>
      _$BaseRatesFromJson(json);
}

// Documento: surcharges
@freezed
class Surcharges with _$Surcharges {
  const factory Surcharges({
    // CORREGIDO: Usar lowerCamelCase y JsonKey.
    @JsonKey(name: 'vehiculo_blindado') double? vehiculoBlindado,
    double? sotano,
    @JsonKey(name: 'carga_pesada') double? cargaPesada,
  }) = _Surcharges;

  factory Surcharges.fromJson(Map<String, dynamic> json) =>
      _$SurchargesFromJson(json);
}

// Documento: night_schedule
@freezed
class NightSchedule with _$NightSchedule {
  const factory NightSchedule({
    required bool isActive,
    // CORREGIDO: Usar lowerCamelCase y JsonKey.
    @JsonKey(name: 'start_hour') required int startHour,
    @JsonKey(name: 'end_hour') required int endHour,
    @JsonKey(name: 'rate_multiplier') required double rateMultiplier,
  }) = _NightSchedule;

  factory NightSchedule.fromJson(Map<String, dynamic> json) =>
      _$NightScheduleFromJson(json);
}