import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

class CustomTextStyle {
  static CustomTextStyle _instance;

  static final TextStyle textStyleBlue =
      TextStyle(color: Pallete.kpBlue, fontSize: 32);
  static final TextStyle textblue14 =
      TextStyle(color: Pallete.kpBlue, fontSize: 14);
  static final TextStyle register =
      TextStyle(color: Pallete.kpRed, fontSize: 16);
  static final TextStyle textfield =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textfield16 =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  CustomTextStyle._internal() {
    _instance = this;
  }

  factory CustomTextStyle() => _instance ?? CustomTextStyle._internal();
}
