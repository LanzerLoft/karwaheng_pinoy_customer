import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

class CustomTextStyle {
  static CustomTextStyle _instance;

  static final TextStyle textStyleBlue =
      TextStyle(color: Pallete.kpBlue, fontSize: 32);

  CustomTextStyle._internal() {
    _instance = this;
  }

  factory CustomTextStyle() => _instance ?? CustomTextStyle._internal();
}
