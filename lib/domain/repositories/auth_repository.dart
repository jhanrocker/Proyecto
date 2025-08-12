import 'package:firebase_auth/firebase_auth.dart';
import 'package:power_gruas/data/models/user_model.dart';

abstract class AuthRepository {
  Stream<User?> get authStateChanges;
  User? get currentUser;
  Future<UserModel> signIn(String email, String password);
  Future<UserModel> signUp(UserModel newUser, String password);
  Future<void> signOut();
  Future<UserModel?> getCurrentUserdata();
  Future<void> resetPassword(String email); // (Consideración 4)
}