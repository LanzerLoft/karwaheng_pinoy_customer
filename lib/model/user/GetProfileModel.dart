import 'package:json_annotation/json_annotation.dart';

part 'GetProfileModel.g.dart';

@JsonSerializable()
class GetProfileModel {
  String _message;
  Data _data;

  GetProfileModel({String message, Data data}) {
    this._message = message;
    this._data = data;
  }

  String get message => _message;
  set message(String message) => _message = message;
  Data get data => _data;
  set data(Data data) => _data = data;

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Data {
  int _id;
  Null _fcmToken;
  String _username;
  String _lastName;
  String _firstName;
  String _fullName;
  String _mobileNo;
  Null _businessName;
  Null _businessAddress;
  Null _sellingProducts;
  int _age;
  String _gender;
  Null _email;
  Null _profilePhotoPath;
  int _bookOften;
  Null _emailVerifiedAt;
  String _createdAt;
  String _updatedAt;
  List<Roles> _roles;

  Data(
      {int id,
      Null fcmToken,
      String username,
      String lastName,
      String firstName,
      String fullName,
      String mobileNo,
      Null businessName,
      Null businessAddress,
      Null sellingProducts,
      int age,
      String gender,
      Null email,
      Null profilePhotoPath,
      int bookOften,
      Null emailVerifiedAt,
      String createdAt,
      String updatedAt,
      List<Roles> roles}) {
    this._id = id;
    this._fcmToken = fcmToken;
    this._username = username;
    this._lastName = lastName;
    this._firstName = firstName;
    this._fullName = fullName;
    this._mobileNo = mobileNo;
    this._businessName = businessName;
    this._businessAddress = businessAddress;
    this._sellingProducts = sellingProducts;
    this._age = age;
    this._gender = gender;
    this._email = email;
    this._profilePhotoPath = profilePhotoPath;
    this._bookOften = bookOften;
    this._emailVerifiedAt = emailVerifiedAt;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._roles = roles;
  }

  int get id => _id;
  set id(int id) => _id = id;
  Null get fcmToken => _fcmToken;
  set fcmToken(Null fcmToken) => _fcmToken = fcmToken;
  String get username => _username;
  set username(String username) => _username = username;
  String get lastName => _lastName;
  set lastName(String lastName) => _lastName = lastName;
  String get firstName => _firstName;
  set firstName(String firstName) => _firstName = firstName;
  String get fullName => _fullName;
  set fullName(String fullName) => _fullName = fullName;
  String get mobileNo => _mobileNo;
  set mobileNo(String mobileNo) => _mobileNo = mobileNo;
  Null get businessName => _businessName;
  set businessName(Null businessName) => _businessName = businessName;
  Null get businessAddress => _businessAddress;
  set businessAddress(Null businessAddress) =>
      _businessAddress = businessAddress;
  Null get sellingProducts => _sellingProducts;
  set sellingProducts(Null sellingProducts) =>
      _sellingProducts = sellingProducts;
  int get age => _age;
  set age(int age) => _age = age;
  String get gender => _gender;
  set gender(String gender) => _gender = gender;
  Null get email => _email;
  set email(Null email) => _email = email;
  Null get profilePhotoPath => _profilePhotoPath;
  set profilePhotoPath(Null profilePhotoPath) =>
      _profilePhotoPath = profilePhotoPath;
  int get bookOften => _bookOften;
  set bookOften(int bookOften) => _bookOften = bookOften;
  Null get emailVerifiedAt => _emailVerifiedAt;
  set emailVerifiedAt(Null emailVerifiedAt) =>
      _emailVerifiedAt = emailVerifiedAt;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  List<Roles> get roles => _roles;
  set roles(List<Roles> roles) => _roles = roles;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _fcmToken = json['fcm_token'];
    _username = json['username'];
    _lastName = json['last_name'];
    _firstName = json['first_name'];
    _fullName = json['full_name'];
    _mobileNo = json['mobile_no'];
    _businessName = json['business_name'];
    _businessAddress = json['business_address'];
    _sellingProducts = json['selling_products'];
    _age = json['age'];
    _gender = json['gender'];
    _email = json['email'];
    _profilePhotoPath = json['profile_photo_path'];
    _bookOften = json['book_often'];
    _emailVerifiedAt = json['email_verified_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['roles'] != null) {
      _roles = new List<Roles>();
      json['roles'].forEach((v) {
        _roles.add(new Roles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['fcm_token'] = this._fcmToken;
    data['username'] = this._username;
    data['last_name'] = this._lastName;
    data['first_name'] = this._firstName;
    data['full_name'] = this._fullName;
    data['mobile_no'] = this._mobileNo;
    data['business_name'] = this._businessName;
    data['business_address'] = this._businessAddress;
    data['selling_products'] = this._sellingProducts;
    data['age'] = this._age;
    data['gender'] = this._gender;
    data['email'] = this._email;
    data['profile_photo_path'] = this._profilePhotoPath;
    data['book_often'] = this._bookOften;
    data['email_verified_at'] = this._emailVerifiedAt;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    if (this._roles != null) {
      data['roles'] = this._roles.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Roles {
  int _id;
  String _name;
  String _guardName;
  String _createdAt;
  String _updatedAt;

  Roles(
      {int id,
      String name,
      String guardName,
      String createdAt,
      String updatedAt}) {
    this._id = id;
    this._name = name;
    this._guardName = guardName;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get guardName => _guardName;
  set guardName(String guardName) => _guardName = guardName;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Roles.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _guardName = json['guard_name'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['guard_name'] = this._guardName;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}
