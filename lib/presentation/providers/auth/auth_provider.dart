import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/data/repositories/auth_repository_impl.dart';
// import 'package:power_gruas/domain/repositories/auth_repository.dart'; // No necesario aquí
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'auth_provider.g.dart';

// Expone el Stream de cambios de estado de Firebase Auth
@riverpod
Stream<User?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges;
}

// Proveedor para obtener y cachear los datos del usuario desde Firestore
// Depende de authStateChanges para actualizarse cuando el usuario inicia o cierra sesión.
@riverpod
Future<UserModel?> currentUserData(CurrentUserDataRef ref) async {
  // Esperamos a que el estado de autenticación se resuelva
  final authState = ref.watch(authStateChangesProvider);

  // Si no hay usuario autenticado (uid es null), retornamos null
  if (authState.valueOrNull == null) {
    return null;
  }

  // Si hay usuario autenticado, obtenemos sus datos de Firestore
  final authRepository = ref.watch(authRepositoryProvider);
  return await authRepository.getCurrentUserdata();
}

// Helpers para acceder fácilmente al rol y estado del usuario
final userRoleProvider = Provider<String?>((ref) {
  final user = ref.watch(currentUserDataProvider);
  // Usamos .when para manejar los estados de carga/error del FutureProvider
  return user.when(
    data: (userData) => userData?.role,
    loading: () => null,
    error: (_, __) => null,
  );
});

final isAuthenticatedProvider = Provider<bool>((ref) {
  final authState = ref.watch(authStateChangesProvider);
  return authState.valueOrNull != null;
});