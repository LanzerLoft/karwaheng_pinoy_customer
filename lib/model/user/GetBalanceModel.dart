import 'package:json_annotation/json_annotation.dart';

part 'GetBalanceModel.g.dart';

@JsonSerializable()
class GetBalanceModel {
  String _amount;
  String _message;

  GetBalanceModel({String amount, String message}) {
    this._amount = amount;
    this._message = message;
  }

  String get amount => _amount;
  set amount(String amount) => _amount = amount;
  String get message => _message;
  set message(String message) => _message = message;

  GetBalanceModel.fromJson(Map<String, dynamic> json) {
    _amount = json['amount'];
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this._amount;
    data['message'] = this._message;
    return data;
  }
}
