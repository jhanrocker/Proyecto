import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/data/models/vehicle_model.dart';
import 'dart:io';

abstract class UserRepository {
  Future<UserModel> getUser(String userId);
  Stream<UserModel> streamUser(String userId);
  Future<void> updateUser(String userId, Map<String, dynamic> data);
  Future<String> uploadProfilePicture(String userId, File image);

  // Gestión de Vehículos
  Stream<List<VehicleModel>> streamUserVehicles(String userId);
  Future<void> addVehicle(String userId, VehicleModel vehicle);
  Future<void> updateVehicle(String userId, VehicleModel vehicle);
  Future<void> deleteVehicle(String userId, String vehicleId);
  Future<String> uploadVehicleDocument(String userId, String vehicleId, File image, String docType); // 'carnet' o 'cedula'

  // Admin: Gestión de Personal
  Future<List<UserModel>> searchUsers(String query);
  Future<void> updateUserRole(String userId, String newRole, String? codigoEmpleado);
  Future<void> updateUserStatus(String userId, String newStatus);
}