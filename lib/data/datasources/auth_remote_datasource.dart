import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Proveedor para la instancia de FirebaseAuth
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

// Proveedor para el DataSource
final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>((ref) {
  return AuthRemoteDataSource(ref.watch(firebaseAuthProvider));
});

class AuthRemoteDataSource {
  final FirebaseAuth _auth;

  AuthRemoteDataSource(this._auth);

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    // FirebaseAuth lanza excepciones (ej. usuario no encontrado, contraseña incorrecta)
    // que atraparemos en el AuthController para dar feedback al usuario.
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<UserCredential> createUserWithEmailAndPassword(String email, String password) async {
     // Lanza excepciones (ej. correo ya en uso)
    return await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Método añadido para restablecimiento de contraseña (Consideración 4)
  Future<void> sendPasswordResetEmail(String email) async {
    // Lanza excepción si el correo no existe.
    await _auth.sendPasswordResetEmail(email: email);
  }
}