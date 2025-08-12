// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceRequestModelImpl _$$ServiceRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceRequestModelImpl(
      id: json['id'] as String?,
      clientId: json['clientId'] as String,
      clientName: json['clientName'] as String,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      status: json['status'] as String,
      requestOrigin: json['requestOrigin'] as String,
      precioFinal: (json['precioFinal'] as num?)?.toDouble(),
      assignedGrueroId: json['assignedGrueroId'] as String?,
      assignedVehicleId: json['assignedVehicleId'] as String?,
      distanciaKm: json['distanciaKm'] as String?,
      originLocation: const GeoPointConverter()
          .fromJson(json['originLocation'] as GeoPoint),
      originAddress: json['originAddress'] as String,
      destinationLocation: const NullableGeoPointConverter()
          .fromJson(json['destinationLocation'] as GeoPoint?),
      destinationAddress: json['destinationAddress'] as String?,
      insuredClientInfo: json['insuredClientInfo'] == null
          ? null
          : InsuredClientInfo.fromJson(
              json['insuredClientInfo'] as Map<String, dynamic>),
      paymentDetails: json['paymentDetails'] == null
          ? null
          : PaymentDetails.fromJson(
              json['paymentDetails'] as Map<String, dynamic>),
      serviceSpecificDetails:
          json['serviceSpecificDetails'] as Map<String, dynamic>?,
      driverMediaUrls: (json['driverMediaUrls'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$ServiceRequestModelImplToJson(
        _$ServiceRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clientId': instance.clientId,
      'clientName': instance.clientName,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'status': instance.status,
      'requestOrigin': instance.requestOrigin,
      'precioFinal': instance.precioFinal,
      'assignedGrueroId': instance.assignedGrueroId,
      'assignedVehicleId': instance.assignedVehicleId,
      'distanciaKm': instance.distanciaKm,
      'originLocation':
          const GeoPointConverter().toJson(instance.originLocation),
      'originAddress': instance.originAddress,
      'destinationLocation': const NullableGeoPointConverter()
          .toJson(instance.destinationLocation),
      'destinationAddress': instance.destinationAddress,
      'insuredClientInfo': instance.insuredClientInfo,
      'paymentDetails': instance.paymentDetails,
      'serviceSpecificDetails': instance.serviceSpecificDetails,
      'driverMediaUrls': instance.driverMediaUrls,
    };

_$InsuredClientInfoImpl _$$InsuredClientInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$InsuredClientInfoImpl(
      fullName: json['fullName'] as String,
      cedula: json['cedula'] as String,
      phone: json['phone'] as String,
      cedulaPhotoUrl: json['cedulaPhotoUrl'] as String?,
    );

Map<String, dynamic> _$$InsuredClientInfoImplToJson(
        _$InsuredClientInfoImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'cedula': instance.cedula,
      'phone': instance.phone,
      'cedulaPhotoUrl': instance.cedulaPhotoUrl,
    };

_$PaymentDetailsImpl _$$PaymentDetailsImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDetailsImpl(
      method: json['method'] as String,
      reference: json['reference'] as String?,
      photoUrl: json['photoUrl'] as String?,
      bank: json['bank'] as String?,
      phone: json['phone'] as String?,
      cedula: json['cedula'] as String?,
      email: json['email'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PaymentDetailsImplToJson(
        _$PaymentDetailsImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'reference': instance.reference,
      'photoUrl': instance.photoUrl,
      'bank': instance.bank,
      'phone': instance.phone,
      'cedula': instance.cedula,
      'email': instance.email,
      'amount': instance.amount,
    };
