import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/presentation/widgets/common/app_drawer.dart';
import 'package:power_gruas/presentation/widgets/common/custom_app_bar.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  // Calcula el índice seleccionado basado en la ruta actual de GoRouter
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/request_service')) {
      return 1;
    }
    if (location.startsWith('/my_services')) {
      return 2;
    }
    return 0;
  }

  // Maneja la navegación al tocar un item de la barra inferior
  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/request_service');
        break;
      case 2:
        context.go('/my_services');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);

    // Determinar el título dinámicamente para el AppBar
    String title = "PowerGrúas";
    if (selectedIndex == 1) title = "Solicitar Servicio";
    if (selectedIndex == 2) title = "Mis Servicios";

    return Scaffold(
      // AppBar personalizado gestionado aquí
      appBar: CustomAppBar(title: title),
      // Drawer (Barra lateral) gestionado aquí
      drawer: const AppDrawer(),
      // El 'child' es la pantalla activa (HomeScreen, RequestServiceScreen, etc.)
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home), // Icono diferente cuando está activo
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle),
            label: 'Solicitar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            activeIcon: Icon(Icons.list_alt),
            label: 'Mis Servicios',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) => _onItemTapped(index, context),
        // Estilos solicitados
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor, // Color activo
        unselectedItemColor: Colors.grey[600], // Color inactivo
        // El efecto visual al pulsar (ripple/highlight) es manejado nativamente por el widget.
      ),
    );
  }
}