import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Pallete {
  static Pallete _instance;

  static final Color kpBlue = HexColor('#0A78FA');
  static final Color kpRed = HexColor('#E11C1C');
  static final Color kpWhite = HexColor('#ffffff');
  static final Color kpYellow = HexColor('#FCD116');
  static final Color kpNoticeYellow = HexColor('#FFFF00');
  static final Color kpGreyOkpGreypacity = HexColor('#9F9F9F');
  static final Color kpGreyOkpGreypacity2 =
      kpGreyOkpGreypacity.withOpacity(0.2);
  static final Color kpGreyOkpGreypacity3 =
      kpGreyOkpGreypacity.withOpacity(0.5);
  static final Color kpGrey = Colors.grey;
  static final Color kpBlack = HexColor('#717171');
  Pallete._internal() {
    _instance = this;
  }

  factory Pallete() => _instance ?? Pallete._internal();
}
