import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

Widget customTabBarMPR(String tab1, String tab2) {
  return TabBar(
    indicatorColor: Colors.red,
    tabs: [
      Tab(
        text: tab1,
      ),
      Tab(
        text: tab2,
      ),
    ],
    labelColor: Colors.white,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}
