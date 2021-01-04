// import 'dart:convert';
// import 'dart:io';
// import 'package:flutter/widgets.dart';
// import 'package:kp_mobile/config/Url.dart';
// import 'package:kp_mobile/model/user/LoginModel.dart';
// import 'package:http/http.dart' as http;
// import 'package:kp_mobile/model/user/RegisterModel.dart';

// class AuthProvider {
//   Future<LoginModel> userLogin({
//     @required String loginMobileNo,
//     @required String loginpasscode,
//   }) async {
//     return await http.post(
//       Url.userLogin,
//       headers: {
//         HttpHeaders.acceptHeader: 'application/json',
//         HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
//       },
//       body: {
//         'mobile_no': loginMobileNo,
//         'password': loginpasscode,
//       },
//     ).then(
//       (res) => LoginModel.fromJson(
//         json.decode(res.body),
//       ),
//     );
//   }

//   Future<RegisterModel> userRegister({
//     @required String firstName,
//     @required String lastName,
//     @required String username,
//     @required String mobileNo,
//     @required String age,
//     String businessName,
//     String businessAddress,
//     @required String bookOften,
//     @required String passcode,
//   }) async =>
//       await http.post(
//         Url.userRegister,
//         headers: {
//           HttpHeaders.acceptHeader: 'application/json',
//           HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
//         },
//         body: {
//           'first_name': firstName,
//           'last_name': lastName,
//           'username': username,
//           'mobile_no': mobileNo,
//           'age': age,
//           'business_name': businessName,
//           'business_address': businessAddress,
//           'book_often': bookOften,
//           'password': passcode,
//         },
//       ).then((res) => RegisterModel.fromJson(json.decode(res.body)));
// }
