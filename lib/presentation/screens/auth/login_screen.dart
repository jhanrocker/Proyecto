import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/presentation/providers/auth/auth_controller.dart';
import 'package:power_gruas/presentation/widgets/common/custom_button.dart';
import 'package:power_gruas/presentation/widgets/common/custom_text_field.dart';
import 'package:power_gruas/presentation/widgets/common/shake_widget.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  // CORREGIDO: Se usa ConsumerState<LoginScreen> para evitar 'library_private_types_in_public_api'
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Clave para el widget de Shake de la contraseña
  final _shakeKeyPassword = GlobalKey<ShakeWidgetState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      ref.read(authControllerProvider.notifier).signIn(
            _emailController.text.trim(),
            _passwordController.text.trim(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Observamos el estado del AuthController para el indicador de carga
    final authState = ref.watch(authControllerProvider);

    // Listener para manejar errores y activar la animación
    ref.listen<AsyncValue>(authControllerProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        final error = state.error;

        // Mostramos el mensaje de error en un SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.toString()),
            backgroundColor: Colors.red,
          ),
        );

        // Si el error es una AuthException y es un error de credenciales, activamos el shake
        if (error is AuthException && error.isCredentialsError) {
          _shakeKeyPassword.currentState?.shake();
        }
      }
    });

    return Scaffold(
      body: Container(
        // Fondo degradado
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppConstants.primaryColor, AppConstants.secondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              elevation: 8.0,
              // El shape se define en el tema global ahora.
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        AppConstants.appIcon,
                        height: 150,
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Tu auxilio víal....',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(height: 30),

                      // Campo de Correo
                      CustomTextField(
                        controller: _emailController,
                        labelText: 'Correo Electrónico',
                        prefixIcon: Icons.email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) => (value == null || value.isEmpty)
                            ? 'Ingresa tu correo'
                            : null,
                      ),
                      const SizedBox(height: 20),

                      // Campo de Contraseña envuelto en ShakeWidget
                      ShakeWidget(
                        key: _shakeKeyPassword,
                        child: CustomTextField(
                          controller: _passwordController,
                          labelText: 'Contraseña',
                          prefixIcon: Icons.lock,
                          obscureText: true,
                          validator: (value) => (value == null || value.isEmpty)
                              ? 'Ingresa tu contraseña'
                              : null,
                        ),
                      ),

                      // Botón de restablecimiento de contraseña
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () => _showForgotPasswordDialog(context),
                            child: const Text('¿Contraseña olvidada? Haz clic aquí'),
                          ),
                      ),


                      const SizedBox(height: 15),

                      CustomButton(
                        text: 'Iniciar Sesión',
                        onPressed: _login,
                        isLoading: authState.isLoading,
                      ),
                      const SizedBox(height: 20),

                      TextButton(
                        onPressed: () => context.push('/register'),
                        child: const Text('¿No tienes cuenta? Regístrate aquí'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Diálogo para restablecer contraseña
  void _showForgotPasswordDialog(BuildContext context) {
    final TextEditingController resetEmailController = TextEditingController();
    final GlobalKey<FormState> resetFormKey = GlobalKey<FormState>();
    resetEmailController.text = _emailController.text.trim();

    // CORREGIDO: Guardamos el ScaffoldMessenger antes del showDialog para usarlo de forma segura después del await.
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    showDialog(
      context: context,
      builder: (dialogContext) { // Usamos un contexto diferente para el diálogo
        return Consumer(
          builder: (consumerContext, ref, child) {
            final resetState = ref.watch(authControllerProvider);

            return AlertDialog(
              title: const Text('Restablecer Contraseña'),
              content: Form(
                key: resetFormKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Ingresa tu correo electrónico para recibir un enlace seguro de restablecimiento.'),
                    const SizedBox(height: 15),
                    CustomTextField(
                      controller: resetEmailController,
                      labelText: 'Correo Electrónico',
                      prefixIcon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) => (value == null || !value.contains('@'))
                          ? 'Ingresa un correo válido'
                          : null,
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  // Usamos el contexto del diálogo para cerrarlo
                  onPressed: resetState.isLoading ? null : () => Navigator.of(dialogContext).pop(),
                  child: const Text('Cancelar'),
                ),
                ElevatedButton(
                  onPressed: resetState.isLoading ? null : () async {
                    if (resetFormKey.currentState!.validate()) {
                      final email = resetEmailController.text.trim();

                      await ref.read(authControllerProvider.notifier).resetPassword(email);

                      // CORREGIDO: Verificamos si el contexto del diálogo sigue montado antes de usarlo.
                      if (!dialogContext.mounted) return;

                      final newState = ref.read(authControllerProvider);

                      if (!newState.hasError) {
                        Navigator.of(dialogContext).pop();
                        // Usamos el ScaffoldMessenger guardado
                        scaffoldMessenger.showSnackBar(
                          SnackBar(content: Text('Enlace de restablecimiento enviado a $email'), backgroundColor: Colors.green,),
                        );
                      }
                    }
                  },
                  child: resetState.isLoading ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2,)) : const Text('Enviar Enlace'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}