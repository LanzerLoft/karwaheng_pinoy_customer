import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

import 'custom_widget/custom_user_dashboardDrawer.dart';
import 'user_homePage.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int currentTabIndex = 0;
  List<Widget> tabs = [];
  void onTabTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.kpBlue,
      ),
      drawer: UserDrawer(),
      body: UserHomepage(),
    );
  }
}
