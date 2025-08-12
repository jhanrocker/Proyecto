import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/data/datasources/firestore_datasource.dart';
import 'package:power_gruas/data/datasources/storage_datasource.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/data/models/vehicle_model.dart';
import 'package:power_gruas/domain/repositories/user_repository.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl(
    ref.watch(firestoreDataSourceProvider),
    ref.watch(storageDataSourceProvider),
  );
});

class UserRepositoryImpl implements UserRepository {
  final FirestoreDataSource _firestoreDataSource;
  final StorageDataSource _storageDataSource;

  UserRepositoryImpl(this._firestoreDataSource, this._storageDataSource);

  // --- Gestión de Usuario Básico ---

  @override
  Future<UserModel> getUser(String userId) async {
    final doc = await _firestoreDataSource.getDocument('users', userId);
    return UserModel.fromFirestore(doc);
  }

  @override
  Stream<UserModel> streamUser(String userId) {
    return _firestoreDataSource.streamDocument('users', userId).map((doc) => UserModel.fromFirestore(doc));
  }

  @override
  Future<void> updateUser(String userId, Map<String, dynamic> data) async {
    await _firestoreDataSource.updateDocument('users', userId, data);
  }

  @override
  Future<String> uploadProfilePicture(String userId, File image) async {
    final downloadUrl = await _storageDataSource.uploadFile(image, 'user_profiles/$userId/');
    await updateUser(userId, {'photoUrl': downloadUrl});
    return downloadUrl;
  }

  // --- Gestión de Vehículos ---

  @override
  Stream<List<VehicleModel>> streamUserVehicles(String userId) {
    return _firestoreDataSource.streamSubCollection('users', userId, 'vehicles')
        .map((snapshot) => snapshot.docs.map((doc) => VehicleModel.fromFirestore(doc)).toList());
  }

  @override
  Future<void> addVehicle(String userId, VehicleModel vehicle) async {
    final vehicleData = vehicle.copyWith(placa: vehicle.placa.toUpperCase()).toJson();
    vehicleData.remove('id');
    await _firestoreDataSource.addSubCollectionDocument('users', userId, 'vehicles', vehicleData);
  }

  @override
  Future<void> updateVehicle(String userId, VehicleModel vehicle) async {
     final vehicleData = vehicle.copyWith(placa: vehicle.placa.toUpperCase()).toJson();
     vehicleData.remove('id');
     await _firestoreDataSource.updateSubCollectionDocument('users', userId, 'vehicles', vehicle.id!, vehicleData);
  }

  @override
  Future<void> deleteVehicle(String userId, String vehicleId) async {
    await _firestoreDataSource.deleteSubCollectionDocument('users', userId, 'vehicles', vehicleId);
  }

  @override
  Future<String> uploadVehicleDocument(String userId, String vehicleId, File image, String docType) async {
     final downloadUrl = await _storageDataSource.uploadFile(image, 'vehicle_documents/$userId/$vehicleId/');

     String fieldName;
     if (docType == 'carnet') {
       fieldName = 'carnetCirculacionUrl';
     } else if (docType == 'cedula') {
       fieldName = 'cedulaUrl';
     } else {
       throw Exception('Invalid document type');
     }

     await _firestoreDataSource.updateSubCollectionDocument('users', userId, 'vehicles', vehicleId, {fieldName: downloadUrl});
     return downloadUrl;
  }


  // --- Admin: Gestión de Personal ---

  @override
  Future<List<UserModel>> searchUsers(String query) async {
    // Búsqueda básica por email en Firestore.
    final snapshot = await _firestoreDataSource.getCollection('users', queryBuilder: (q) {
      // CORREGIDO: Uso de interpolación de strings ($query) en lugar de concatenación (+).
      return q.where('email', isGreaterThanOrEqualTo: query).where('email', isLessThanOrEqualTo: '$query\uf8ff');
    });

    return snapshot.docs.map((doc) => UserModel.fromFirestore(doc)).toList();
  }

  @override
  Future<void> updateUserRole(String userId, String newRole, String? codigoEmpleado) async {
    Map<String, dynamic> data = {'role': newRole};
    if (codigoEmpleado != null) {
      data['codigoEmpleado'] = codigoEmpleado;
    }
    await _firestoreDataSource.updateDocument('users', userId, data);
  }

  @override
  Future<void> updateUserStatus(String userId, String newStatus) async {
     await _firestoreDataSource.updateDocument('users', userId, {'employeeStatus': newStatus});
  }
}