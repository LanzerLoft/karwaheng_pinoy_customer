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
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: currentTabIndex,
        selectedItemColor: Pallete.kpYellow,
        unselectedItemColor: Pallete.kpWhite,
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
            ),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_repair,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'menu',
          ),
        ],
      ),
      body: UserHomepage(),
    );
  }
}
