import 'package:json_annotation/json_annotation.dart';

part 'TransferModel.g.dart';

@JsonSerializable()
class TransferModel {
  bool _status;
  String _message;
  Errors _errors;

  TransferModel({bool status, String message, Errors errors}) {
    this._status = status;
    this._message = message;
    this._errors = errors;
  }

  bool get status => _status;
  set status(bool status) => _status = status;
  String get message => _message;
  set message(String message) => _message = message;
  Errors get errors => _errors;
  set errors(Errors errors) => _errors = errors;

  TransferModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _message = json['message'];
    _errors =
        json['errors'] != null ? new Errors.fromJson(json['errors']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['message'] = this._message;
    if (this._errors != null) {
      data['errors'] = this._errors.toJson();
    }
    return data;
  }
}

class Errors {
  List<String> _riderId;

  Errors({List<String> riderId}) {
    this._riderId = riderId;
  }

  List<String> get riderId => _riderId;
  set riderId(List<String> riderId) => _riderId = riderId;

  Errors.fromJson(Map<String, dynamic> json) {
    _riderId = json['rider_id'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rider_id'] = this._riderId;
    return data;
  }
}
