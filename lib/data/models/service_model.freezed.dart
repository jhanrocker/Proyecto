// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) {
  return _ServiceModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get serviceKey =>
      throw _privateConstructorUsedError; // grua, gasolina, bateria
  bool get requiresDestination => throw _privateConstructorUsedError;
  List<String> get applicableVehicleTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceModelCopyWith<ServiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceModelCopyWith<$Res> {
  factory $ServiceModelCopyWith(
          ServiceModel value, $Res Function(ServiceModel) then) =
      _$ServiceModelCopyWithImpl<$Res, ServiceModel>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      bool isActive,
      String serviceKey,
      bool requiresDestination,
      List<String> applicableVehicleTypes});
}

/// @nodoc
class _$ServiceModelCopyWithImpl<$Res, $Val extends ServiceModel>
    implements $ServiceModelCopyWith<$Res> {
  _$ServiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? serviceKey = null,
    Object? requiresDestination = null,
    Object? applicableVehicleTypes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceKey: null == serviceKey
          ? _value.serviceKey
          : serviceKey // ignore: cast_nullable_to_non_nullable
              as String,
      requiresDestination: null == requiresDestination
          ? _value.requiresDestination
          : requiresDestination // ignore: cast_nullable_to_non_nullable
              as bool,
      applicableVehicleTypes: null == applicableVehicleTypes
          ? _value.applicableVehicleTypes
          : applicableVehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceModelImplCopyWith<$Res>
    implements $ServiceModelCopyWith<$Res> {
  factory _$$ServiceModelImplCopyWith(
          _$ServiceModelImpl value, $Res Function(_$ServiceModelImpl) then) =
      __$$ServiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      bool isActive,
      String serviceKey,
      bool requiresDestination,
      List<String> applicableVehicleTypes});
}

/// @nodoc
class __$$ServiceModelImplCopyWithImpl<$Res>
    extends _$ServiceModelCopyWithImpl<$Res, _$ServiceModelImpl>
    implements _$$ServiceModelImplCopyWith<$Res> {
  __$$ServiceModelImplCopyWithImpl(
      _$ServiceModelImpl _value, $Res Function(_$ServiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? isActive = null,
    Object? serviceKey = null,
    Object? requiresDestination = null,
    Object? applicableVehicleTypes = null,
  }) {
    return _then(_$ServiceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      serviceKey: null == serviceKey
          ? _value.serviceKey
          : serviceKey // ignore: cast_nullable_to_non_nullable
              as String,
      requiresDestination: null == requiresDestination
          ? _value.requiresDestination
          : requiresDestination // ignore: cast_nullable_to_non_nullable
              as bool,
      applicableVehicleTypes: null == applicableVehicleTypes
          ? _value._applicableVehicleTypes
          : applicableVehicleTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceModelImpl implements _ServiceModel {
  const _$ServiceModelImpl(
      {this.id,
      required this.name,
      required this.description,
      required this.isActive,
      required this.serviceKey,
      required this.requiresDestination,
      required final List<String> applicableVehicleTypes})
      : _applicableVehicleTypes = applicableVehicleTypes;

  factory _$ServiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final bool isActive;
  @override
  final String serviceKey;
// grua, gasolina, bateria
  @override
  final bool requiresDestination;
  final List<String> _applicableVehicleTypes;
  @override
  List<String> get applicableVehicleTypes {
    if (_applicableVehicleTypes is EqualUnmodifiableListView)
      return _applicableVehicleTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_applicableVehicleTypes);
  }

  @override
  String toString() {
    return 'ServiceModel(id: $id, name: $name, description: $description, isActive: $isActive, serviceKey: $serviceKey, requiresDestination: $requiresDestination, applicableVehicleTypes: $applicableVehicleTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.serviceKey, serviceKey) ||
                other.serviceKey == serviceKey) &&
            (identical(other.requiresDestination, requiresDestination) ||
                other.requiresDestination == requiresDestination) &&
            const DeepCollectionEquality().equals(
                other._applicableVehicleTypes, _applicableVehicleTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      isActive,
      serviceKey,
      requiresDestination,
      const DeepCollectionEquality().hash(_applicableVehicleTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      __$$ServiceModelImplCopyWithImpl<_$ServiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceModel implements ServiceModel {
  const factory _ServiceModel(
      {final String? id,
      required final String name,
      required final String description,
      required final bool isActive,
      required final String serviceKey,
      required final bool requiresDestination,
      required final List<String> applicableVehicleTypes}) = _$ServiceModelImpl;

  factory _ServiceModel.fromJson(Map<String, dynamic> json) =
      _$ServiceModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  String get serviceKey;
  @override // grua, gasolina, bateria
  bool get requiresDestination;
  @override
  List<String> get applicableVehicleTypes;
  @override
  @JsonKey(ignore: true)
  _$$ServiceModelImplCopyWith<_$ServiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
