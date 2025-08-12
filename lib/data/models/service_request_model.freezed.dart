// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceRequestModel _$ServiceRequestModelFromJson(Map<String, dynamic> json) {
  return _ServiceRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceRequestModel {
  String? get id => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientName =>
      throw _privateConstructorUsedError; // CORREGIDO: Aplicamos el convertidor aquí
  @TimestampConverter()
  Timestamp get createdAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get requestOrigin => throw _privateConstructorUsedError;
  double? get precioFinal => throw _privateConstructorUsedError;
  String? get assignedGrueroId => throw _privateConstructorUsedError;
  String? get assignedVehicleId => throw _privateConstructorUsedError;
  String? get distanciaKm =>
      throw _privateConstructorUsedError; // Usamos los convertidores para los GeoPoints
  @GeoPointConverter()
  GeoPoint get originLocation => throw _privateConstructorUsedError;
  String get originAddress => throw _privateConstructorUsedError;
  @NullableGeoPointConverter()
  GeoPoint? get destinationLocation => throw _privateConstructorUsedError;
  String? get destinationAddress =>
      throw _privateConstructorUsedError; // Modelos anidados
  InsuredClientInfo? get insuredClientInfo =>
      throw _privateConstructorUsedError;
  PaymentDetails? get paymentDetails =>
      throw _privateConstructorUsedError; // Mapas dinámicos
  Map<String, dynamic>? get serviceSpecificDetails =>
      throw _privateConstructorUsedError;
  Map<String, String>? get driverMediaUrls =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceRequestModelCopyWith<ServiceRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestModelCopyWith<$Res> {
  factory $ServiceRequestModelCopyWith(
          ServiceRequestModel value, $Res Function(ServiceRequestModel) then) =
      _$ServiceRequestModelCopyWithImpl<$Res, ServiceRequestModel>;
  @useResult
  $Res call(
      {String? id,
      String clientId,
      String clientName,
      @TimestampConverter() Timestamp createdAt,
      String status,
      String requestOrigin,
      double? precioFinal,
      String? assignedGrueroId,
      String? assignedVehicleId,
      String? distanciaKm,
      @GeoPointConverter() GeoPoint originLocation,
      String originAddress,
      @NullableGeoPointConverter() GeoPoint? destinationLocation,
      String? destinationAddress,
      InsuredClientInfo? insuredClientInfo,
      PaymentDetails? paymentDetails,
      Map<String, dynamic>? serviceSpecificDetails,
      Map<String, String>? driverMediaUrls});

  $InsuredClientInfoCopyWith<$Res>? get insuredClientInfo;
  $PaymentDetailsCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class _$ServiceRequestModelCopyWithImpl<$Res, $Val extends ServiceRequestModel>
    implements $ServiceRequestModelCopyWith<$Res> {
  _$ServiceRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = null,
    Object? clientName = null,
    Object? createdAt = null,
    Object? status = null,
    Object? requestOrigin = null,
    Object? precioFinal = freezed,
    Object? assignedGrueroId = freezed,
    Object? assignedVehicleId = freezed,
    Object? distanciaKm = freezed,
    Object? originLocation = null,
    Object? originAddress = null,
    Object? destinationLocation = freezed,
    Object? destinationAddress = freezed,
    Object? insuredClientInfo = freezed,
    Object? paymentDetails = freezed,
    Object? serviceSpecificDetails = freezed,
    Object? driverMediaUrls = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestOrigin: null == requestOrigin
          ? _value.requestOrigin
          : requestOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      precioFinal: freezed == precioFinal
          ? _value.precioFinal
          : precioFinal // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedGrueroId: freezed == assignedGrueroId
          ? _value.assignedGrueroId
          : assignedGrueroId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedVehicleId: freezed == assignedVehicleId
          ? _value.assignedVehicleId
          : assignedVehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      distanciaKm: freezed == distanciaKm
          ? _value.distanciaKm
          : distanciaKm // ignore: cast_nullable_to_non_nullable
              as String?,
      originLocation: null == originLocation
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      originAddress: null == originAddress
          ? _value.originAddress
          : originAddress // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredClientInfo: freezed == insuredClientInfo
          ? _value.insuredClientInfo
          : insuredClientInfo // ignore: cast_nullable_to_non_nullable
              as InsuredClientInfo?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetails?,
      serviceSpecificDetails: freezed == serviceSpecificDetails
          ? _value.serviceSpecificDetails
          : serviceSpecificDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      driverMediaUrls: freezed == driverMediaUrls
          ? _value.driverMediaUrls
          : driverMediaUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InsuredClientInfoCopyWith<$Res>? get insuredClientInfo {
    if (_value.insuredClientInfo == null) {
      return null;
    }

    return $InsuredClientInfoCopyWith<$Res>(_value.insuredClientInfo!, (value) {
      return _then(_value.copyWith(insuredClientInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDetailsCopyWith<$Res>? get paymentDetails {
    if (_value.paymentDetails == null) {
      return null;
    }

    return $PaymentDetailsCopyWith<$Res>(_value.paymentDetails!, (value) {
      return _then(_value.copyWith(paymentDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceRequestModelImplCopyWith<$Res>
    implements $ServiceRequestModelCopyWith<$Res> {
  factory _$$ServiceRequestModelImplCopyWith(_$ServiceRequestModelImpl value,
          $Res Function(_$ServiceRequestModelImpl) then) =
      __$$ServiceRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String clientId,
      String clientName,
      @TimestampConverter() Timestamp createdAt,
      String status,
      String requestOrigin,
      double? precioFinal,
      String? assignedGrueroId,
      String? assignedVehicleId,
      String? distanciaKm,
      @GeoPointConverter() GeoPoint originLocation,
      String originAddress,
      @NullableGeoPointConverter() GeoPoint? destinationLocation,
      String? destinationAddress,
      InsuredClientInfo? insuredClientInfo,
      PaymentDetails? paymentDetails,
      Map<String, dynamic>? serviceSpecificDetails,
      Map<String, String>? driverMediaUrls});

  @override
  $InsuredClientInfoCopyWith<$Res>? get insuredClientInfo;
  @override
  $PaymentDetailsCopyWith<$Res>? get paymentDetails;
}

/// @nodoc
class __$$ServiceRequestModelImplCopyWithImpl<$Res>
    extends _$ServiceRequestModelCopyWithImpl<$Res, _$ServiceRequestModelImpl>
    implements _$$ServiceRequestModelImplCopyWith<$Res> {
  __$$ServiceRequestModelImplCopyWithImpl(_$ServiceRequestModelImpl _value,
      $Res Function(_$ServiceRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? clientId = null,
    Object? clientName = null,
    Object? createdAt = null,
    Object? status = null,
    Object? requestOrigin = null,
    Object? precioFinal = freezed,
    Object? assignedGrueroId = freezed,
    Object? assignedVehicleId = freezed,
    Object? distanciaKm = freezed,
    Object? originLocation = null,
    Object? originAddress = null,
    Object? destinationLocation = freezed,
    Object? destinationAddress = freezed,
    Object? insuredClientInfo = freezed,
    Object? paymentDetails = freezed,
    Object? serviceSpecificDetails = freezed,
    Object? driverMediaUrls = freezed,
  }) {
    return _then(_$ServiceRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requestOrigin: null == requestOrigin
          ? _value.requestOrigin
          : requestOrigin // ignore: cast_nullable_to_non_nullable
              as String,
      precioFinal: freezed == precioFinal
          ? _value.precioFinal
          : precioFinal // ignore: cast_nullable_to_non_nullable
              as double?,
      assignedGrueroId: freezed == assignedGrueroId
          ? _value.assignedGrueroId
          : assignedGrueroId // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedVehicleId: freezed == assignedVehicleId
          ? _value.assignedVehicleId
          : assignedVehicleId // ignore: cast_nullable_to_non_nullable
              as String?,
      distanciaKm: freezed == distanciaKm
          ? _value.distanciaKm
          : distanciaKm // ignore: cast_nullable_to_non_nullable
              as String?,
      originLocation: null == originLocation
          ? _value.originLocation
          : originLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint,
      originAddress: null == originAddress
          ? _value.originAddress
          : originAddress // ignore: cast_nullable_to_non_nullable
              as String,
      destinationLocation: freezed == destinationLocation
          ? _value.destinationLocation
          : destinationLocation // ignore: cast_nullable_to_non_nullable
              as GeoPoint?,
      destinationAddress: freezed == destinationAddress
          ? _value.destinationAddress
          : destinationAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredClientInfo: freezed == insuredClientInfo
          ? _value.insuredClientInfo
          : insuredClientInfo // ignore: cast_nullable_to_non_nullable
              as InsuredClientInfo?,
      paymentDetails: freezed == paymentDetails
          ? _value.paymentDetails
          : paymentDetails // ignore: cast_nullable_to_non_nullable
              as PaymentDetails?,
      serviceSpecificDetails: freezed == serviceSpecificDetails
          ? _value._serviceSpecificDetails
          : serviceSpecificDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      driverMediaUrls: freezed == driverMediaUrls
          ? _value._driverMediaUrls
          : driverMediaUrls // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceRequestModelImpl implements _ServiceRequestModel {
  const _$ServiceRequestModelImpl(
      {this.id,
      required this.clientId,
      required this.clientName,
      @TimestampConverter() required this.createdAt,
      required this.status,
      required this.requestOrigin,
      this.precioFinal,
      this.assignedGrueroId,
      this.assignedVehicleId,
      this.distanciaKm,
      @GeoPointConverter() required this.originLocation,
      required this.originAddress,
      @NullableGeoPointConverter() this.destinationLocation,
      this.destinationAddress,
      this.insuredClientInfo,
      this.paymentDetails,
      final Map<String, dynamic>? serviceSpecificDetails,
      final Map<String, String>? driverMediaUrls})
      : _serviceSpecificDetails = serviceSpecificDetails,
        _driverMediaUrls = driverMediaUrls;

  factory _$ServiceRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceRequestModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String clientId;
  @override
  final String clientName;
// CORREGIDO: Aplicamos el convertidor aquí
  @override
  @TimestampConverter()
  final Timestamp createdAt;
  @override
  final String status;
  @override
  final String requestOrigin;
  @override
  final double? precioFinal;
  @override
  final String? assignedGrueroId;
  @override
  final String? assignedVehicleId;
  @override
  final String? distanciaKm;
// Usamos los convertidores para los GeoPoints
  @override
  @GeoPointConverter()
  final GeoPoint originLocation;
  @override
  final String originAddress;
  @override
  @NullableGeoPointConverter()
  final GeoPoint? destinationLocation;
  @override
  final String? destinationAddress;
// Modelos anidados
  @override
  final InsuredClientInfo? insuredClientInfo;
  @override
  final PaymentDetails? paymentDetails;
// Mapas dinámicos
  final Map<String, dynamic>? _serviceSpecificDetails;
// Mapas dinámicos
  @override
  Map<String, dynamic>? get serviceSpecificDetails {
    final value = _serviceSpecificDetails;
    if (value == null) return null;
    if (_serviceSpecificDetails is EqualUnmodifiableMapView)
      return _serviceSpecificDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _driverMediaUrls;
  @override
  Map<String, String>? get driverMediaUrls {
    final value = _driverMediaUrls;
    if (value == null) return null;
    if (_driverMediaUrls is EqualUnmodifiableMapView) return _driverMediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ServiceRequestModel(id: $id, clientId: $clientId, clientName: $clientName, createdAt: $createdAt, status: $status, requestOrigin: $requestOrigin, precioFinal: $precioFinal, assignedGrueroId: $assignedGrueroId, assignedVehicleId: $assignedVehicleId, distanciaKm: $distanciaKm, originLocation: $originLocation, originAddress: $originAddress, destinationLocation: $destinationLocation, destinationAddress: $destinationAddress, insuredClientInfo: $insuredClientInfo, paymentDetails: $paymentDetails, serviceSpecificDetails: $serviceSpecificDetails, driverMediaUrls: $driverMediaUrls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requestOrigin, requestOrigin) ||
                other.requestOrigin == requestOrigin) &&
            (identical(other.precioFinal, precioFinal) ||
                other.precioFinal == precioFinal) &&
            (identical(other.assignedGrueroId, assignedGrueroId) ||
                other.assignedGrueroId == assignedGrueroId) &&
            (identical(other.assignedVehicleId, assignedVehicleId) ||
                other.assignedVehicleId == assignedVehicleId) &&
            (identical(other.distanciaKm, distanciaKm) ||
                other.distanciaKm == distanciaKm) &&
            (identical(other.originLocation, originLocation) ||
                other.originLocation == originLocation) &&
            (identical(other.originAddress, originAddress) ||
                other.originAddress == originAddress) &&
            (identical(other.destinationLocation, destinationLocation) ||
                other.destinationLocation == destinationLocation) &&
            (identical(other.destinationAddress, destinationAddress) ||
                other.destinationAddress == destinationAddress) &&
            (identical(other.insuredClientInfo, insuredClientInfo) ||
                other.insuredClientInfo == insuredClientInfo) &&
            (identical(other.paymentDetails, paymentDetails) ||
                other.paymentDetails == paymentDetails) &&
            const DeepCollectionEquality().equals(
                other._serviceSpecificDetails, _serviceSpecificDetails) &&
            const DeepCollectionEquality()
                .equals(other._driverMediaUrls, _driverMediaUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      clientId,
      clientName,
      createdAt,
      status,
      requestOrigin,
      precioFinal,
      assignedGrueroId,
      assignedVehicleId,
      distanciaKm,
      originLocation,
      originAddress,
      destinationLocation,
      destinationAddress,
      insuredClientInfo,
      paymentDetails,
      const DeepCollectionEquality().hash(_serviceSpecificDetails),
      const DeepCollectionEquality().hash(_driverMediaUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      __$$ServiceRequestModelImplCopyWithImpl<_$ServiceRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceRequestModel implements ServiceRequestModel {
  const factory _ServiceRequestModel(
      {final String? id,
      required final String clientId,
      required final String clientName,
      @TimestampConverter() required final Timestamp createdAt,
      required final String status,
      required final String requestOrigin,
      final double? precioFinal,
      final String? assignedGrueroId,
      final String? assignedVehicleId,
      final String? distanciaKm,
      @GeoPointConverter() required final GeoPoint originLocation,
      required final String originAddress,
      @NullableGeoPointConverter() final GeoPoint? destinationLocation,
      final String? destinationAddress,
      final InsuredClientInfo? insuredClientInfo,
      final PaymentDetails? paymentDetails,
      final Map<String, dynamic>? serviceSpecificDetails,
      final Map<String, String>? driverMediaUrls}) = _$ServiceRequestModelImpl;

  factory _ServiceRequestModel.fromJson(Map<String, dynamic> json) =
      _$ServiceRequestModelImpl.fromJson;

  @override
  String? get id;
  @override
  String get clientId;
  @override
  String get clientName;
  @override // CORREGIDO: Aplicamos el convertidor aquí
  @TimestampConverter()
  Timestamp get createdAt;
  @override
  String get status;
  @override
  String get requestOrigin;
  @override
  double? get precioFinal;
  @override
  String? get assignedGrueroId;
  @override
  String? get assignedVehicleId;
  @override
  String? get distanciaKm;
  @override // Usamos los convertidores para los GeoPoints
  @GeoPointConverter()
  GeoPoint get originLocation;
  @override
  String get originAddress;
  @override
  @NullableGeoPointConverter()
  GeoPoint? get destinationLocation;
  @override
  String? get destinationAddress;
  @override // Modelos anidados
  InsuredClientInfo? get insuredClientInfo;
  @override
  PaymentDetails? get paymentDetails;
  @override // Mapas dinámicos
  Map<String, dynamic>? get serviceSpecificDetails;
  @override
  Map<String, String>? get driverMediaUrls;
  @override
  @JsonKey(ignore: true)
  _$$ServiceRequestModelImplCopyWith<_$ServiceRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InsuredClientInfo _$InsuredClientInfoFromJson(Map<String, dynamic> json) {
  return _InsuredClientInfo.fromJson(json);
}

/// @nodoc
mixin _$InsuredClientInfo {
  String get fullName => throw _privateConstructorUsedError;
  String get cedula => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String? get cedulaPhotoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuredClientInfoCopyWith<InsuredClientInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuredClientInfoCopyWith<$Res> {
  factory $InsuredClientInfoCopyWith(
          InsuredClientInfo value, $Res Function(InsuredClientInfo) then) =
      _$InsuredClientInfoCopyWithImpl<$Res, InsuredClientInfo>;
  @useResult
  $Res call(
      {String fullName, String cedula, String phone, String? cedulaPhotoUrl});
}

/// @nodoc
class _$InsuredClientInfoCopyWithImpl<$Res, $Val extends InsuredClientInfo>
    implements $InsuredClientInfoCopyWith<$Res> {
  _$InsuredClientInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? cedula = null,
    Object? phone = null,
    Object? cedulaPhotoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      cedula: null == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      cedulaPhotoUrl: freezed == cedulaPhotoUrl
          ? _value.cedulaPhotoUrl
          : cedulaPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuredClientInfoImplCopyWith<$Res>
    implements $InsuredClientInfoCopyWith<$Res> {
  factory _$$InsuredClientInfoImplCopyWith(_$InsuredClientInfoImpl value,
          $Res Function(_$InsuredClientInfoImpl) then) =
      __$$InsuredClientInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fullName, String cedula, String phone, String? cedulaPhotoUrl});
}

/// @nodoc
class __$$InsuredClientInfoImplCopyWithImpl<$Res>
    extends _$InsuredClientInfoCopyWithImpl<$Res, _$InsuredClientInfoImpl>
    implements _$$InsuredClientInfoImplCopyWith<$Res> {
  __$$InsuredClientInfoImplCopyWithImpl(_$InsuredClientInfoImpl _value,
      $Res Function(_$InsuredClientInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? cedula = null,
    Object? phone = null,
    Object? cedulaPhotoUrl = freezed,
  }) {
    return _then(_$InsuredClientInfoImpl(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      cedula: null == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      cedulaPhotoUrl: freezed == cedulaPhotoUrl
          ? _value.cedulaPhotoUrl
          : cedulaPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuredClientInfoImpl implements _InsuredClientInfo {
  const _$InsuredClientInfoImpl(
      {required this.fullName,
      required this.cedula,
      required this.phone,
      this.cedulaPhotoUrl});

  factory _$InsuredClientInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsuredClientInfoImplFromJson(json);

  @override
  final String fullName;
  @override
  final String cedula;
  @override
  final String phone;
  @override
  final String? cedulaPhotoUrl;

  @override
  String toString() {
    return 'InsuredClientInfo(fullName: $fullName, cedula: $cedula, phone: $phone, cedulaPhotoUrl: $cedulaPhotoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuredClientInfoImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.cedula, cedula) || other.cedula == cedula) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cedulaPhotoUrl, cedulaPhotoUrl) ||
                other.cedulaPhotoUrl == cedulaPhotoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fullName, cedula, phone, cedulaPhotoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuredClientInfoImplCopyWith<_$InsuredClientInfoImpl> get copyWith =>
      __$$InsuredClientInfoImplCopyWithImpl<_$InsuredClientInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuredClientInfoImplToJson(
      this,
    );
  }
}

abstract class _InsuredClientInfo implements InsuredClientInfo {
  const factory _InsuredClientInfo(
      {required final String fullName,
      required final String cedula,
      required final String phone,
      final String? cedulaPhotoUrl}) = _$InsuredClientInfoImpl;

  factory _InsuredClientInfo.fromJson(Map<String, dynamic> json) =
      _$InsuredClientInfoImpl.fromJson;

  @override
  String get fullName;
  @override
  String get cedula;
  @override
  String get phone;
  @override
  String? get cedulaPhotoUrl;
  @override
  @JsonKey(ignore: true)
  _$$InsuredClientInfoImplCopyWith<_$InsuredClientInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentDetails _$PaymentDetailsFromJson(Map<String, dynamic> json) {
  return _PaymentDetails.fromJson(json);
}

/// @nodoc
mixin _$PaymentDetails {
  String get method => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get bank => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get cedula => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDetailsCopyWith<PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsCopyWith<$Res> {
  factory $PaymentDetailsCopyWith(
          PaymentDetails value, $Res Function(PaymentDetails) then) =
      _$PaymentDetailsCopyWithImpl<$Res, PaymentDetails>;
  @useResult
  $Res call(
      {String method,
      String? reference,
      String? photoUrl,
      String? bank,
      String? phone,
      String? cedula,
      String? email,
      double? amount});
}

/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res, $Val extends PaymentDetails>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? reference = freezed,
    Object? photoUrl = freezed,
    Object? bank = freezed,
    Object? phone = freezed,
    Object? cedula = freezed,
    Object? email = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cedula: freezed == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDetailsImplCopyWith<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  factory _$$PaymentDetailsImplCopyWith(_$PaymentDetailsImpl value,
          $Res Function(_$PaymentDetailsImpl) then) =
      __$$PaymentDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String method,
      String? reference,
      String? photoUrl,
      String? bank,
      String? phone,
      String? cedula,
      String? email,
      double? amount});
}

/// @nodoc
class __$$PaymentDetailsImplCopyWithImpl<$Res>
    extends _$PaymentDetailsCopyWithImpl<$Res, _$PaymentDetailsImpl>
    implements _$$PaymentDetailsImplCopyWith<$Res> {
  __$$PaymentDetailsImplCopyWithImpl(
      _$PaymentDetailsImpl _value, $Res Function(_$PaymentDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? reference = freezed,
    Object? photoUrl = freezed,
    Object? bank = freezed,
    Object? phone = freezed,
    Object? cedula = freezed,
    Object? email = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$PaymentDetailsImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bank: freezed == bank
          ? _value.bank
          : bank // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      cedula: freezed == cedula
          ? _value.cedula
          : cedula // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDetailsImpl implements _PaymentDetails {
  const _$PaymentDetailsImpl(
      {required this.method,
      this.reference,
      this.photoUrl,
      this.bank,
      this.phone,
      this.cedula,
      this.email,
      this.amount});

  factory _$PaymentDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDetailsImplFromJson(json);

  @override
  final String method;
  @override
  final String? reference;
  @override
  final String? photoUrl;
  @override
  final String? bank;
  @override
  final String? phone;
  @override
  final String? cedula;
  @override
  final String? email;
  @override
  final double? amount;

  @override
  String toString() {
    return 'PaymentDetails(method: $method, reference: $reference, photoUrl: $photoUrl, bank: $bank, phone: $phone, cedula: $cedula, email: $email, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDetailsImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.bank, bank) || other.bank == bank) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.cedula, cedula) || other.cedula == cedula) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method, reference, photoUrl,
      bank, phone, cedula, email, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDetailsImplCopyWith<_$PaymentDetailsImpl> get copyWith =>
      __$$PaymentDetailsImplCopyWithImpl<_$PaymentDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDetailsImplToJson(
      this,
    );
  }
}

abstract class _PaymentDetails implements PaymentDetails {
  const factory _PaymentDetails(
      {required final String method,
      final String? reference,
      final String? photoUrl,
      final String? bank,
      final String? phone,
      final String? cedula,
      final String? email,
      final double? amount}) = _$PaymentDetailsImpl;

  factory _PaymentDetails.fromJson(Map<String, dynamic> json) =
      _$PaymentDetailsImpl.fromJson;

  @override
  String get method;
  @override
  String? get reference;
  @override
  String? get photoUrl;
  @override
  String? get bank;
  @override
  String? get phone;
  @override
  String? get cedula;
  @override
  String? get email;
  @override
  double? get amount;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDetailsImplCopyWith<_$PaymentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
