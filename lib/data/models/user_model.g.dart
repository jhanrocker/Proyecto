// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      cedula: json['cedula'] as String,
      photoUrl: json['photoUrl'] as String?,
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      role: json['role'] as String,
      codigoEmpleado: json['codigoEmpleado'] as String?,
      employeeStatus: json['employeeStatus'] as String? ??
          AppConstants.employeeStatusDisponible,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'cedula': instance.cedula,
      'photoUrl': instance.photoUrl,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'role': instance.role,
      'codigoEmpleado': instance.codigoEmpleado,
      'employeeStatus': instance.employeeStatus,
    };
