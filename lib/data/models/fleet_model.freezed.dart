// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fleet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FleetModel _$FleetModelFromJson(Map<String, dynamic> json) {
  return _FleetModel.fromJson(json);
}

/// @nodoc
mixin _$FleetModel {
  String? get id => throw _privateConstructorUsedError;
  String get placa => throw _privateConstructorUsedError;
  String get modelo => throw _privateConstructorUsedError;
  String get tipo =>
      throw _privateConstructorUsedError; // Grúas de plataforma, etc.
  String get status =>
      throw _privateConstructorUsedError; // disponible, en servicio, en mantenimiento
  String? get currentGrueroId => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FleetModelCopyWith<FleetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FleetModelCopyWith<$Res> {
  factory $FleetModelCopyWith(
          FleetModel value, $Res Function(FleetModel) then) =
      _$FleetModelCopyWithImpl<$Res, FleetModel>;
  @useResult
  $Res call(
      {String? id,
      String placa,
      String modelo,
      String tipo,
      String status,
      String? currentGrueroId,
      String? photoUrl});
}

/// @nodoc
class _$FleetModelCopyWithImpl<$Res, $Val extends FleetModel>
    implements $FleetModelCopyWith<$Res> {
  _$FleetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? placa = null,
    Object? modelo = null,
    Object? tipo = null,
    Object? status = null,
    Object? currentGrueroId = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placa: null == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String,
      modelo: null == modelo
          ? _value.modelo
          : modelo // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currentGrueroId: freezed == currentGrueroId
          ? _value.currentGrueroId
          : currentGrueroId // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FleetModelImplCopyWith<$Res>
    implements $FleetModelCopyWith<$Res> {
  factory _$$FleetModelImplCopyWith(
          _$FleetModelImpl value, $Res Function(_$FleetModelImpl) then) =
      __$$FleetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String placa,
      String modelo,
      String tipo,
      String status,
      String? currentGrueroId,
      String? photoUrl});
}

/// @nodoc
class __$$FleetModelImplCopyWithImpl<$Res>
    extends _$FleetModelCopyWithImpl<$Res, _$FleetModelImpl>
    implements _$$FleetModelImplCopyWith<$Res> {
  __$$FleetModelImplCopyWithImpl(
      _$FleetModelImpl _value, $Res Function(_$FleetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? placa = null,
    Object? modelo = null,
    Object? tipo = null,
    Object? status = null,
    Object? currentGrueroId = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$FleetModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      placa: null == placa
          ? _value.placa
          : placa // ignore: cast_nullable_to_non_nullable
              as String,
      modelo: null == modelo
          ? _value.modelo
          : modelo // ignore: cast_nullable_to_non_nullable
              as String,
      tipo: null == tipo
          ? _value.tipo
          : tipo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currentGrueroId: freezed == currentGrueroId
          ? _value.currentGrueroId
          : currentGrueroId // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FleetModelImpl implements _FleetModel {
  const _$FleetModelImpl(
      {this.id,
      required this.placa,
      required this.modelo,
      required this.tipo,
      required this.status,
      this.currentGrueroId,
      this.photoUrl});

  factory _$FleetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FleetModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String placa;
  @override
  final String modelo;
  @override
  final String tipo;
// Grúas de plataforma, etc.
  @override
  final String status;
// disponible, en servicio, en mantenimiento
  @override
  final String? currentGrueroId;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'FleetModel(id: $id, placa: $placa, modelo: $modelo, tipo: $tipo, status: $status, currentGrueroId: $currentGrueroId, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FleetModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.placa, placa) || other.placa == placa) &&
            (identical(other.modelo, modelo) || other.modelo == modelo) &&
            (identical(other.tipo, tipo) || other.tipo == tipo) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentGrueroId, currentGrueroId) ||
                other.currentGrueroId == currentGrueroId) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, placa, modelo, tipo, status, currentGrueroId, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FleetModelImplCopyWith<_$FleetModelImpl> get copyWith =>
      __$$FleetModelImplCopyWithImpl<_$FleetModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FleetModelImplToJson(
      this,
    );
  }
}

abstract class _FleetModel implements FleetModel {
  const factory _FleetModel(
      {final String? id,
      required final String placa,
      required final String modelo,
      required final String tipo,
      required final String status,
      final String? currentGrueroId,
      final String? photoUrl}) = _$FleetModelImpl;

  factory _FleetModel.fromJson(Map<String, dynamic> json) =
      _$FleetModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get placa;
  @override
  String get modelo;
  @override
  String get tipo;
  @override // Grúas de plataforma, etc.
  String get status;
  @override // disponible, en servicio, en mantenimiento
  String? get currentGrueroId;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$FleetModelImplCopyWith<_$FleetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
