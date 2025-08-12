import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/presentation/providers/auth/auth_controller.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserDataProvider).value;
    final userRole = ref.watch(userRoleProvider);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(user?.fullName ?? 'Usuario'),
            accountEmail: Text(user?.email ?? ''),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: user?.photoUrl != null
                  ? ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: user!.photoUrl!,
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                        placeholder: (context, url) => const Icon(Icons.person, color: Colors.grey),
                        errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
                      ),
                    )
                  : const Icon(Icons.person, color: Colors.grey),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          
          // --- Mi Perfil (Siempre visible) ---
          ListTile(
            leading: const Icon(Icons.person_outline), 
            title: const Text('Mi Perfil'), 
            onTap: () => _navigateTo(context, '/profile')
          ),

          // --- Menú Dinámico por Roles ---
          if (userRole != null) ..._buildMenuItems(context, userRole),

          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              ref.read(authControllerProvider.notifier).signOut();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildMenuItems(BuildContext context, String role) {
    List<Widget> items = [];

    // --- Items Específicos (Si no están en el BottomNav) ---

    // Items de Gruero
    if (role == AppConstants.roleGruero) {
      // Ejemplo: Si el gruero necesita una vista específica que no sea la principal
      // items.add(ListTile(leading: const Icon(Icons.assignment_turned_in), title: const Text('Servicios Asignados'), onTap: () => _navigateTo(context, '/assigned_services')));
    }

    // Items de Aseguradora
    if (role == AppConstants.roleAseguradora) {
       // Ejemplo: Si la aseguradora tiene un flujo diferente
      // items.add(ListTile(leading: const Icon(Icons.shield), title: const Text('Solicitud para Asegurados'), onTap: () => _navigateTo(context, '/insured_request')));
    }

    // --- Items de Administración (Solicitado en la barra lateral) ---
    if ([AppConstants.roleOperador, AppConstants.roleAdmin].contains(role)) {
      items.add(const Divider());
      items.add(const ListTile(title: Text("Panel de Control"), enabled: false));
      
      items.add(ListTile(leading: const Icon(Icons.dashboard), title: const Text('Panel de Solicitudes'), onTap: () => _navigateTo(context, '/admin/request_panel')));
      items.add(ListTile(leading: const Icon(Icons.people), title: const Text('Gestión de Personal'), onTap: () => _navigateTo(context, '/admin/personnel')));
      items.add(ListTile(leading: const Icon(Icons.local_shipping), title: const Text('Gestión de Flota'), onTap: () => _navigateTo(context, '/admin/fleet')));
    }

    // Item de Admin
    if (role == AppConstants.roleAdmin) {
      items.add(ListTile(leading: const Icon(Icons.attach_money), title: const Text('Tarifas y Servicios'), onTap: () => _navigateTo(context, '/admin/rates')));
    }
    
    return items;
  }

  // Navegación para el Drawer
  void _navigateTo(BuildContext context, String path) {
    Navigator.of(context).pop(); // Cierra el drawer
    // Usamos push para navegar a pantallas que deben estar encima del Shell (como Perfil o Admin)
    context.push(path); 
  }
}