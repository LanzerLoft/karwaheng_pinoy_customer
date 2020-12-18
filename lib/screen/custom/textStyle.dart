import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

class CustomTextStyle {
  static CustomTextStyle _instance;

  static final TextStyle textStyleBlue =
      TextStyle(color: Pallete.kpBlue, fontSize: 32);
  static final TextStyle textStyleBlue28 =
      TextStyle(color: Pallete.kpBlue, fontSize: 28);
  static final TextStyle textStyleBlue22 =
      TextStyle(color: Pallete.kpBlue, fontSize: 22);
  static final TextStyle textStyleBlue18 =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textStyleBluebold18 = TextStyle(
      color: Pallete.kpBlue, fontWeight: FontWeight.bold, fontSize: 18);
  static final TextStyle textStyleBlue12 =
      TextStyle(color: Pallete.kpBlue, fontSize: 12);
  static final TextStyle textStyleBlue14 =
      TextStyle(color: Pallete.kpBlue, fontSize: 14);
  static final TextStyle textStyleBlue13 =
      TextStyle(color: Pallete.kpBlue, fontSize: 16);
  static final TextStyle textStyleWhite14 =
      TextStyle(color: Pallete.kpWhite, fontSize: 14);
  static final TextStyle textStyleWhite18 =
      TextStyle(color: Pallete.kpWhite, fontSize: 18);
  static final TextStyle textStyleWhite24 =
      TextStyle(color: Pallete.kpWhite, fontSize: 24);
  static final TextStyle textStyleWhite20 =
      TextStyle(color: Pallete.kpWhite, fontSize: 20);
  static final TextStyle textStyleBlack14 =
      TextStyle(color: Pallete.kpBlack, fontSize: 14);
  static final TextStyle textblue14 =
      TextStyle(color: Pallete.kpBlue, fontSize: 14);
  static final TextStyle textgrey14 =
      TextStyle(color: Pallete.kpGrey, fontSize: 14);
  static final TextStyle register =
      TextStyle(color: Pallete.kpRed, fontSize: 16);
  static final TextStyle textStyleRed16 =
      TextStyle(color: Pallete.kpRed, fontSize: 16);
  static final TextStyle textfield =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textfield16 =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  // TEXT STYLE PICKUP PAGE
  static final TextStyle textPickUpLabel =
      TextStyle(fontSize: 19, fontWeight: FontWeight.bold);
  static final TextStyle textPickUpHint =
      TextStyle(color: Colors.grey, fontSize: 14);

  CustomTextStyle._internal() {
    _instance = this;
  }

  factory CustomTextStyle() => _instance ?? CustomTextStyle._internal();
}
