import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:http/http.dart' as http;
import 'package:kp_mobile/model/user/UpdateProfileModel.dart';

class ProfileServices {
  Future<UpdateProfileModel> updateInfo({
    @required String token,
    String firstName,
    String lastName,
    String username,
  }) async {
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
            HttpHeaders.authorizationHeader: 'Bearer $token',
          },
          body: body,
        )
        .then(
          (res) => UpdateProfileModel.fromJson(
            json.decode(res.body),
          ),
        );
  }
}
