// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get cedula => throw _privateConstructorUsedError;
  String? get photoUrl =>
      throw _privateConstructorUsedError; // CORREGIDO: Aplicamos el convertidor aquí
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String? get codigoEmpleado => throw _privateConstructorUsedError;
  String? get employeeStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String fullName,
      String email,
      String phone,
      String cedula,
      String? photoUrl,
      @TimestampConverter() Timestamp createdAt,
      String role,
      String? codigoEmpleado,
      String? employeeStatus});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phone = null,
    Object? cedula = null,
    Object? photoUrl = freezed,
    Object? createdAt = null,
    Object? role = null,
    Object? codigoEmpleado = freezed,
    Object? employeeStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      cedula: null == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      codigoEmpleado: freezed == codigoEmpleado
          ? _value.codigoEmpleado
          : codigoEmpleado // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeStatus: freezed == employeeStatus
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullName,
      String email,
      String phone,
      String cedula,
      String? photoUrl,
      @TimestampConverter() Timestamp createdAt,
      String role,
      String? codigoEmpleado,
      String? employeeStatus});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? email = null,
    Object? phone = null,
    Object? cedula = null,
    Object? photoUrl = freezed,
    Object? createdAt = null,
    Object? role = null,
    Object? codigoEmpleado = freezed,
    Object? employeeStatus = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      cedula: null == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      codigoEmpleado: freezed == codigoEmpleado
          ? _value.codigoEmpleado
          : codigoEmpleado // ignore: cast_nullable_to_non_nullable
              as String?,
      employeeStatus: freezed == employeeStatus
          ? _value.employeeStatus
          : employeeStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.fullName,
      required this.email,
      required this.phone,
      required this.cedula,
      this.photoUrl,
      @TimestampConverter() required this.createdAt,
      required this.role,
      this.codigoEmpleado,
      this.employeeStatus = AppConstants.employeeStatusDisponible});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final String cedula;
  @override
  final String? photoUrl;
// CORREGIDO: Aplicamos el convertidor aquí
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final String role;
  @override
  final String? codigoEmpleado;
  @override
  @JsonKey()
  final String? employeeStatus;

  @override
  String toString() {
    return 'UserModel(id: $id, fullName: $fullName, email: $email, phone: $phone, cedula: $cedula, photoUrl: $photoUrl, createdAt: $createdAt, role: $role, codigoEmpleado: $codigoEmpleado, employeeStatus: $employeeStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cedula, cedula) || other.cedula == cedula) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.codigoEmpleado, codigoEmpleado) ||
                other.codigoEmpleado == codigoEmpleado) &&
            (identical(other.employeeStatus, employeeStatus) ||
                other.employeeStatus == employeeStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, email, phone,
      cedula, photoUrl, createdAt, role, codigoEmpleado, employeeStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String fullName,
      required final String email,
      required final String phone,
      required final String cedula,
      final String? photoUrl,
      @TimestampConverter() required final Timestamp createdAt,
      required final String role,
      final String? codigoEmpleado,
      final String? employeeStatus}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get phone;
  @override
  String get cedula;
  @override
  String? get photoUrl;
  @override // CORREGIDO: Aplicamos el convertidor aquí
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  String get role;
  @override
  String? get codigoEmpleado;
  @override
  String? get employeeStatus;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
