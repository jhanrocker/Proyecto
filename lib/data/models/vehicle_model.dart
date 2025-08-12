import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_model.freezed.dart';
part 'vehicle_model.g.dart';

@freezed
class VehicleModel with _$VehicleModel {
  const factory VehicleModel({
    String? id, // ID del documento en la subcolección
    required String marca,
    required String modelo,
    required int anio,
    required String placa,
    required bool esDueno,
    String? carnetCirculacionUrl,
    String? cedulaUrl,
  }) = _VehicleModel;

  factory VehicleModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleModelFromJson(json);

  factory VehicleModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    if (data == null) throw Exception("Vehicle document data is null");
    data['id'] = doc.id;
    return VehicleModel.fromJson(data);
  }
}