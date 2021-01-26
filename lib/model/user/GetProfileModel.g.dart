// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GetProfileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileModel _$GetProfileModelFromJson(Map<String, dynamic> json) {
  return GetProfileModel(
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GetProfileModelToJson(GetProfileModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
