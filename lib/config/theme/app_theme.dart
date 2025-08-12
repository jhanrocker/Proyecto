import 'package:flutter/material.dart';
import 'package:power_gruas/config/constants/app_constants.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppConstants.primaryColor,
          primary: AppConstants.primaryColor,
          secondary: AppConstants.secondaryColor,
          // CORREGIDO: 'background' está obsoleto en Material 3, usamos 'surface'.
          surface: AppConstants.backgroundColor,
        ),
        scaffoldBackgroundColor: AppConstants.backgroundColor,

        // Configuración de Fuentes
        fontFamily: 'Arimo',
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: AppConstants.textColor),
          titleMedium: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: AppConstants.textColor),
          bodyMedium:
              TextStyle(fontSize: 16.0, color: AppConstants.textColor),
          bodySmall:
              TextStyle(fontSize: 14.0, color: AppConstants.textColor),
        ),

        // Configuración de AppBar
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppConstants.primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        // Configuración de Input (TextFields)
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        ),

        // Configuración de Botones
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstants.secondaryColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            textStyle: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arimo',
            ),
          ),
        ),

        // Configuración de Tarjetas (Cards)
        // CORREGIDO: Se usa CardThemeData.
        cardTheme: CardThemeData(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        ),

         // Configuración de Diálogos
         // CORREGIDO: Se usa DialogThemeData.
        dialogTheme: DialogThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      );
}