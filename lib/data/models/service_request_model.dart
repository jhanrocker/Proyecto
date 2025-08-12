import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// Importamos el archivo consolidado
import 'package:power_gruas/data/models/firestore_converters.dart';

part 'service_request_model.freezed.dart';
part 'service_request_model.g.dart';

@freezed
class ServiceRequestModel with _$ServiceRequestModel {
  const factory ServiceRequestModel({
    String? id,
    required String clientId,
    required String clientName,

    // CORREGIDO: Aplicamos el convertidor aquí
    @TimestampConverter()
    required Timestamp createdAt,

    required String status,
    required String requestOrigin,
    double? precioFinal,
    String? assignedGrueroId,
    String? assignedVehicleId,
    String? distanciaKm,

    // Usamos los convertidores para los GeoPoints
    @GeoPointConverter()
    required GeoPoint originLocation,
    required String originAddress,

    @NullableGeoPointConverter()
    GeoPoint? destinationLocation,
    String? destinationAddress,

    // Modelos anidados
    InsuredClientInfo? insuredClientInfo,
    PaymentDetails? paymentDetails,
    // Mapas dinámicos
    Map<String, dynamic>? serviceSpecificDetails,
    Map<String, String>? driverMediaUrls,

  }) = _ServiceRequestModel;

  factory ServiceRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceRequestModelFromJson(json);

  factory ServiceRequestModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    if (data == null) throw Exception("ServiceRequest document data is null");
     data['id'] = doc.id;
    return ServiceRequestModel.fromJson(data);
  }
}

// Modelos para los Mapas anidados (Estos permanecen igual)

@freezed
class InsuredClientInfo with _$InsuredClientInfo {
  const factory InsuredClientInfo({
    required String fullName,
    required String cedula,
    required String phone,
    String? cedulaPhotoUrl,
  }) = _InsuredClientInfo;

  factory InsuredClientInfo.fromJson(Map<String, dynamic> json) =>
      _$InsuredClientInfoFromJson(json);
}

@freezed
class PaymentDetails with _$PaymentDetails {
  const factory PaymentDetails({
    required String method,
    String? reference,
    String? photoUrl,
    String? bank,
    String? phone,
    String? cedula,
    String? email,
    double? amount,
  }) = _PaymentDetails;

    factory PaymentDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsFromJson(json);
}