import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/data/datasources/auth_remote_datasource.dart';
import 'package:power_gruas/data/datasources/firestore_datasource.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/domain/repositories/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepositoryImpl(
    ref.watch(authRemoteDataSourceProvider),
    ref.watch(firestoreDataSourceProvider),
  );
});

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _authDataSource;
  final FirestoreDataSource _firestoreDataSource;

  AuthRepositoryImpl(this._authDataSource, this._firestoreDataSource);

  @override
  Stream<User?> get authStateChanges => _authDataSource.authStateChanges;

  @override
  User? get currentUser => _authDataSource.currentUser;

  @override
  Future<UserModel> signIn(String email, String password) async {
    // La gestión de errores de Auth se centralizará en el AuthController
    UserCredential userCredential = await _authDataSource.signInWithEmailAndPassword(email, password);
    User user = userCredential.user!;
    // Verificamos que el perfil exista en Firestore
    return await _getUserData(user.uid);
  }

  @override
  Future<UserModel> signUp(UserModel newUser, String password) async {
    try {
      // 1. Crear usuario en Firebase Auth
      UserCredential userCredential = await _authDataSource.createUserWithEmailAndPassword(newUser.email, password);
      User user = userCredential.user!;

      // 2. Crear perfil en Firestore
      UserModel userProfile = newUser.copyWith(
        id: user.uid,
        createdAt: Timestamp.now(),
      );

      // Convertimos el modelo a JSON, excluyendo el campo 'id' ya que es el ID del documento
      final userData = userProfile.toJson();
      userData.remove('id');

      await _firestoreDataSource.setDocument('users', user.uid, userData);

      // Opcional: Enviar correo de bienvenida (escribiendo en la colección 'mail')
      // await _sendWelcomeEmail(userProfile.email, userProfile.fullName);

      return userProfile;
    } catch (e) {
      // Si falla la creación en Firestore (y no es un error de Auth previo), limpiamos Auth
      if (_authDataSource.currentUser != null && e is! FirebaseAuthException) {
        await _authDataSource.currentUser!.delete();
      }
      rethrow;
    }
  }

  @override
  Future<void> signOut() async {
    await _authDataSource.signOut();
  }

  // Implementación del restablecimiento de contraseña
  @override
  Future<void> resetPassword(String email) async {
    await _authDataSource.sendPasswordResetEmail(email);
  }

  @override
  Future<UserModel?> getCurrentUserdata() async {
    if (currentUser != null) {
      return await _getUserData(currentUser!.uid);
    }
    return null;
  }


  // --- Helpers Privados ---

  Future<UserModel> _getUserData(String uid) async {
    DocumentSnapshot doc = await _firestoreDataSource.getDocument('users', uid);
    if (doc.exists) {
      return UserModel.fromFirestore(doc);
    } else {
      // Si el perfil no existe en Firestore, cerramos la sesión por seguridad.
      await signOut();
      throw Exception("Perfil de usuario no encontrado en la base de datos.");
    }
  }
}