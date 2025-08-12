import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserDataProvider);

    // Ya no usamos Scaffold aquí, MainScreen lo provee.
    return Container(
      color: Theme.of(context).colorScheme.surface.withOpacity(0.1),
      child: Center(
        child: userAsync.when(
          data: (user) => Text(
            'Bienvenido, ${user?.fullName ?? 'Usuario'}',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => const Text('Error al cargar datos'),
        ),
      ),
    );
  }
}