import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info_model.freezed.dart';
part 'company_info_model.g.dart';

// Documento: contact
@freezed
class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    // CORREGIDO: Usar lowerCamelCase (Dart) y JsonKey para mapear al snake_case (Firestore).
    @JsonKey(name: 'whatsapp_url') String? whatsappUrl,
    @JsonKey(name: 'facebook_url') String? facebookUrl,
    @JsonKey(name: 'instagram_url') String? instagramUrl,
    @JsonKey(name: 'website_url') String? websiteUrl,
  }) = _ContactInfo;

  factory ContactInfo.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoFromJson(json);
}

// Documento: about_us
@freezed
class AboutUsInfo with _$AboutUsInfo {
  const factory AboutUsInfo({
    String? mission,
    String? vision,
    String? objective,
    String? history,
  }) = _AboutUsInfo;

  factory AboutUsInfo.fromJson(Map<String, dynamic> json) =>
      _$AboutUsInfoFromJson(json);
}

// Documento: company_info
// (Parece que el archivo estaba incompleto en el contexto original, asegúrate de completarlo si es necesario)