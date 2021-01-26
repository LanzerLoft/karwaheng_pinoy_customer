// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetBalanceModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetBalanceModel _$GetBalanceModelFromJson(Map<String, dynamic> json) {
  return GetBalanceModel(
    amount: json['amount'] as String,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$GetBalanceModelToJson(GetBalanceModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'message': instance.message,
    };
