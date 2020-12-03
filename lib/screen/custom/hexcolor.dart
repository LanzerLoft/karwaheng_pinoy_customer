import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Pallete {
  static Pallete _instance;

  static final Color kpBlue = HexColor('#1076f6');
  static final Color kpRed = HexColor('#cd302b');
  static final Color kpWhite = HexColor('#ffffff');
  static final Color kpYellow = HexColor('#FAD018');
  static final Color kpGrey = Colors.grey[300].withOpacity(0.2);

  Pallete._internal() {
    _instance = this;
  }

  factory Pallete() => _instance ?? Pallete._internal();
}
