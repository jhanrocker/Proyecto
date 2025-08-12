import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/data/models/user_model.dart';
import 'package:power_gruas/presentation/providers/auth/auth_controller.dart';
import 'package:power_gruas/presentation/widgets/common/custom_button.dart';
import 'package:power_gruas/presentation/widgets/common/custom_text_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Necesario para Timestamp

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  // CORREGIDO: Se usa ConsumerState<RegisterScreen> para evitar 'library_private_types_in_public_api'
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _cedulaController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _fullNameController.dispose();
    _cedulaController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      if (_passwordController.text != _confirmPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Las contraseñas no coinciden')),
        );
        return;
      }

      // Creamos el modelo de usuario inicial
      final newUser = UserModel(
        id: '', // Temporal
        fullName: _fullNameController.text.trim(),
        email: _emailController.text.trim(),
        phone: _phoneController.text.trim(),
        cedula: _cedulaController.text.trim(),
        role: AppConstants.roleCliente, // Rol por defecto
        createdAt: Timestamp.now(), // Temporal
      );

      ref.read(authControllerProvider.notifier).signUp(
            newUser,
            _passwordController.text.trim(),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

     // Listener para errores
    ref.listen<AsyncValue>(authControllerProvider, (_, state) {
      if (state.hasError && !state.isLoading) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error en el registro: ${state.error.toString()}'), backgroundColor: Colors.red,),
        );
      }
      // La redirección exitosa la maneja el GoRouter
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Cuenta'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Completa tus datos para empezar',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 20),

              // Campos Obligatorios
              CustomTextField(
                controller: _fullNameController,
                labelText: 'Nombre y Apellido',
                prefixIcon: Icons.person,
                validator: (value) => (value == null || value.isEmpty) ? 'Campo obligatorio' : null,
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: _cedulaController,
                labelText: 'Cédula de Identidad',
                prefixIcon: Icons.credit_card,
                validator: (value) => (value == null || value.isEmpty) ? 'Campo obligatorio' : null,
              ),
               const SizedBox(height: 15),
              CustomTextField(
                controller: _phoneController,
                labelText: 'Teléfono',
                prefixIcon: Icons.phone,
                keyboardType: TextInputType.phone,
                validator: (value) => (value == null || value.isEmpty) ? 'Campo obligatorio' : null,
              ),
               const SizedBox(height: 15),
              CustomTextField(
                controller: _emailController,
                labelText: 'Correo Electrónico',
                prefixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => (value == null || !value.contains('@'))
                      ? 'Ingresa un correo válido'
                      : null,
              ),
               const SizedBox(height: 15),
              CustomTextField(
                controller: _passwordController,
                labelText: 'Contraseña',
                prefixIcon: Icons.lock,
                obscureText: true,
                validator: (value) => (value == null || value.length < 6)
                      ? 'Mínimo 6 caracteres'
                      : null,
              ),
               const SizedBox(height: 15),
               CustomTextField(
                controller: _confirmPasswordController,
                labelText: 'Confirmar Contraseña',
                prefixIcon: Icons.lock_outline,
                obscureText: true,
              ),

              const SizedBox(height: 30),

              CustomButton(
                text: 'Registrarse',
                onPressed: _register,
                isLoading: authState.isLoading,
              ),
               const SizedBox(height: 20),
               TextButton(
                  onPressed: () => context.pop(), // Vuelve a Login
                  child: const Text('¿Ya tienes cuenta? Inicia sesión'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}