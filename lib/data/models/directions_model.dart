import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'directions_model.freezed.dart';

@freezed
class Directions with _$Directions {
  const factory Directions({
    required LatLngBounds bounds,
    required List<LatLng> polylinePoints,
    required String totalDistance,
    required String totalDuration,
  }) = _Directions;

  /// Parsea la respuesta JSON de la API de Directions de Google.
  factory Directions.fromMap(Map<String, dynamic> map) {
    // Verifica si la respuesta contiene una ruta válida
    if ((map['routes'] as List).isEmpty) {
      throw Exception('No se encontró una ruta.');
    }

    // Obtiene la información de la primera ruta
    final data = Map<String, dynamic>.from(map['routes'][0]);

    // Bounds (Límites del mapa)
    final northeast = data['bounds']['northeast'];
    final southwest = data['bounds']['southwest'];
    final bounds = LatLngBounds(
      northeast: LatLng(northeast['lat'], northeast['lng']),
      southwest: LatLng(southwest['lat'], southwest['lng']),
    );

    // Distancia y Duración
    String distance = '';
    String duration = '';
    if ((data['legs'] as List).isNotEmpty) {
      final leg = data['legs'][0];
      distance = leg['distance']['text'];
      duration = leg['duration']['text'];
    }

    // Polyline Points (Decodificación usando flutter_polyline_points)
    final polyline = data['overview_polyline']['points'];

    // CORREGIDO: Uso correcto de la librería. Se debe instanciar PolylinePoints().
    // En la versión 2.0.0+ de la librería, el constructor no requiere API Key y el método es de instancia.
    final polylinePoints = PolylinePoints()
        .decodePolyline(polyline)
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();

    return Directions(
      bounds: bounds,
      polylinePoints: polylinePoints,
      totalDistance: distance,
      totalDuration: duration,
    );
  }
}