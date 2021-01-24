import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Pallete {
  static Pallete _instance;

  static final Color kpBlue = HexColor('#1076f6');
  static final Color kpRed = HexColor('#E01F26');
  static final Color kpWhite = HexColor('#ffffff');
  static final Color kpYellow = HexColor('#FAD018');
  static final Color kpGreyOkpGreypacity = Colors.grey[300].withOpacity(0.2);
  static final Color kpGreyOkpGreypacity2 = Colors.grey.withOpacity(0.2);
  static final Color kpGreyOkpGreypacity3 = Colors.grey.withOpacity(0.5);
  static final Color kpGrey = Colors.grey;
  static final Color kpBlack = Colors.black;
  Pallete._internal() {
    _instance = this;
  }

  factory Pallete() => _instance ?? Pallete._internal();
}
