import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fleet_model.freezed.dart';
part 'fleet_model.g.dart';

@freezed
class FleetModel with _$FleetModel {
  const factory FleetModel({
    String? id,
    required String placa,
    required String modelo,
    required String tipo, // Grúas de plataforma, etc.
    required String status, // disponible, en servicio, en mantenimiento
    String? currentGrueroId,
    String? photoUrl,
  }) = _FleetModel;

  factory FleetModel.fromJson(Map<String, dynamic> json) =>
      _$FleetModelFromJson(json);

    factory FleetModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    if (data == null) throw Exception("Fleet document data is null");
     data['id'] = doc.id;
    return FleetModel.fromJson(data);
  }
}