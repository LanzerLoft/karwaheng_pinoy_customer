// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OtpValidateModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpValidateModel _$OtpValidateModelFromJson(Map<String, dynamic> json) {
  return OtpValidateModel(
    code: json['code'] as int,
    message: json['message'] as String,
    resendId: json['resendId'] as String,
  );
}

Map<String, dynamic> _$OtpValidateModelToJson(OtpValidateModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'resendId': instance.resendId,
    };
