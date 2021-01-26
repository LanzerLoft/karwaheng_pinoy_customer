import 'package:json_annotation/json_annotation.dart';

part 'OtpRequestModel.g.dart';

@JsonSerializable()
class OtpRequestModel {
  int _code;
  String _message;
  String _uniqueId;
  String _type;

  OtpRequestModel({int code, String message, String uniqueId, String type}) {
    this._code = code;
    this._message = message;
    this._uniqueId = uniqueId;
    this._type = type;
  }

  int get code => _code;
  set code(int code) => _code = code;
  String get message => _message;
  set message(String message) => _message = message;
  String get uniqueId => _uniqueId;
  set uniqueId(String uniqueId) => _uniqueId = uniqueId;
  String get type => _type;
  set type(String type) => _type = type;

  OtpRequestModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _message = json['message'];
    _uniqueId = json['uniqueId'];
    _type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['message'] = this._message;
    data['uniqueId'] = this._uniqueId;
    data['type'] = this._type;
    return data;
  }
}
