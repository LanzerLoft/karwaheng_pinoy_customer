import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:kp_mobile/model/user/GetProfileModel.dart';
import 'package:kp_mobile/model/user/UpdateProfileModel.dart';

class ProfileServices {
  Future<UpdateProfileModel> updateInfo({
    String firstName,
    String lastName,
    String username,
  }) async {
    var box = await Hive.openBox('authBox');
    Map<String, String> body = {};

    if (firstName != null) {
      body['first_name'] = firstName;
    }

    if (lastName != null) {
      body['last_name'] = lastName;
    }

    if (username != null) {
      body['username'] = username;
    }

    return await http
        .post(
          '${GlobalConfiguration().get('api_url')}update-info',
          headers: {
            HttpHeaders.acceptHeader: 'application/json',
            HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
            HttpHeaders.authorizationHeader: 'Bearer ${box.get('token')}',
          },
          body: body,
        )
        .then(
          (res) => UpdateProfileModel.fromJson(
            json.decode(res.body),
          ),
        );
  }

  Future<GetProfileModel> getProfile() async {
    var box = await Hive.openBox('authBox');
    return await http.post(
      '${GlobalConfiguration().get('api_url')}profile',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.authorizationHeader: 'Bearer ${box.get('token')}',
      },
    ).then(
      (res) {
        return GetProfileModel.fromJson(
          json.decode(res.body),
        );
      },
    );
  }
}
