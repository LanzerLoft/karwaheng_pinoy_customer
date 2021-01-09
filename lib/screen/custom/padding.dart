import 'package:flutter/material.dart';

class CustomPadding {
  static CustomPadding _instance;

  static final EdgeInsets padding8 = EdgeInsets.all(8.0);
  static final EdgeInsets padding12 = EdgeInsets.all(12.0);
  static final EdgeInsets padding16 = EdgeInsets.all(16.0);
  static final EdgeInsets padding24 = EdgeInsets.all(24.0);
  static final EdgeInsets padding32 = EdgeInsets.all(32.0);

  static final EdgeInsets symetric8 = EdgeInsets.symmetric(horizontal: 8);
  static final EdgeInsets symetric16 = EdgeInsets.symmetric(horizontal: 16);
  static final EdgeInsets symetric24 = EdgeInsets.symmetric(horizontal: 24);
  static final EdgeInsets symetric32 = EdgeInsets.symmetric(horizontal: 32);

  CustomPadding._internal() {
    _instance = this;
  }

  factory CustomPadding() => _instance ?? CustomPadding._internal();
}
