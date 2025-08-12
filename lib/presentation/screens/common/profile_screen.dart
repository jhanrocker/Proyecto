import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/presentation/providers/auth/auth_controller.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(currentUserDataProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // TODO: Navegar a la pantalla de edición de perfil
               ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Navegar a Editar Perfil')));
            },
          ),
        ],
      ),
      body: userAsync.when(
        data: (user) => user != null ? _buildProfileView(context, ref, user) : const Center(child: Text('Usuario no encontrado')),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Widget _buildProfileView(BuildContext context, WidgetRef ref, UserModel user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Foto de Perfil
          _buildProfilePicture(context, user),
          const SizedBox(height: 16),
          Text(user.fullName, style: Theme.of(context).textTheme.titleLarge),
          Text(user.email, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
          Chip(
            label: Text(user.role.toUpperCase()),
            backgroundColor: _getRoleColor(user.role),
            labelStyle: const TextStyle(color: Colors.white),
          ),
           if (user.codigoEmpleado != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('Código Empleado: ${user.codigoEmpleado}', style: Theme.of(context).textTheme.bodySmall),
            ),

          const Divider(height: 40),

          // Información de Contacto
          _buildInfoTile(Icons.phone, 'Teléfono', user.phone),
          _buildInfoTile(Icons.credit_card, 'Cédula', user.cedula),

          const Divider(height: 40),

          // Gestión de Vehículos (Solo si no es Aseguradora)
          if (user.role != AppConstants.roleAseguradora)
            ListTile(
              leading: const Icon(Icons.directions_car, color: AppConstants.primaryColor),
              title: const Text('Gestionar Vehículos'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Navegar a la pantalla de gestión de vehículos
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Navegar a Gestionar Vehículos')));
              },
            ),

          // Contáctanos y Acerca de Nosotros (Como se definió en los requerimientos)
           ListTile(
              leading: const Icon(Icons.info_outline, color: AppConstants.primaryColor),
              title: const Text('Acerca de Nosotros'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Navegar a Acerca de Nosotros
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Navegar a Acerca de Nosotros')));
              },
            ),
             ListTile(
              leading: const Icon(Icons.contact_support, color: AppConstants.primaryColor),
              title: const Text('Contáctanos'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // TODO: Navegar a Contáctanos
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Navegar a Contáctanos')));
              },
            ),


          const Divider(height: 40),

          // Cerrar Sesión
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Cerrar Sesión', style: TextStyle(color: Colors.red)),
            onTap: () => _confirmSignOut(context, ref),
          ),
        ],
      ),
    );
  }

  Widget _buildProfilePicture(BuildContext context, UserModel user) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: AppConstants.primaryColor.withOpacity(0.1),
          child: user.photoUrl != null
              ? ClipOval(
                  child: CachedNetworkImage(
                    imageUrl: user.photoUrl!,
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    placeholder: (context, url) => const CircularProgressIndicator(),
                    errorWidget: (context, url, error) => const Icon(Icons.person, size: 60),
                  ),
                )
              : const Icon(Icons.person, size: 60, color: AppConstants.primaryColor),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: AppConstants.secondaryColor,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.camera_alt, color: Colors.white, size: 20,),
              onPressed: () {
                // TODO: Lógica para subir/cambiar foto de perfil (ImagePicker y UserRepository)
                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Implementar Carga de Foto')));
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: AppConstants.primaryColor),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  Color _getRoleColor(String role) {
    switch (role) {
      case AppConstants.roleAdmin:
        return Colors.red;
      case AppConstants.roleOperador:
        return Colors.orange;
      case AppConstants.roleGruero:
        return Colors.blue;
      case AppConstants.roleAseguradora:
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  void _confirmSignOut(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmar Cierre de Sesión'),
        content: const Text('¿Estás seguro de que deseas cerrar sesión?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Llamamos al AuthController para cerrar sesión
              ref.read(authControllerProvider.notifier).signOut();
            },
            child: const Text('Cerrar Sesión', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}