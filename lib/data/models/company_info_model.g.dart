// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactInfoImpl _$$ContactInfoImplFromJson(Map<String, dynamic> json) =>
    _$ContactInfoImpl(
      whatsappUrl: json['whatsapp_url'] as String?,
      facebookUrl: json['facebook_url'] as String?,
      instagramUrl: json['instagram_url'] as String?,
      websiteUrl: json['website_url'] as String?,
    );

Map<String, dynamic> _$$ContactInfoImplToJson(_$ContactInfoImpl instance) =>
    <String, dynamic>{
      'whatsapp_url': instance.whatsappUrl,
      'facebook_url': instance.facebookUrl,
      'instagram_url': instance.instagramUrl,
      'website_url': instance.websiteUrl,
    };

_$AboutUsInfoImpl _$$AboutUsInfoImplFromJson(Map<String, dynamic> json) =>
    _$AboutUsInfoImpl(
      mission: json['mission'] as String?,
      vision: json['vision'] as String?,
      objective: json['objective'] as String?,
      history: json['history'] as String?,
    );

Map<String, dynamic> _$$AboutUsInfoImplToJson(_$AboutUsInfoImpl instance) =>
    <String, dynamic>{
      'mission': instance.mission,
      'vision': instance.vision,
      'objective': instance.objective,
      'history': instance.history,
    };
