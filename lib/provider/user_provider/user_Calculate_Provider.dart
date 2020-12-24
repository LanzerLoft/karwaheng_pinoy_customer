import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

class UserCalculate with ChangeNotifier {
  int _length;
  int _width;
  int _height;
  String _total;

  int get length => _length;
  int get width => _width;
  int get height => _height;
  String get total => _total;

  setLenght(String value) {
    _length = int.parse(value);
    notifyListeners();
  }

  setWidth(String value) {
    _width = int.parse(value);
    notifyListeners();
  }

  setHeight(String value) {
    _height = int.parse(value);
    notifyListeners();
  }

  Stream<double> get gettotal {
    return totalVolumetric();
  }

  totalVolumetric() {
    if (_height != null || _length != null || _width != null) {
      double five = 5000;
      double height = _height / five;
      double total = _length * _width * height;

      print(total);
    } else {}
  }
}
