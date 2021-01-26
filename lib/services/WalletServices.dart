import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kp_mobile/model/user/GetBalanceModel.dart';
import 'package:http/http.dart' as http;
import 'package:kp_mobile/model/user/TopupModel.dart';

class WalletServices {
  Future<GetBalanceModel> getBalance({
    @required String token,
  }) async {
    return await http.post(
      '${GlobalConfiguration().get('api_url')}wallet/balance',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
    ).then(
      (res) => GetBalanceModel.fromJson(
        json.decode(res.body),
      ),
    );
  }

  Future<TopupModel> topup({
    @required String token,
    @required String amount,
  }) async {
    return await http.post(
      '${GlobalConfiguration().get('api_url')}wallet/topup',
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
        HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
        HttpHeaders.authorizationHeader: 'Bearer $token',
      },
      body: {
        'amount': amount,
      },
    ).then(
      (res) => TopupModel.fromJson(
        json.decode(res.body),
      ),
    );
  }
}
