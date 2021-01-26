import 'package:json_annotation/json_annotation.dart';

part 'OtpValidateModel.g.dart';

@JsonSerializable()
class OtpValidateModel {
  int _code;
  String _message;
  String _resendId;

  OtpValidateModel({int code, String message, String resendId}) {
    this._code = code;
    this._message = message;
    this._resendId = resendId;
  }

  int get code => _code;
  set code(int code) => _code = code;
  String get message => _message;
  set message(String message) => _message = message;
  String get resendId => _resendId;
  set resendId(String resendId) => _resendId = resendId;

  OtpValidateModel.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
    _message = json['message'];
    _resendId = json['resendId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    data['message'] = this._message;
    data['resendId'] = this._resendId;
    return data;
  }
}
