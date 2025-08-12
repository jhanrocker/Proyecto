import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart'; // Importado para kDebugMode y debugPrint
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

// Proveedor para la instancia de FirebaseStorage
final firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
  return FirebaseStorage.instance;
});

// Proveedor para el DataSource
final storageDataSourceProvider = Provider<StorageDataSource>((ref) {
  return StorageDataSource(ref.watch(firebaseStorageProvider));
});

class StorageDataSource {
  final FirebaseStorage _storage;
  // CORREGIDO: Añadido const al constructor de Uuid.
  final Uuid _uuid = const Uuid();

  StorageDataSource(this._storage);

  /// Sube un archivo a Firebase Storage y retorna la URL de descarga.
  Future<String> uploadFile(File file, String path) async {
    try {
      // Genera un nombre de archivo único
      String fileName = '${_uuid.v4()}.${file.path.split('.').last}';
      Reference ref = _storage.ref().child(path).child(fileName);

      UploadTask uploadTask = ref.putFile(file);
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();

      return downloadUrl;
    } catch (e) {
      // Manejo de errores de Storage
      throw Exception('Error uploading file: $e');
    }
  }

  Future<void> deleteFile(String downloadUrl) async {
    try {
      Reference ref = _storage.refFromURL(downloadUrl);
      await ref.delete();
    } catch (e) {
      // CORREGIDO: Usamos debugPrint en lugar de print, solo en modo desarrollo.
      if (kDebugMode) {
        debugPrint('Error deleting file: $e');
      }
    }
  }
}