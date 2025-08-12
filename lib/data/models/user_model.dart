import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
// Importamos el archivo consolidado
import 'package:power_gruas/data/models/firestore_converters.dart';

// Archivos generados por Freezed
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String fullName,
    required String email,
    required String phone,
    required String cedula,
    String? photoUrl,

    // CORREGIDO: Aplicamos el convertidor aquí
    @TimestampConverter()
    required Timestamp createdAt,

    required String role,
    String? codigoEmpleado,
    @Default(AppConstants.employeeStatusDisponible) String? employeeStatus,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  // Helper para crear el modelo desde un snapshot de Firestore
  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
     if (data == null) throw Exception("User document data is null");
    data['id'] = doc.id;
    return UserModel.fromJson(data);
  }
}