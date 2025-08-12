import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/config/router/app_router.dart';
import 'package:power_gruas/config/theme/app_theme.dart';
import 'firebase_options.dart'; // Archivo generado por flutterfire configure

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializar Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    // Habilitar Riverpod en toda la aplicación
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Obtener el router configurado por Riverpod
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'PowerGrúas',
      theme: AppTheme().getTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}