import 'package:flutter/material.dart';

class CustomerDashboardProvider with ChangeNotifier {
  bool _efficiencyQuarter1 = false;
  bool _efficiencyQuarter2 = false;
  bool _efficiencyQuarter3 = false;
  bool _efficiencyQuarter4 = false;
  bool _efficiencyYear = true;
  bool get efficiencyYear => _efficiencyYear;
  bool get efficiencyQuarter1 => _efficiencyQuarter1;
  bool get efficiencyQuarter2 => _efficiencyQuarter2;
  bool get efficiencyQuarter3 => _efficiencyQuarter3;
  bool get efficiencyQuarter4 => _efficiencyQuarter4;

  void efficiencyQ1() {
    _efficiencyQuarter1 = !_efficiencyQuarter1;

    _efficiencyQuarter2 = false;
    _efficiencyQuarter3 = false;
    _efficiencyQuarter4 = false;
    _efficiencyYear = false;
    print(_efficiencyQuarter1);
    notifyListeners();
  }

  void efficiencyQ2() {
    _efficiencyQuarter2 = !_efficiencyQuarter2;
    _efficiencyQuarter1 = false;
    _efficiencyQuarter3 = false;
    _efficiencyQuarter4 = false;
    _efficiencyYear = false;
    print(_efficiencyQuarter2);
    notifyListeners();
  }

  void efficiencyQ3() {
    _efficiencyQuarter3 = !_efficiencyQuarter3;
    _efficiencyQuarter1 = false;
    _efficiencyQuarter2 = false;
    _efficiencyQuarter4 = false;
    _efficiencyYear = false;
    print(_efficiencyQuarter3);
    notifyListeners();
  }

  void efficiencyQ4() {
    _efficiencyQuarter4 = !_efficiencyQuarter4;
    _efficiencyQuarter1 = false;
    _efficiencyQuarter2 = false;
    _efficiencyQuarter3 = false;
    _efficiencyYear = false;
    print(_efficiencyQuarter4);
    notifyListeners();
  }

  ///
  ///
  ///
  ///
  ///
  ///
  bool _incomeQuarter1 = false;
  bool _incomeQuarter2 = false;
  bool _incomeQuarter3 = false;
  bool _incomeQuarter4 = false;
  bool _incomeYear = true;
  bool get incomeYear => _incomeYear;
  bool get incomeQuarter1 => _incomeQuarter1;
  bool get incomeQuarter2 => _incomeQuarter2;
  bool get incomeQuarter3 => _incomeQuarter3;
  bool get incomeQuarter4 => _incomeQuarter4;

  void incomeQ1() {
    _incomeQuarter1 = !_incomeQuarter1;

    _incomeQuarter2 = false;
    _incomeQuarter3 = false;
    _incomeQuarter4 = false;
    _incomeYear = false;
    print(_incomeQuarter1);
    notifyListeners();
  }

  void incomeQ2() {
    _incomeQuarter2 = !_incomeQuarter2;
    _incomeQuarter1 = false;
    _incomeQuarter3 = false;
    _incomeQuarter4 = false;
    _incomeYear = false;
    print(_incomeQuarter2);
    notifyListeners();
  }

  void incomeQ3() {
    _incomeQuarter3 = !_incomeQuarter3;
    _incomeQuarter1 = false;
    _incomeQuarter2 = false;
    _incomeQuarter4 = false;
    _incomeYear = false;
    print(_incomeQuarter3);
    notifyListeners();
  }

  void incomeQ4() {
    _incomeQuarter4 = !_incomeQuarter4;
    _incomeQuarter1 = false;
    _incomeQuarter2 = false;
    _incomeQuarter3 = false;
    _incomeYear = false;
    print(_incomeQuarter4);
    notifyListeners();
  }

  ///
  ///
  ///
  ///
  ///
  ///EFFICIENCY MONTH AND WEEKLY

  bool _efficiencyMonthlyWeekView1 = false;
  bool _efficiencyMonthlyWeekView2 = false;
  bool _efficiencyMonthlyWeekView3 = false;
  bool _efficiencyMonthlyWeekView4 = false;
  bool _efficiencyMonthly = true;
  bool get efficiencyMonthly => _efficiencyMonthly;
  bool get efficiencyMonthlyWeekView1 => _efficiencyMonthlyWeekView1;
  bool get efficiencyMonthlyWeekView2 => _efficiencyMonthlyWeekView2;
  bool get efficiencyMonthlyWeekView3 => _efficiencyMonthlyWeekView3;
  bool get efficiencyMonthlyWeekView4 => _efficiencyMonthlyWeekView4;

  void efficiencyMonthWeekView1() {
    _efficiencyMonthlyWeekView1 = !_efficiencyMonthlyWeekView1;

    _efficiencyMonthlyWeekView2 = false;
    _efficiencyMonthlyWeekView3 = false;
    _efficiencyMonthlyWeekView4 = false;
    _efficiencyMonthly = false;
    print(_efficiencyMonthlyWeekView1);
    notifyListeners();
  }

  void efficiencyMonthWeekView2() {
    _efficiencyMonthlyWeekView2 = !_efficiencyMonthlyWeekView2;
    _efficiencyMonthlyWeekView1 = false;
    _efficiencyMonthlyWeekView3 = false;
    _efficiencyMonthlyWeekView4 = false;
    _efficiencyMonthly = false;
    print(_efficiencyMonthlyWeekView2);
    notifyListeners();
  }

  void efficiencyMonthWeekView3() {
    _efficiencyMonthlyWeekView3 = !_efficiencyMonthlyWeekView3;
    _efficiencyMonthlyWeekView1 = false;
    _efficiencyMonthlyWeekView2 = false;
    _efficiencyMonthlyWeekView4 = false;
    _efficiencyYear = false;
    print(_efficiencyMonthlyWeekView3);
    notifyListeners();
  }

  void efficiencyMonthWeekView4() {
    _efficiencyMonthlyWeekView4 = !_efficiencyMonthlyWeekView4;
    _efficiencyMonthlyWeekView1 = false;
    _efficiencyMonthlyWeekView2 = false;
    _efficiencyMonthlyWeekView3 = false;
    _efficiencyMonthly = false;
    print(_efficiencyMonthlyWeekView4);
    notifyListeners();
  }

  ///
  ///
  ///
  ///
  ///

  ///
  ///
  ///
  ///
  ///
  ///Income MONTH AND WEEKLY

  bool _incomeMonthlyWeekView1 = false;
  bool _incomeMonthlyWeekView2 = false;
  bool _incomeMonthlyWeekView3 = false;
  bool _incomeMonthlyWeekView4 = false;
  bool _incomeMonthly = true;
  bool get incomeMonthly => _incomeMonthly;
  bool get incomeMonthlyWeekview1 => _incomeMonthlyWeekView1;
  bool get incomeMonthlyWeekview2 => _incomeMonthlyWeekView2;
  bool get incomeMonthlyWeekview3 => _incomeMonthlyWeekView3;
  bool get incomeMonthlyWeekview4 => _incomeMonthlyWeekView4;

  void incomeMonthWeekView1() {
    _incomeMonthlyWeekView1 = !_incomeMonthlyWeekView1;

    _incomeMonthlyWeekView2 = false;
    _incomeMonthlyWeekView3 = false;
    _incomeMonthlyWeekView4 = false;
    _incomeMonthly = false;

    print("INCOME$_incomeMonthlyWeekView1");
    notifyListeners();
  }

  void incomeMonthWeekView2() {
    _incomeMonthlyWeekView2 = !_incomeMonthlyWeekView2;
    _incomeMonthlyWeekView1 = false;
    _incomeMonthlyWeekView3 = false;
    _incomeMonthlyWeekView4 = false;
    _incomeMonthly = false;

    print("INCOME$_incomeMonthlyWeekView2");
    notifyListeners();
  }

  void incomeMonthWeekView3() {
    _incomeMonthlyWeekView3 = !_incomeMonthlyWeekView3;
    _incomeMonthlyWeekView1 = false;
    _incomeMonthlyWeekView2 = false;
    _incomeMonthlyWeekView4 = false;
    _incomeMonthly = false;
    print("INCOME$_incomeMonthlyWeekView3");
    notifyListeners();
  }

  void incomeMonthWeekView4() {
    _incomeMonthlyWeekView4 = !_incomeMonthlyWeekView4;
    _incomeMonthlyWeekView1 = false;
    _incomeMonthlyWeekView2 = false;
    _incomeMonthlyWeekView3 = false;
    _incomeMonthly = false;

    print("INCOME$_incomeMonthlyWeekView4");
    notifyListeners();
  }

  ///
  ///
  ///
  ///
  ///
}
