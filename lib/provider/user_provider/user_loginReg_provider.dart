import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/AuthProvider.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_dashBoard.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';

class UserLoginRegProvider with ChangeNotifier {
  final authProviderLogin = AuthProvider();

  List<String> listCategory = [
    "Inquiry",
    "Report a Problem",
    "Suggestion",
    "Other",
  ];

  List<String> listgender = [
    "Male",
    "Female",
    "Prefer not to say",
  ];
  List<String> listhomeTown = [
    "Manila",
    "Quezon City",
    "Caloocan",
    "Las Piñas",
    "Makati",
    "Malabon",
    "Mandaluyong",
    "Marikina",
    "Muntinlupa",
    "Navotas",
    "Parañaque",
    "Pasay",
    "Pasig",
    "San Juan",
    "Valenzuela",
    "Taguig",
    "Pateros",
  ];

  List<String> listage = [
    "18-30ys old ",
    "30-40ys old",
    "40-60ys old",
  ];

  List<String> listproducts = [
    "Automotive products",
    "Clothing and Apparel ",
    "Consumer Appliances",
    "Electronics",
    "Fashion",
    "Food",
    "Groceries",
    "Health and Beauty",
    "Pet Supplies",
    "Sports and Outdoors",
    "Toys & Games",
    "Others:_____________",
  ];
  //
  //
  //STRINGS USER REGISTER
  String _loginMobileNo;
  String _loginPasscode;

  //
  //
  //STRINGS USER REGISTER
  String _firstName;
  String _lastName;
  String _username;
  String _mobileNo;
  String _age;
  String _businessName;
  String _businessAddress;
  String _bookOften;
  String _passcode;

  //
  //
  // GETTERS USER LOGIN
  String get loginMobileNo => _loginMobileNo;
  String get loginPasscode => _loginPasscode;
  //
  //
  // GETTERS USER REGISTER
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get username => _username;
  String get mobileNo => _mobileNo;
  String get age => _age;
  String get businessName => _businessName;
  String get businessAddress => _businessAddress;
  String get bookOften => _bookOften;
  String get passcode => _passcode;

//
//
//
// USER Login
  mobileNoLogin(String value) {
    _loginMobileNo = value;
    notifyListeners();
  }

  passcodeLogin(String value) {
    _loginPasscode = value;
    notifyListeners();
  }

//
//
//
// USER REGISTER
  regFirstName(String value) {
    _firstName = value;
    notifyListeners();
  }

  regLastName(String value) {
    _lastName = value;
    notifyListeners();
  }

  regUsername(String value) {
    _username = value;
    notifyListeners();
  }

  regAge(String value) {
    _age = value;
    notifyListeners();
  }

  regBusinessName(String value) {
    _businessName = value;
    notifyListeners();
  }

  regBusinessAddress(String value) {
    _businessAddress = value;
    notifyListeners();
  }

  regBookOften(String value) {
    _bookOften = value;
    notifyListeners();
  }

  regPasscode(String value) {
    _passcode = value;
    notifyListeners();
  }

  logInUser(BuildContext context) async {
    await authProviderLogin.userLogin(
        loginMobileNo: loginMobileNo, loginpasscode: loginPasscode);

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => UserDashboard()));
  }

  registerUser(BuildContext context) async {
    var register = await authProviderLogin.userRegister(
      firstName: firstName,
      lastName: lastName,
      username: username,
      mobileNo: mobileNo,
      age: age,
      bookOften: bookOften,
      passcode: passcode,
    );

    print(register);
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => UserLoginResponsive()));
  }
}
