import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/presentation/providers/auth/auth_provider.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({
    // CORREGIDO: Usar super.key
    super.key,
    required this.title,
    this.actions
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Leemos el valor directamente. MainLayoutScreen se encarga del estado de carga/error.
    final user = ref.watch(currentUserDataProvider).value;

    return AppBar(
      title: Text(title),
      // Mantenemos el botón de hamburguesa para abrir el Drawer (automático si hay Drawer en el Scaffold)
      actions: [
        ...?actions,
        // Construimos el avatar directamente, ya que 'user' está garantizado.
        _buildUserAvatar(context, user),
      ],
    );
  }

  Widget _buildUserAvatar(BuildContext context, UserModel? user) {
    if (user == null) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        // Al pulsar el avatar, vamos al perfil
        onTap: () => context.push('/profile'),
        child: CircleAvatar(
          radius: 22, // Borde
          backgroundColor: AppConstants.secondaryColor,
          child: CircleAvatar(
            radius: 20, // Avatar interior
            backgroundColor: Colors.white,
            child: user.photoUrl != null
                ? ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: user.photoUrl!,
                      fit: BoxFit.cover,
                      width: 40,
                      height: 40,
                      placeholder: (context, url) =>
                          const Icon(Icons.person, color: Colors.grey),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error, color: Colors.red),
                    ),
                  )
                : const Icon(Icons.person, color: Colors.grey, size: 30),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}