import 'package:flutter/material.dart';

class RequestServiceScreen extends StatelessWidget {
  const RequestServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Ya no usamos Scaffold aquí, MainScreen lo provee.
    return const Center(
      child: Text(
        'Pantalla de Solicitud de Servicio',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}