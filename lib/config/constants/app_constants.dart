import 'package:flutter/material.dart';

class AppConstants {
  // Paleta de Colores
  static const Color primaryColor = Color(0xFF263687);
  static const Color secondaryColor = Color(0xFF41A6D7);
  static const Color textColor = Color(0xFF000000);
  static const Color backgroundColor = Color(0xFFF5F5F5);

  // Assets
  static const String logoWhite = 'assets/images/logo_blanco_sin_fondo.png';
  static const String logoLoading = 'assets/images/logo_carga.png';
  static const String appIcon = 'assets/images/logo_icono_color.png';

  // --- Configuración de Google Maps (Consideración 3) ---
  // IMPORTANTE: Reemplaza esto con la misma clave de API que usaste en la configuración nativa.
  static const String googleMapsApiKey = 'AIzaSyD07BS5JuuyndnB-xgL6_He_sSWe2DwhI4';


  // Roles (deben coincidir exactamente con Firestore)
  static const String roleCliente = 'cliente';
  static const String roleGruero = 'gruero';
  static const String roleOperador = 'operador';
  static const String roleAdmin = 'admin';
  static const String roleAseguradora = 'aseguradora';

  // Estados de Servicio
  static const String statusPendientePrecio = 'pendientePrecio';
  static const String statusPendientePago = 'pendientePago';
  static const String statusPagoEnVerificacion = 'pagoEnVerificacion';
  static const String statusEnCurso = 'enCurso';
  static const String statusEnSitio = 'enSitio';
  static const String statusFinalizado = 'finalizado';
  static const String statusCancelado = 'cancelado';

  // Estados de Empleado
  static const String employeeStatusDisponible = 'Disponible';
  static const String employeeStatusEnServicio = 'En servicio';

  // Origen de Solicitud
  static const String requestOriginRegular = 'regular';
  static const String requestOriginAseguradora = 'aseguradora';
}