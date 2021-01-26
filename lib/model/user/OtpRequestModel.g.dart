// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OtpRequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestModel _$OtpRequestModelFromJson(Map<String, dynamic> json) {
  return OtpRequestModel(
    code: json['code'] as int,
    message: json['message'] as String,
    uniqueId: json['uniqueId'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$OtpRequestModelToJson(OtpRequestModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'uniqueId': instance.uniqueId,
      'type': instance.type,
    };
