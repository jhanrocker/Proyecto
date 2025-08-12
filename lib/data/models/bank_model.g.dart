// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankModelImpl _$$BankModelImplFromJson(Map<String, dynamic> json) =>
    _$BankModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      isActive: json['isActive'] as bool,
      country: json['country'] as String,
    );

Map<String, dynamic> _$$BankModelImplToJson(_$BankModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isActive': instance.isActive,
      'country': instance.country,
    };
