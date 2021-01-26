// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UpdateProfileModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileModel _$UpdateProfileModelFromJson(Map<String, dynamic> json) {
  return UpdateProfileModel(
    status: json['status'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$UpdateProfileModelToJson(UpdateProfileModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
