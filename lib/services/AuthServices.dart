import 'dart:convert';
import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kp_mobile/model/user/LoginModel.dart';
import 'package:http/http.dart' as http;
import 'package:kp_mobile/model/user/OtpRequestModel.dart';
import 'package:kp_mobile/model/user/OtpValidateModel.dart';
import 'package:kp_mobile/model/user/RegisterModel.dart';

class AuthServices {
  Future<LoginModel> userLogin({
    @required String loginMobileNo,
    @required String loginpasscode,
  }) async {
    return await http.post(
      '${GlobalConfiguration().get('api_url')}login',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
      },
      body: {
        'mobile_no': loginMobileNo,
        'password': loginpasscode,
      },
    ).then(
      (res) => LoginModel.fromJson(
        json.decode(res.body),
      ),
    );
  }

  Future<OtpRequestModel> requestOtp({
    String email,
    String phone,
  }) async {
    /**
     * Use either phone or email
     */
    Map<String, String> body = {};

    if (email == null && phone != null) {
      body = {
        'phone': phone,
      };
    }

    if (phone == null && email != null) {
      body = {
        'email': email,
      };
    }

    return await http
        .post(
          '${GlobalConfiguration().get('api_url')}otp',
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
          },
          body: body,
        )
        .then((res) => OtpRequestModel.fromJson(json.decode(res.body)));
  }

  Future<OtpValidateModel> validateOtp({
    String uniqueId,
    String otp,
  }) async {
    return await http.post(
      '${GlobalConfiguration().get('api_url')}otp/validate',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
      },
      body: {
        'uniqueId': uniqueId,
        'otp': otp,
      },
    ).then((res) => OtpValidateModel.fromJson(json.decode(res.body)));
  }

  // Future<OtpValidateModel> resendOtp({
  //   String uniqueId,
  // }) async {
  //   return await http.post(
  //     '${GlobalConfiguration().get('api_url')}otp/resend',
  //     headers: {
  //       HttpHeaders.acceptHeader: 'application/json',
  //     },
  //     body: {
  //       'uniqueId': uniqueId,
  //     },
  //   ).then((res) => OtpValidateModel.fromJson(json.decode(res.body)));
  // }

  Future<RegisterModel> userRegister({
    @required String firstName,
    @required String lastName,
    @required String username,
    @required String mobileNo,
    @required String age,
    String businessName,
    String businessAddress,
    String bookOften,
    @required String passcode,
    @required String type,
  }) async =>
      await http.post(
        '${GlobalConfiguration().get('api_url')}register?isSeller=$type',
        headers: {
          HttpHeaders.acceptHeader: 'application/json',
          HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        },
        body: {
          'first_name': firstName,
          'last_name': lastName,
          'username': username,
          'mobile_no': mobileNo,
          'age': age,
          'business_name': businessName,
          'business_address': businessAddress,
          'book_often': bookOften,
          'password': passcode,
        },
      ).then((res) => RegisterModel.fromJson(json.decode(res.body)));
}
