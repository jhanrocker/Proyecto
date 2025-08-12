import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// --- Convertidor para Timestamp (Soluciona el error SEVERE) ---

// Convertidor necesario porque json_serializable no sabe manejar Timestamp por defecto.
class TimestampConverter implements JsonConverter<Timestamp, Timestamp> {
  const TimestampConverter();

  @override
  Timestamp fromJson(Timestamp timestamp) {
    // Cuando Firestore lee el dato (usando el SDK), ya es un Timestamp.
    return timestamp;
  }

  @override
  Timestamp toJson(Timestamp timestamp) {
    // Cuando enviamos el dato a Firestore (usando el SDK), lo enviamos como Timestamp.
    return timestamp;
  }
}

// --- Convertidor para GeoPoint ---

class GeoPointConverter implements JsonConverter<GeoPoint, GeoPoint> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(GeoPoint geoPoint) {
    return geoPoint;
  }

  @override
  GeoPoint toJson(GeoPoint geoPoint) => geoPoint;
}

// --- Convertidor para GeoPoint Opcional (Nullable) ---

class NullableGeoPointConverter implements JsonConverter<GeoPoint?, GeoPoint?> {
  const NullableGeoPointConverter();

  @override
  GeoPoint? fromJson(GeoPoint? geoPoint) {
    return geoPoint;
  }

  @override
  GeoPoint? toJson(GeoPoint? geoPoint) => geoPoint;
}