import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    String? id,
    required String name,
    required String description,
    required bool isActive,
    required String serviceKey, // grua, gasolina, bateria
    required bool requiresDestination,
    required List<String> applicableVehicleTypes,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);

  factory ServiceModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    if (data == null) throw Exception("Service document data is null");
     data['id'] = doc.id;
    return ServiceModel.fromJson(data);
  }
}