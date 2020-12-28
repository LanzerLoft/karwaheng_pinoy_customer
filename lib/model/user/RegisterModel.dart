import 'package:json_annotation/json_annotation.dart';

part 'RegisterModel.g.dart';

@JsonSerializable()
class RegisterModel {
  @JsonKey(ignore: true)
  bool _status;
  String _message;
  @JsonKey(ignore: true)
  Errors _errors;

  RegisterModel({bool status, String message, Errors errors}) {
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

  RegisterModel.fromJson(Map<String, dynamic> json) {
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
  @JsonKey(ignore: true)
  List<String> _firstName;
  @JsonKey(ignore: true)
  List<String> _lastName;
  @JsonKey(ignore: true)
  List<String> _username;
  @JsonKey(ignore: true)
  List<String> _mobileNo;
  @JsonKey(ignore: true)
  List<String> _age;
  @JsonKey(ignore: true)
  List<String> _password;
  @JsonKey(ignore: true)
  List<String> _bookOften;

  Errors(
      {List<String> firstName,
      List<String> lastName,
      List<String> username,
      List<String> mobileNo,
      List<String> age,
      List<String> password,
      List<String> bookOften}) {
    this._firstName = firstName;
    this._lastName = lastName;
    this._username = username;
    this._mobileNo = mobileNo;
    this._age = age;
    this._password = password;
    this._bookOften = bookOften;
  }

  List<String> get firstName => _firstName;
  set firstName(List<String> firstName) => _firstName = firstName;
  List<String> get lastName => _lastName;
  set lastName(List<String> lastName) => _lastName = lastName;
  List<String> get username => _username;
  set username(List<String> username) => _username = username;
  List<String> get mobileNo => _mobileNo;
  set mobileNo(List<String> mobileNo) => _mobileNo = mobileNo;
  List<String> get age => _age;
  set age(List<String> age) => _age = age;
  List<String> get password => _password;
  set password(List<String> password) => _password = password;
  List<String> get bookOften => _bookOften;
  set bookOften(List<String> bookOften) => _bookOften = bookOften;

  Errors.fromJson(Map<String, dynamic> json) {
    _firstName = json['first_name'].cast<String>();
    _lastName = json['last_name'].cast<String>();
    _username = json['username'].cast<String>();
    _mobileNo = json['mobile_no'].cast<String>();
    _age = json['age'].cast<String>();
    _password = json['password'].cast<String>();
    _bookOften = json['book_often'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['username'] = this._username;
    data['mobile_no'] = this._mobileNo;
    data['age'] = this._age;
    data['password'] = this._password;
    data['book_often'] = this._bookOften;
    return data;
  }
}
