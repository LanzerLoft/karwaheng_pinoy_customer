import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

class CustomTextStyle {
  static CustomTextStyle _instance;

  static final TextStyle textStyleBlue =
      TextStyle(color: Pallete.kpBlue, fontSize: 32);
  static final TextStyle textStyleBlue45 =
      TextStyle(color: Pallete.kpBlue, fontSize: 45);
  static final TextStyle textStyleBlue28 =
      TextStyle(color: Pallete.kpBlue, fontSize: 28);
  static final TextStyle textStyleBlue20 =
      TextStyle(color: Pallete.kpBlue, fontSize: 22);
  static final TextStyle textStyleBlue22 =
      TextStyle(color: Pallete.kpBlue, fontSize: 20);
  static final TextStyle textStyleBlue18 =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textStyleBluebold16 = TextStyle(
      color: Pallete.kpBlue, fontWeight: FontWeight.bold, fontSize: 16);
  static final TextStyle textStyleBluebold18 = TextStyle(
      color: Pallete.kpBlue, fontWeight: FontWeight.bold, fontSize: 18);
  static final TextStyle textStyleBlue10 =
      TextStyle(color: Pallete.kpBlue, fontSize: 10);
  static final TextStyle textStyleBlue12 =
      TextStyle(color: Pallete.kpBlue, fontSize: 12);
  static final TextStyle textStyleBlue14 =
      TextStyle(color: Pallete.kpBlue, fontSize: 14);
  static final TextStyle textStyleBlue13 =
      TextStyle(color: Pallete.kpBlue, fontSize: 13);
  static final TextStyle textStyleBlue16 =
      TextStyle(color: Pallete.kpBlue, fontSize: 16);
  static final TextStyle textStyleBlue32 =
      TextStyle(color: Pallete.kpBlue, fontSize: 32);
  static final TextStyle textStyleWhite12 =
      TextStyle(color: Pallete.kpWhite, fontSize: 12);
  static final TextStyle textStyleWhite14 =
      TextStyle(color: Pallete.kpWhite, fontSize: 14);
  static final TextStyle textStyleWhitebold16 = TextStyle(
      color: Pallete.kpWhite, fontWeight: FontWeight.bold, fontSize: 16);
  static final TextStyle textStyleWhite18 =
      TextStyle(color: Pallete.kpWhite, fontSize: 18);

  static final TextStyle textStyleWhite24 =
      TextStyle(color: Pallete.kpWhite, fontSize: 24);
  static final TextStyle textStyleWhite20 =
      TextStyle(color: Pallete.kpWhite, fontSize: 20);
  static final TextStyle textStyleWhite22 =
      TextStyle(color: Pallete.kpWhite, fontSize: 22);
  static final TextStyle textStyleBlack12 =
      TextStyle(color: Pallete.kpBlack, fontSize: 12);
  static final TextStyle textStyleBlack14 =
      TextStyle(color: Pallete.kpBlack, fontSize: 14);
  static final TextStyle textStyleBlack16 =
      TextStyle(color: Pallete.kpBlack, fontSize: 16);
  static final TextStyle textStyleBlackbold16 = TextStyle(
      color: Pallete.kpBlack, fontWeight: FontWeight.bold, fontSize: 16);
  static final TextStyle textStyleBlack18 =
      TextStyle(color: Pallete.kpBlack, fontSize: 18);
  static final TextStyle textStyleGrey10 =
      TextStyle(color: Pallete.kpGrey, fontSize: 10);
  static final TextStyle textStyleGrey13 =
      TextStyle(color: Pallete.kpGrey, fontSize: 13);
  static final TextStyle textStyleGrey14 =
      TextStyle(color: Pallete.kpGrey, fontSize: 14);
  static final TextStyle textStyleGrey15 =
      TextStyle(color: Pallete.kpGrey, fontSize: 15);
  static final TextStyle textStyleGrey16 =
      TextStyle(color: Pallete.kpGrey, fontSize: 16);
  static final TextStyle textStyleGreybold16 = TextStyle(
      color: Pallete.kpGrey, fontWeight: FontWeight.bold, fontSize: 16);
  static final TextStyle textStyleGrey18 =
      TextStyle(color: Pallete.kpGrey, fontSize: 18);
  static final TextStyle textStyleGrey20 =
      TextStyle(color: Pallete.kpGrey, fontSize: 20);
  static final TextStyle textStyleGrey22 =
      TextStyle(color: Pallete.kpGrey, fontSize: 22);
  static final TextStyle textStyleGrey32 =
      TextStyle(color: Pallete.kpGrey, fontSize: 32);
  //
  //
  //
  //
  //
  //
  static final TextStyle textStyleRed14 =
      TextStyle(color: Pallete.kpRed, fontSize: 14);
  static final TextStyle textStyleRed16 =
      TextStyle(color: Pallete.kpRed, fontSize: 16);
  static final TextStyle textStyleRed18 =
      TextStyle(color: Pallete.kpRed, fontSize: 18);
  static final TextStyle textStyleRed20 =
      TextStyle(color: Pallete.kpRed, fontSize: 20);
  //
  //
  //
  //
  //
  //
  static final TextStyle textblue14 =
      TextStyle(color: Pallete.kpBlue, fontSize: 14);

  static final TextStyle textblue16 =
      TextStyle(color: Pallete.kpBlue, fontSize: 16);
  static final TextStyle textgrey14 =
      TextStyle(color: Pallete.kpGrey, fontSize: 14);
  static final TextStyle register =
      TextStyle(color: Pallete.kpRed, fontSize: 16);
  static final TextStyle textfield =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textfield16 =
      TextStyle(color: Pallete.kpBlue, fontSize: 18);
  static final TextStyle textfieldBlack13 =
      TextStyle(color: Pallete.kpBlack, fontSize: 13);
  static final TextStyle textfieldBlack16 =
      TextStyle(color: Pallete.kpBlack, fontSize: 16);
  static final TextStyle textfieldBlack18 =
      TextStyle(color: Pallete.kpBlack, fontSize: 18);
  static final TextStyle textfieldBlack24 =
      TextStyle(color: Pallete.kpBlack, fontSize: 24);
  // TEXT STYLE PICKUP PAGE
  static final TextStyle textPickUpLabel = TextStyle(
      color: Pallete.kpBlue, fontSize: 19, fontWeight: FontWeight.bold);
  static final TextStyle textPickUpHint =
      TextStyle(color: Colors.grey, fontSize: 14);

  CustomTextStyle._internal() {
    _instance = this;
  }

  factory CustomTextStyle() => _instance ?? CustomTextStyle._internal();
}
