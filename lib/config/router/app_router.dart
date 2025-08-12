import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';
import 'package:power_gruas/presentation/screens/auth/auth_gate.dart';
import 'package:power_gruas/presentation/screens/auth/login_screen.dart';
import 'package:power_gruas/presentation/screens/auth/register_screen.dart';
import 'package:power_gruas/presentation/screens/common/home_screen.dart';
import 'package:power_gruas/presentation/screens/common/main_screen.dart';
import 'package:power_gruas/presentation/screens/common/profile_screen.dart';
import 'package:power_gruas/presentation/screens/services/my_services_screen.dart';
import 'package:power_gruas/presentation/screens/services/request_service_screen.dart';

// Claves para los navegadores
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateChangesProvider);

  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [
      // --- Rutas de Autenticación (Fuera del Shell) ---
      GoRoute(
        path: '/',
        builder: (context, state) => const AuthGate(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),

      // --- ShellRoute para la navegación principal (Bottom Nav Bar y Drawer) ---
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          // MainScreen es el Scaffold que contiene el BottomNavigationBar, Drawer y el child (la pantalla activa)
          return MainScreen(child: child);
        },
        routes: <RouteBase>[
          // Las pestañas del BottomNavigationBar
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) => const NoTransitionPage(child: HomeScreen()),
          ),
          GoRoute(
            path: '/request_service',
             pageBuilder: (context, state) => const NoTransitionPage(child: RequestServiceScreen()),
          ),
          GoRoute(
            path: '/my_services',
             pageBuilder: (context, state) => const NoTransitionPage(child: MyServicesScreen()),
          ),
        ],
      ),

      // --- Rutas que se abren encima del Shell (Ej. Perfil) ---
      GoRoute(
        path: '/profile',
        parentNavigatorKey: _rootNavigatorKey, // Se asegura de que se abra encima de todo
        builder: (context, state) => const ProfileScreen(),
      ),

       // --- Rutas de Admin (Placeholders, deben definirse correctamente) ---
       // Se asume que también se abren encima del Shell
        GoRoute(
            path: '/admin/request_panel',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const Scaffold(body: Center(child: Text("Panel de Solicitudes"))),
        ),
        GoRoute(
            path: '/admin/personnel',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const Scaffold(body: Center(child: Text("Gestión de Personal"))),
        ),
         GoRoute(
            path: '/admin/fleet',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const Scaffold(body: Center(child: Text("Gestión de Flota"))),
        ),
         GoRoute(
            path: '/admin/rates',
            parentNavigatorKey: _rootNavigatorKey,
            builder: (context, state) => const Scaffold(body: Center(child: Text("Tarifas y Servicios"))),
        ),
    ],
    redirect: (context, state) {
      final bool loggingIn = state.matchedLocation == '/login' || state.matchedLocation == '/register';
      
      if (authState.isLoading || authState.hasError) {
        return null;
      }
      
      final bool isAuthenticated = authState.valueOrNull != null;
      
      if (isAuthenticated) {
        // Si está autenticado y trata de ir a login, register o la raíz (AuthGate), lo redirigimos a Home.
        if (loggingIn || state.matchedLocation == '/') {
          return '/home';
        }
      } else {
        // Si no está autenticado y trata de ir a una ruta protegida, lo enviamos a login.
        if (!loggingIn && state.matchedLocation != '/') {
          return '/login';
        }
      }
      return null;
    },
  );
});