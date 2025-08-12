import 'package:flutter/material.dart';

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ya no usamos Scaffold aquí, MainScreen lo provee.
    return const Center(
      child: Text(
        'Pantalla de Mis Servicios',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}