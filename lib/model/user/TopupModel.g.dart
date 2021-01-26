// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TopupModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopupModel _$TopupModelFromJson(Map<String, dynamic> json) {
  return TopupModel(
    status: json['status'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$TopupModelToJson(TopupModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
