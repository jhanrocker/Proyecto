// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'directions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Directions {
  LatLngBounds get bounds => throw _privateConstructorUsedError;
  List<LatLng> get polylinePoints => throw _privateConstructorUsedError;
  String get totalDistance => throw _privateConstructorUsedError;
  String get totalDuration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DirectionsCopyWith<Directions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectionsCopyWith<$Res> {
  factory $DirectionsCopyWith(
          Directions value, $Res Function(Directions) then) =
      _$DirectionsCopyWithImpl<$Res, Directions>;
  @useResult
  $Res call(
      {LatLngBounds bounds,
      List<LatLng> polylinePoints,
      String totalDistance,
      String totalDuration});
}

/// @nodoc
class _$DirectionsCopyWithImpl<$Res, $Val extends Directions>
    implements $DirectionsCopyWith<$Res> {
  _$DirectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_value.copyWith(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _value.polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DirectionsImplCopyWith<$Res>
    implements $DirectionsCopyWith<$Res> {
  factory _$$DirectionsImplCopyWith(
          _$DirectionsImpl value, $Res Function(_$DirectionsImpl) then) =
      __$$DirectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLngBounds bounds,
      List<LatLng> polylinePoints,
      String totalDistance,
      String totalDuration});
}

/// @nodoc
class __$$DirectionsImplCopyWithImpl<$Res>
    extends _$DirectionsCopyWithImpl<$Res, _$DirectionsImpl>
    implements _$$DirectionsImplCopyWith<$Res> {
  __$$DirectionsImplCopyWithImpl(
      _$DirectionsImpl _value, $Res Function(_$DirectionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bounds = null,
    Object? polylinePoints = null,
    Object? totalDistance = null,
    Object? totalDuration = null,
  }) {
    return _then(_$DirectionsImpl(
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      polylinePoints: null == polylinePoints
          ? _value._polylinePoints
          : polylinePoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      totalDistance: null == totalDistance
          ? _value.totalDistance
          : totalDistance // ignore: cast_nullable_to_non_nullable
              as String,
      totalDuration: null == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectionsImpl implements _Directions {
  const _$DirectionsImpl(
      {required this.bounds,
      required final List<LatLng> polylinePoints,
      required this.totalDistance,
      required this.totalDuration})
      : _polylinePoints = polylinePoints;

  @override
  final LatLngBounds bounds;
  final List<LatLng> _polylinePoints;
  @override
  List<LatLng> get polylinePoints {
    if (_polylinePoints is EqualUnmodifiableListView) return _polylinePoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polylinePoints);
  }

  @override
  final String totalDistance;
  @override
  final String totalDuration;

  @override
  String toString() {
    return 'Directions(bounds: $bounds, polylinePoints: $polylinePoints, totalDistance: $totalDistance, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectionsImpl &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            const DeepCollectionEquality()
                .equals(other._polylinePoints, _polylinePoints) &&
            (identical(other.totalDistance, totalDistance) ||
                other.totalDistance == totalDistance) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bounds,
      const DeepCollectionEquality().hash(_polylinePoints),
      totalDistance,
      totalDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectionsImplCopyWith<_$DirectionsImpl> get copyWith =>
      __$$DirectionsImplCopyWithImpl<_$DirectionsImpl>(this, _$identity);
}

abstract class _Directions implements Directions {
  const factory _Directions(
      {required final LatLngBounds bounds,
      required final List<LatLng> polylinePoints,
      required final String totalDistance,
      required final String totalDuration}) = _$DirectionsImpl;

  @override
  LatLngBounds get bounds;
  @override
  List<LatLng> get polylinePoints;
  @override
  String get totalDistance;
  @override
  String get totalDuration;
  @override
  @JsonKey(ignore: true)
  _$$DirectionsImplCopyWith<_$DirectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
