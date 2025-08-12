import 'package:flutter/foundation.dart'; // Importado para kDebugMode y debugPrint
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';
import 'package:power_gruas/presentation/screens/auth/login_screen.dart';
// Importante: Ya no importamos HomeScreen aquí, GoRouter se encarga de la redirección a /home (que usa MainScreen).

// AuthGate decide qué pantalla mostrar al inicio de la aplicación.
class AuthGate extends ConsumerWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Observamos el proveedor que verifica el estado de autenticación.
    // GoRouter se encargará de la redirección final basada en esto.
    final authStateAsync = ref.watch(authStateChangesProvider);

    return authStateAsync.when(
      data: (user) {
        // Si hay usuario o no, GoRouter decide a dónde ir (/home o /login).
        // Mientras esperamos la redirección, podemos mostrar el Splash o la pantalla de Login si no hay usuario.
        if (user != null) {
           // Si hay usuario, mostramos el Splash brevemente mientras GoRouter redirige a /home
          return const SplashScreen();
        }
        // Si no hay usuario, mostramos Login.
        return const LoginScreen();
      },
      // Mientras carga el estado inicial de Auth, mostramos el Splash Screen
      loading: () => const SplashScreen(),
      error: (error, stackTrace) {
        if (kDebugMode) {
          debugPrint("Error en AuthGate: $error");
        }
        // Si falla la verificación inicial, lo enviamos a Login.
        return const LoginScreen();
      },
    );
  }
}

// Pantalla de Carga (Splash Screen)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppConstants.logoLoading,
              width: 200,
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}