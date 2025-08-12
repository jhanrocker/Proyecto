import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_model.freezed.dart';
part 'bank_model.g.dart';

@freezed
class BankModel with _$BankModel {
  const factory BankModel({
    String? id,
    required String name,
    required bool isActive,
    required String country,
  }) = _BankModel;

  factory BankModel.fromJson(Map<String, dynamic> json) =>
      _$BankModelFromJson(json);

  factory BankModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>?;
    if (data == null) throw Exception("Bank document data is null");
     data['id'] = doc.id;
    return BankModel.fromJson(data);
  }
}