// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseRates _$BaseRatesFromJson(Map<String, dynamic> json) {
  return _BaseRates.fromJson(json);
}

/// @nodoc
mixin _$BaseRates {
// CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'servicio_grua_km')
  double? get servicioGruaKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'auxilio_gasolina')
  double? get auxilioGasolina => throw _privateConstructorUsedError;
  @JsonKey(name: 'auxilio_bateria')
  double? get auxilioBateria => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseRatesCopyWith<BaseRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseRatesCopyWith<$Res> {
  factory $BaseRatesCopyWith(BaseRates value, $Res Function(BaseRates) then) =
      _$BaseRatesCopyWithImpl<$Res, BaseRates>;
  @useResult
  $Res call(
      {@JsonKey(name: 'servicio_grua_km') double? servicioGruaKm,
      @JsonKey(name: 'auxilio_gasolina') double? auxilioGasolina,
      @JsonKey(name: 'auxilio_bateria') double? auxilioBateria});
}

/// @nodoc
class _$BaseRatesCopyWithImpl<$Res, $Val extends BaseRates>
    implements $BaseRatesCopyWith<$Res> {
  _$BaseRatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicioGruaKm = freezed,
    Object? auxilioGasolina = freezed,
    Object? auxilioBateria = freezed,
  }) {
    return _then(_value.copyWith(
      servicioGruaKm: freezed == servicioGruaKm
          ? _value.servicioGruaKm
          : servicioGruaKm // ignore: cast_nullable_to_non_nullable
              as double?,
      auxilioGasolina: freezed == auxilioGasolina
          ? _value.auxilioGasolina
          : auxilioGasolina // ignore: cast_nullable_to_non_nullable
              as double?,
      auxilioBateria: freezed == auxilioBateria
          ? _value.auxilioBateria
          : auxilioBateria // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseRatesImplCopyWith<$Res>
    implements $BaseRatesCopyWith<$Res> {
  factory _$$BaseRatesImplCopyWith(
          _$BaseRatesImpl value, $Res Function(_$BaseRatesImpl) then) =
      __$$BaseRatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'servicio_grua_km') double? servicioGruaKm,
      @JsonKey(name: 'auxilio_gasolina') double? auxilioGasolina,
      @JsonKey(name: 'auxilio_bateria') double? auxilioBateria});
}

/// @nodoc
class __$$BaseRatesImplCopyWithImpl<$Res>
    extends _$BaseRatesCopyWithImpl<$Res, _$BaseRatesImpl>
    implements _$$BaseRatesImplCopyWith<$Res> {
  __$$BaseRatesImplCopyWithImpl(
      _$BaseRatesImpl _value, $Res Function(_$BaseRatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servicioGruaKm = freezed,
    Object? auxilioGasolina = freezed,
    Object? auxilioBateria = freezed,
  }) {
    return _then(_$BaseRatesImpl(
      servicioGruaKm: freezed == servicioGruaKm
          ? _value.servicioGruaKm
          : servicioGruaKm // ignore: cast_nullable_to_non_nullable
              as double?,
      auxilioGasolina: freezed == auxilioGasolina
          ? _value.auxilioGasolina
          : auxilioGasolina // ignore: cast_nullable_to_non_nullable
              as double?,
      auxilioBateria: freezed == auxilioBateria
          ? _value.auxilioBateria
          : auxilioBateria // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseRatesImpl implements _BaseRates {
  const _$BaseRatesImpl(
      {@JsonKey(name: 'servicio_grua_km') this.servicioGruaKm,
      @JsonKey(name: 'auxilio_gasolina') this.auxilioGasolina,
      @JsonKey(name: 'auxilio_bateria') this.auxilioBateria});

  factory _$BaseRatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseRatesImplFromJson(json);

// CORREGIDO: Usar lowerCamelCase y JsonKey.
  @override
  @JsonKey(name: 'servicio_grua_km')
  final double? servicioGruaKm;
  @override
  @JsonKey(name: 'auxilio_gasolina')
  final double? auxilioGasolina;
  @override
  @JsonKey(name: 'auxilio_bateria')
  final double? auxilioBateria;

  @override
  String toString() {
    return 'BaseRates(servicioGruaKm: $servicioGruaKm, auxilioGasolina: $auxilioGasolina, auxilioBateria: $auxilioBateria)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseRatesImpl &&
            (identical(other.servicioGruaKm, servicioGruaKm) ||
                other.servicioGruaKm == servicioGruaKm) &&
            (identical(other.auxilioGasolina, auxilioGasolina) ||
                other.auxilioGasolina == auxilioGasolina) &&
            (identical(other.auxilioBateria, auxilioBateria) ||
                other.auxilioBateria == auxilioBateria));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, servicioGruaKm, auxilioGasolina, auxilioBateria);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseRatesImplCopyWith<_$BaseRatesImpl> get copyWith =>
      __$$BaseRatesImplCopyWithImpl<_$BaseRatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseRatesImplToJson(
      this,
    );
  }
}

abstract class _BaseRates implements BaseRates {
  const factory _BaseRates(
          {@JsonKey(name: 'servicio_grua_km') final double? servicioGruaKm,
          @JsonKey(name: 'auxilio_gasolina') final double? auxilioGasolina,
          @JsonKey(name: 'auxilio_bateria') final double? auxilioBateria}) =
      _$BaseRatesImpl;

  factory _BaseRates.fromJson(Map<String, dynamic> json) =
      _$BaseRatesImpl.fromJson;

  @override // CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'servicio_grua_km')
  double? get servicioGruaKm;
  @override
  @JsonKey(name: 'auxilio_gasolina')
  double? get auxilioGasolina;
  @override
  @JsonKey(name: 'auxilio_bateria')
  double? get auxilioBateria;
  @override
  @JsonKey(ignore: true)
  _$$BaseRatesImplCopyWith<_$BaseRatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Surcharges _$SurchargesFromJson(Map<String, dynamic> json) {
  return _Surcharges.fromJson(json);
}

/// @nodoc
mixin _$Surcharges {
// CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'vehiculo_blindado')
  double? get vehiculoBlindado => throw _privateConstructorUsedError;
  double? get sotano => throw _privateConstructorUsedError;
  @JsonKey(name: 'carga_pesada')
  double? get cargaPesada => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurchargesCopyWith<Surcharges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurchargesCopyWith<$Res> {
  factory $SurchargesCopyWith(
          Surcharges value, $Res Function(Surcharges) then) =
      _$SurchargesCopyWithImpl<$Res, Surcharges>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vehiculo_blindado') double? vehiculoBlindado,
      double? sotano,
      @JsonKey(name: 'carga_pesada') double? cargaPesada});
}

/// @nodoc
class _$SurchargesCopyWithImpl<$Res, $Val extends Surcharges>
    implements $SurchargesCopyWith<$Res> {
  _$SurchargesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehiculoBlindado = freezed,
    Object? sotano = freezed,
    Object? cargaPesada = freezed,
  }) {
    return _then(_value.copyWith(
      vehiculoBlindado: freezed == vehiculoBlindado
          ? _value.vehiculoBlindado
          : vehiculoBlindado // ignore: cast_nullable_to_non_nullable
              as double?,
      sotano: freezed == sotano
          ? _value.sotano
          : sotano // ignore: cast_nullable_to_non_nullable
              as double?,
      cargaPesada: freezed == cargaPesada
          ? _value.cargaPesada
          : cargaPesada // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SurchargesImplCopyWith<$Res>
    implements $SurchargesCopyWith<$Res> {
  factory _$$SurchargesImplCopyWith(
          _$SurchargesImpl value, $Res Function(_$SurchargesImpl) then) =
      __$$SurchargesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vehiculo_blindado') double? vehiculoBlindado,
      double? sotano,
      @JsonKey(name: 'carga_pesada') double? cargaPesada});
}

/// @nodoc
class __$$SurchargesImplCopyWithImpl<$Res>
    extends _$SurchargesCopyWithImpl<$Res, _$SurchargesImpl>
    implements _$$SurchargesImplCopyWith<$Res> {
  __$$SurchargesImplCopyWithImpl(
      _$SurchargesImpl _value, $Res Function(_$SurchargesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehiculoBlindado = freezed,
    Object? sotano = freezed,
    Object? cargaPesada = freezed,
  }) {
    return _then(_$SurchargesImpl(
      vehiculoBlindado: freezed == vehiculoBlindado
          ? _value.vehiculoBlindado
          : vehiculoBlindado // ignore: cast_nullable_to_non_nullable
              as double?,
      sotano: freezed == sotano
          ? _value.sotano
          : sotano // ignore: cast_nullable_to_non_nullable
              as double?,
      cargaPesada: freezed == cargaPesada
          ? _value.cargaPesada
          : cargaPesada // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SurchargesImpl implements _Surcharges {
  const _$SurchargesImpl(
      {@JsonKey(name: 'vehiculo_blindado') this.vehiculoBlindado,
      this.sotano,
      @JsonKey(name: 'carga_pesada') this.cargaPesada});

  factory _$SurchargesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SurchargesImplFromJson(json);

// CORREGIDO: Usar lowerCamelCase y JsonKey.
  @override
  @JsonKey(name: 'vehiculo_blindado')
  final double? vehiculoBlindado;
  @override
  final double? sotano;
  @override
  @JsonKey(name: 'carga_pesada')
  final double? cargaPesada;

  @override
  String toString() {
    return 'Surcharges(vehiculoBlindado: $vehiculoBlindado, sotano: $sotano, cargaPesada: $cargaPesada)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurchargesImpl &&
            (identical(other.vehiculoBlindado, vehiculoBlindado) ||
                other.vehiculoBlindado == vehiculoBlindado) &&
            (identical(other.sotano, sotano) || other.sotano == sotano) &&
            (identical(other.cargaPesada, cargaPesada) ||
                other.cargaPesada == cargaPesada));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, vehiculoBlindado, sotano, cargaPesada);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurchargesImplCopyWith<_$SurchargesImpl> get copyWith =>
      __$$SurchargesImplCopyWithImpl<_$SurchargesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SurchargesImplToJson(
      this,
    );
  }
}

abstract class _Surcharges implements Surcharges {
  const factory _Surcharges(
          {@JsonKey(name: 'vehiculo_blindado') final double? vehiculoBlindado,
          final double? sotano,
          @JsonKey(name: 'carga_pesada') final double? cargaPesada}) =
      _$SurchargesImpl;

  factory _Surcharges.fromJson(Map<String, dynamic> json) =
      _$SurchargesImpl.fromJson;

  @override // CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'vehiculo_blindado')
  double? get vehiculoBlindado;
  @override
  double? get sotano;
  @override
  @JsonKey(name: 'carga_pesada')
  double? get cargaPesada;
  @override
  @JsonKey(ignore: true)
  _$$SurchargesImplCopyWith<_$SurchargesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NightSchedule _$NightScheduleFromJson(Map<String, dynamic> json) {
  return _NightSchedule.fromJson(json);
}

/// @nodoc
mixin _$NightSchedule {
  bool get isActive =>
      throw _privateConstructorUsedError; // CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'start_hour')
  int get startHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_hour')
  int get endHour => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate_multiplier')
  double get rateMultiplier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NightScheduleCopyWith<NightSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NightScheduleCopyWith<$Res> {
  factory $NightScheduleCopyWith(
          NightSchedule value, $Res Function(NightSchedule) then) =
      _$NightScheduleCopyWithImpl<$Res, NightSchedule>;
  @useResult
  $Res call(
      {bool isActive,
      @JsonKey(name: 'start_hour') int startHour,
      @JsonKey(name: 'end_hour') int endHour,
      @JsonKey(name: 'rate_multiplier') double rateMultiplier});
}

/// @nodoc
class _$NightScheduleCopyWithImpl<$Res, $Val extends NightSchedule>
    implements $NightScheduleCopyWith<$Res> {
  _$NightScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? startHour = null,
    Object? endHour = null,
    Object? rateMultiplier = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      rateMultiplier: null == rateMultiplier
          ? _value.rateMultiplier
          : rateMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NightScheduleImplCopyWith<$Res>
    implements $NightScheduleCopyWith<$Res> {
  factory _$$NightScheduleImplCopyWith(
          _$NightScheduleImpl value, $Res Function(_$NightScheduleImpl) then) =
      __$$NightScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isActive,
      @JsonKey(name: 'start_hour') int startHour,
      @JsonKey(name: 'end_hour') int endHour,
      @JsonKey(name: 'rate_multiplier') double rateMultiplier});
}

/// @nodoc
class __$$NightScheduleImplCopyWithImpl<$Res>
    extends _$NightScheduleCopyWithImpl<$Res, _$NightScheduleImpl>
    implements _$$NightScheduleImplCopyWith<$Res> {
  __$$NightScheduleImplCopyWithImpl(
      _$NightScheduleImpl _value, $Res Function(_$NightScheduleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
    Object? startHour = null,
    Object? endHour = null,
    Object? rateMultiplier = null,
  }) {
    return _then(_$NightScheduleImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      startHour: null == startHour
          ? _value.startHour
          : startHour // ignore: cast_nullable_to_non_nullable
              as int,
      endHour: null == endHour
          ? _value.endHour
          : endHour // ignore: cast_nullable_to_non_nullable
              as int,
      rateMultiplier: null == rateMultiplier
          ? _value.rateMultiplier
          : rateMultiplier // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NightScheduleImpl implements _NightSchedule {
  const _$NightScheduleImpl(
      {required this.isActive,
      @JsonKey(name: 'start_hour') required this.startHour,
      @JsonKey(name: 'end_hour') required this.endHour,
      @JsonKey(name: 'rate_multiplier') required this.rateMultiplier});

  factory _$NightScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$NightScheduleImplFromJson(json);

  @override
  final bool isActive;
// CORREGIDO: Usar lowerCamelCase y JsonKey.
  @override
  @JsonKey(name: 'start_hour')
  final int startHour;
  @override
  @JsonKey(name: 'end_hour')
  final int endHour;
  @override
  @JsonKey(name: 'rate_multiplier')
  final double rateMultiplier;

  @override
  String toString() {
    return 'NightSchedule(isActive: $isActive, startHour: $startHour, endHour: $endHour, rateMultiplier: $rateMultiplier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NightScheduleImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.startHour, startHour) ||
                other.startHour == startHour) &&
            (identical(other.endHour, endHour) || other.endHour == endHour) &&
            (identical(other.rateMultiplier, rateMultiplier) ||
                other.rateMultiplier == rateMultiplier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isActive, startHour, endHour, rateMultiplier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NightScheduleImplCopyWith<_$NightScheduleImpl> get copyWith =>
      __$$NightScheduleImplCopyWithImpl<_$NightScheduleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NightScheduleImplToJson(
      this,
    );
  }
}

abstract class _NightSchedule implements NightSchedule {
  const factory _NightSchedule(
      {required final bool isActive,
      @JsonKey(name: 'start_hour') required final int startHour,
      @JsonKey(name: 'end_hour') required final int endHour,
      @JsonKey(name: 'rate_multiplier')
      required final double rateMultiplier}) = _$NightScheduleImpl;

  factory _NightSchedule.fromJson(Map<String, dynamic> json) =
      _$NightScheduleImpl.fromJson;

  @override
  bool get isActive;
  @override // CORREGIDO: Usar lowerCamelCase y JsonKey.
  @JsonKey(name: 'start_hour')
  int get startHour;
  @override
  @JsonKey(name: 'end_hour')
  int get endHour;
  @override
  @JsonKey(name: 'rate_multiplier')
  double get rateMultiplier;
  @override
  @JsonKey(ignore: true)
  _$$NightScheduleImplCopyWith<_$NightScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
