// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankModel _$BankModelFromJson(Map<String, dynamic> json) {
  return _BankModel.fromJson(json);
}

/// @nodoc
mixin _$BankModel {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankModelCopyWith<BankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankModelCopyWith<$Res> {
  factory $BankModelCopyWith(BankModel value, $Res Function(BankModel) then) =
      _$BankModelCopyWithImpl<$Res, BankModel>;
  @useResult
  $Res call({String? id, String name, bool isActive, String country});
}

/// @nodoc
class _$BankModelCopyWithImpl<$Res, $Val extends BankModel>
    implements $BankModelCopyWith<$Res> {
  _$BankModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? isActive = null,
    Object? country = null,
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
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankModelImplCopyWith<$Res>
    implements $BankModelCopyWith<$Res> {
  factory _$$BankModelImplCopyWith(
          _$BankModelImpl value, $Res Function(_$BankModelImpl) then) =
      __$$BankModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name, bool isActive, String country});
}

/// @nodoc
class __$$BankModelImplCopyWithImpl<$Res>
    extends _$BankModelCopyWithImpl<$Res, _$BankModelImpl>
    implements _$$BankModelImplCopyWith<$Res> {
  __$$BankModelImplCopyWithImpl(
      _$BankModelImpl _value, $Res Function(_$BankModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? isActive = null,
    Object? country = null,
  }) {
    return _then(_$BankModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankModelImpl implements _BankModel {
  const _$BankModelImpl(
      {this.id,
      required this.name,
      required this.isActive,
      required this.country});

  factory _$BankModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final bool isActive;
  @override
  final String country;

  @override
  String toString() {
    return 'BankModel(id: $id, name: $name, isActive: $isActive, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isActive, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      __$$BankModelImplCopyWithImpl<_$BankModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankModelImplToJson(
      this,
    );
  }
}

abstract class _BankModel implements BankModel {
  const factory _BankModel(
      {final String? id,
      required final String name,
      required final bool isActive,
      required final String country}) = _$BankModelImpl;

  factory _BankModel.fromJson(Map<String, dynamic> json) =
      _$BankModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  bool get isActive;
  @override
  String get country;
  @override
  @JsonKey(ignore: true)
  _$$BankModelImplCopyWith<_$BankModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
