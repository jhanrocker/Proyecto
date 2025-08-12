import 'package:firebase_auth/firebase_auth.dart';
// CORREGIDO: Se elimina el import innecesario de flutter_riverpod ya que riverpod_annotation lo incluye.
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/data/repositories/auth_repository_impl.dart';
import 'package:power_gruas/domain/repositories/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

// Clase de excepción personalizada para errores de autenticación amigables
class AuthException implements Exception {
  final String message;
  // Añadimos un flag para saber si debemos activar la animación de "shake"
  final bool isCredentialsError;

  AuthException(this.message, {this.isCredentialsError = false});

  @override
  String toString() => message;
}

// AsyncNotifier que maneja las acciones de autenticación (Lógica de Negocio)
@riverpod
class AuthController extends _$AuthController {
  late final AuthRepository _authRepository;

  @override
  FutureOr<void> build() {
    // Inicializamos el repositorio
    _authRepository = ref.watch(authRepositoryProvider);
    // No necesitamos estado inicial
  }

  // ... (Métodos signIn, signUp, signOut, resetPassword permanecen igual) ...
    Future<void> signIn(String email, String password) async {
    // Usamos AsyncValue.guard para manejar el Future y atrapar excepciones
    state = await AsyncValue.guard(() async {
      try {
        await _authRepository.signIn(email, password);
        // Si tiene éxito, no retornamos nada. authStateChangesProvider actualizará la UI.
      } on FirebaseAuthException catch (e) {
        // Manejo específico de errores de Firebase Auth
        if (e.code == 'user-not-found' || e.code == 'wrong-password' || e.code == 'invalid-credential') {
          // Consideración 4: Mensaje específico y flag para animación
          throw AuthException('La contraseña o el correo ingresado son incorrectos.', isCredentialsError: true);
        } else if (e.code == 'invalid-email') {
          throw AuthException('El formato del correo electrónico no es válido.');
        } else {
          throw AuthException('Ocurrió un error de autenticación. Inténtalo de nuevo.');
        }
      } catch (e) {
        // Otros errores (ej. red, perfil de Firestore no encontrado)
        throw AuthException(e.toString());
      }
    });
  }

  Future<void> signUp(UserModel newUser, String password) async {
    state = await AsyncValue.guard(() async {
       try {
         await _authRepository.signUp(newUser, password);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          throw AuthException('El correo electrónico ya está registrado.');
        } else if (e.code == 'weak-password') {
          throw AuthException('La contraseña es demasiado débil.');
        }
        throw AuthException('Ocurrió un error en el registro. Inténtalo de nuevo.');
      } catch (e) {
        throw AuthException(e.toString());
      }
    });
  }

  Future<void> signOut() async {
    state = await AsyncValue.guard(() async {
      await _authRepository.signOut();
    });
  }

  // Método para restablecer contraseña (Consideración 4)
  Future<void> resetPassword(String email) async {
    state = await AsyncValue.guard(() async {
      try {
        await _authRepository.resetPassword(email);
      } on FirebaseAuthException catch (e) {
        // Indicar si el correo proporcionado es errado
        if (e.code == 'user-not-found') {
          throw AuthException('No se encontró un usuario con ese correo electrónico.');
        }
        throw AuthException('Error al enviar el correo de restablecimiento.');
      } catch (e) {
         throw AuthException(e.toString());
      }
    });
  }
}