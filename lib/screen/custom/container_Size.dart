import 'package:flutter/material.dart';

class CustomConSize {
  static CustomConSize _instance;

  static final double mobile = 12.0;
  static final double mobile14 = 14.0;
  static final double mobile16 = 16.0;

  CustomConSize._internal() {
    _instance = this;
  }

  factory CustomConSize() => _instance ?? CustomConSize._internal();
}
