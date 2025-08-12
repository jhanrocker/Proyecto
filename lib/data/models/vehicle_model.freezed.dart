// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleModel _$VehicleModelFromJson(Map<String, dynamic> json) {
  return _VehicleModel.fromJson(json);
}

/// @nodoc
mixin _$VehicleModel {
  String? get id =>
      throw _privateConstructorUsedError; // ID del documento en la subcolección
  String get marca => throw _privateConstructorUsedError;
  String get modelo => throw _privateConstructorUsedError;
  int get anio => throw _privateConstructorUsedError;
  String get placa => throw _privateConstructorUsedError;
  bool get esDueno => throw _privateConstructorUsedError;
  String? get carnetCirculacionUrl => throw _privateConstructorUsedError;
  String? get cedulaUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleModelCopyWith<VehicleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleModelCopyWith<$Res> {
  factory $VehicleModelCopyWith(
          VehicleModel value, $Res Function(VehicleModel) then) =
      _$VehicleModelCopyWithImpl<$Res, VehicleModel>;
  @useResult
  $Res call(
      {String? id,
      String marca,
      String modelo,
      int anio,
      String placa,
      bool esDueno,
      String? carnetCirculacionUrl,
      String? cedulaUrl});
}

/// @nodoc
class _$VehicleModelCopyWithImpl<$Res, $Val extends VehicleModel>
    implements $VehicleModelCopyWith<$Res> {
  _$VehicleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? marca = null,
    Object? modelo = null,
    Object? anio = null,
    Object? placa = null,
    Object? esDueno = null,
    Object? carnetCirculacionUrl = freezed,
    Object? cedulaUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      marca: null == marca
          ? _value.marca
          : marca // ignore: cast_nullable_to_non_nullable
              as String,
      modelo: null == modelo
          ? _value.modelo
          : modelo // ignore: cast_nullable_to_non_nullable
              as String,
      anio: null == anio
          ? _value.anio
          : anio // ignore: cast_nullable_to_non_nullable
              as int,
      placa: null == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String,
      esDueno: null == esDueno
          ? _value.esDueno
          : esDueno // ignore: cast_nullable_to_non_nullable
              as bool,
      carnetCirculacionUrl: freezed == carnetCirculacionUrl
          ? _value.carnetCirculacionUrl
          : carnetCirculacionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cedulaUrl: freezed == cedulaUrl
          ? _value.cedulaUrl
          : cedulaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleModelImplCopyWith<$Res>
    implements $VehicleModelCopyWith<$Res> {
  factory _$$VehicleModelImplCopyWith(
          _$VehicleModelImpl value, $Res Function(_$VehicleModelImpl) then) =
      __$$VehicleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String marca,
      String modelo,
      int anio,
      String placa,
      bool esDueno,
      String? carnetCirculacionUrl,
      String? cedulaUrl});
}

/// @nodoc
class __$$VehicleModelImplCopyWithImpl<$Res>
    extends _$VehicleModelCopyWithImpl<$Res, _$VehicleModelImpl>
    implements _$$VehicleModelImplCopyWith<$Res> {
  __$$VehicleModelImplCopyWithImpl(
      _$VehicleModelImpl _value, $Res Function(_$VehicleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? marca = null,
    Object? modelo = null,
    Object? anio = null,
    Object? placa = null,
    Object? esDueno = null,
    Object? carnetCirculacionUrl = freezed,
    Object? cedulaUrl = freezed,
  }) {
    return _then(_$VehicleModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      marca: null == marca
          ? _value.marca
          : marca // ignore: cast_nullable_to_non_nullable
              as String,
      modelo: null == modelo
          ? _value.modelo
          : modelo // ignore: cast_nullable_to_non_nullable
              as String,
      anio: null == anio
          ? _value.anio
          : anio // ignore: cast_nullable_to_non_nullable
              as int,
      placa: null == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String,
      esDueno: null == esDueno
          ? _value.esDueno
          : esDueno // ignore: cast_nullable_to_non_nullable
              as bool,
      carnetCirculacionUrl: freezed == carnetCirculacionUrl
          ? _value.carnetCirculacionUrl
          : carnetCirculacionUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cedulaUrl: freezed == cedulaUrl
          ? _value.cedulaUrl
          : cedulaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleModelImpl implements _VehicleModel {
  const _$VehicleModelImpl(
      {this.id,
      required this.marca,
      required this.modelo,
      required this.anio,
      required this.placa,
      required this.esDueno,
      this.carnetCirculacionUrl,
      this.cedulaUrl});

  factory _$VehicleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleModelImplFromJson(json);

  @override
  final String? id;
// ID del documento en la subcolección
  @override
  final String marca;
  @override
  final String modelo;
  @override
  final int anio;
  @override
  final String placa;
  @override
  final bool esDueno;
  @override
  final String? carnetCirculacionUrl;
  @override
  final String? cedulaUrl;

  @override
  String toString() {
    return 'VehicleModel(id: $id, marca: $marca, modelo: $modelo, anio: $anio, placa: $placa, esDueno: $esDueno, carnetCirculacionUrl: $carnetCirculacionUrl, cedulaUrl: $cedulaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.marca, marca) || other.marca == marca) &&
            (identical(other.modelo, modelo) || other.modelo == modelo) &&
            (identical(other.anio, anio) || other.anio == anio) &&
            (identical(other.placa, placa) || other.placa == placa) &&
            (identical(other.esDueno, esDueno) || other.esDueno == esDueno) &&
            (identical(other.carnetCirculacionUrl, carnetCirculacionUrl) ||
                other.carnetCirculacionUrl == carnetCirculacionUrl) &&
            (identical(other.cedulaUrl, cedulaUrl) ||
                other.cedulaUrl == cedulaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, marca, modelo, anio, placa,
      esDueno, carnetCirculacionUrl, cedulaUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleModelImplCopyWith<_$VehicleModelImpl> get copyWith =>
      __$$VehicleModelImplCopyWithImpl<_$VehicleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleModelImplToJson(
      this,
    );
  }
}

abstract class _VehicleModel implements VehicleModel {
  const factory _VehicleModel(
      {final String? id,
      required final String marca,
      required final String modelo,
      required final int anio,
      required final String placa,
      required final bool esDueno,
      final String? carnetCirculacionUrl,
      final String? cedulaUrl}) = _$VehicleModelImpl;

  factory _VehicleModel.fromJson(Map<String, dynamic> json) =
      _$VehicleModelImpl.fromJson;

  @override
  String? get id;
  @override // ID del documento en la subcolección
  String get marca;
  @override
  String get modelo;
  @override
  int get anio;
  @override
  String get placa;
  @override
  bool get esDueno;
  @override
  String? get carnetCirculacionUrl;
  @override
  String? get cedulaUrl;
  @override
  @JsonKey(ignore: true)
  _$$VehicleModelImplCopyWith<_$VehicleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
