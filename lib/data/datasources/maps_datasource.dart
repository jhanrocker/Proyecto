import 'dart:convert';
import 'package:flutter/foundation.dart'; // Importado para kDebugMode y debugPrint
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:power_gruas/config/constants/app_constants.dart';
import 'package:power_gruas/data/models/directions_model.dart';

final mapsDataSourceProvider = Provider<MapsDataSource>((ref) {
  return MapsDataSource();
});


class MapsDataSource {
  // URL base para la API de Directions de Google
  static const String _baseUrl = 'https://maps.googleapis.com/maps/api/directions/json';

  // --- Geolocator (Ubicación del Dispositivo) ---

  Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return false;
    }

    return true;
  }

  Future<Position> getCurrentPosition() async {
    final hasPermission = await handleLocationPermission();
    if (!hasPermission) {
      throw Exception("Location permissions are denied");
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Stream<Position> getPositionStream() {
    return Geolocator.getPositionStream();
  }


  // --- Geocoding (Coordenadas a Dirección) ---

  Future<String> getAddressFromLatLng(LatLng position) async {
    try {
      // Usamos el paquete geocoding para la conversión inversa.
      List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude, position.longitude);
      Placemark place = placemarks[0];
      return "${place.street}, ${place.locality}, ${place.administrativeArea}";
    } catch (e) {
      return "Address not found";
    }
  }

  // --- Directions API (Rutas, Distancia y Duración) ---

  Future<Directions> getDirections(LatLng origin, LatLng destination) async {
    if (AppConstants.googleMapsApiKey == 'AIzaSyD07BS5JuuyndnB-xgL6_He_sSWe2DwhI4') {
      throw Exception('Google Maps API Key not configured in app_constants.dart');
    }

    // Construimos la URL para la petición HTTP GET
    final String url = '$_baseUrl?'
        'origin=${origin.latitude},${origin.longitude}&'
        'destination=${destination.latitude},${destination.longitude}&'
        'key=${AppConstants.googleMapsApiKey}&'
        'language=es'; // Solicitamos resultados en español

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);

        if (data['status'] == 'OK') {
          // Usamos el modelo Directions para parsear la respuesta compleja
          final directions = Directions.fromMap(data);
          return directions;
        } else {
          throw Exception('Directions API error: ${data['status']} - ${data['error_message'] ?? ''}');
        }

      } else {
        throw Exception('Failed to load directions. Status code: ${response.statusCode}');
      }
    } catch (e) {
      // CORREGIDO: Usamos debugPrint en lugar de print, solo en modo desarrollo.
      if (kDebugMode) {
        debugPrint('Error fetching directions: $e');
      }
      rethrow;
    }
  }
}