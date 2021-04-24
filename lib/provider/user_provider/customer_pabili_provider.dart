import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_merchantSearch.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_pabili_summary.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidDropOffInfo%20.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidSearchAddress.dart';
import 'package:kp_mobile/services/ProfileServices.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';

class UserPabiliProvider with ChangeNotifier {
  //
  //
  // PABILI ORDER NOW ORDER LATER
  bool _orderNow = true;
  bool _orderLater = false;

  // GET PABILI ORDER NOW ORDER LATER
  bool get orderNow => _orderNow;
  bool get orderLater => _orderLater;

  void selectedOrderlater() {
    _orderLater = true;
    _orderNow = false;
    print("ORDER LATER CLICKED");
    notifyListeners();
  }

  void selectedOrderNow() {
    _orderNow = true;
    _orderLater = false;
    print("ORDER NOW CLICKED");
    notifyListeners();
  }
}
