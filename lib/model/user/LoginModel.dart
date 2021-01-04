import 'package:json_annotation/json_annotation.dart';

part 'LoginModel.g.dart';

@JsonSerializable()
class LoginModel {
  bool _status;
  String _token;
  User _user;
  String _message;

  LoginModel({bool status, String token, User user, String message}) {
    this._status = status;
    this._token = token;
    this._user = user;
    this._message = message;
  }

  bool get status => _status;
  set status(bool status) => _status = status;
  String get token => _token;
  set token(String token) => _token = token;
  User get user => _user;
  set user(User user) => _user = user;
  String get message => _message;
  set message(String message) => _message = message;

  LoginModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _token = json['token'];
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
    _message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['token'] = this._token;
    if (this._user != null) {
      data['user'] = this._user.toJson();
    }
    data['message'] = this._message;
    return data;
  }
}

class User {
  String _firstName;
  String _lastName;
  String _fullName;
  String _mobileNo;
  String _username;

  User(
      {String firstName,
      String lastName,
      String fullName,
      String mobileNo,
      String username}) {
    this._firstName = firstName;
    this._lastName = lastName;
    this._fullName = fullName;
    this._mobileNo = mobileNo;
    this._username = username;
  }

  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  String get mobileNo => _mobileNo;
  set mobileNo(String mobileNo) => _mobileNo = mobileNo;
  String get username => _username;
  set username(String username) => _username = username;

  User.fromJson(Map<String, dynamic> json) {
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
    _mobileNo = json['mobile_no'];
    _username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this._firstName;
    data['last_name'] = this._lastName;
    data['full_name'] = this._fullName;
    data['mobile_no'] = this._mobileNo;
    data['username'] = this._username;
    return data;
  }
}
