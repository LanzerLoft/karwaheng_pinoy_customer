// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TransferModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferModel _$TransferModelFromJson(Map<String, dynamic> json) {
  return TransferModel(
    status: json['status'] as bool,
    message: json['message'] as String,
    errors: json['errors'] == null
        ? null
        : Errors.fromJson(json['errors'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TransferModelToJson(TransferModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };
