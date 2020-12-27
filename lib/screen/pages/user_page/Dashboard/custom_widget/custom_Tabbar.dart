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
    labelColor: Pallete.kpWhite,
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

Widget customTabBarMyWallet(
    String tab1, String tab2, String tab3, String tab4) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Pallete.kpBlue,
    ),
    child: TabBar(
      indicatorColor: Colors.red,
      tabs: [
        Tab(
          text: tab1,
        ),
        Tab(
          text: tab2,
        ),
        Tab(
          text: tab3,
        ),
        Tab(
          text: tab4,
        ),
      ],
      labelColor: Pallete.kpYellow,
      unselectedLabelColor: Colors.white,
      indicator: RectangularIndicator(
        color: Pallete.kpBlue,
        bottomLeftRadius: 20,
        bottomRightRadius: 20,
        topLeftRadius: 20,
        topRightRadius: 20,
      ),
    ),
  );
}

Widget customTabBarMyBooking(String tab1, String tab2, String tab3) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Pallete.kpBlue,
    ),
    child: TabBar(
      indicatorColor: Colors.red,
      tabs: [
        Tab(
          text: tab1,
        ),
        Tab(
          text: tab2,
        ),
        Tab(
          text: tab3,
        ),
      ],
      labelColor: Pallete.kpYellow,
      unselectedLabelColor: Colors.white,
      indicator: RectangularIndicator(
        color: Pallete.kpBlue,
        bottomLeftRadius: 5,
        bottomRightRadius: 5,
        topLeftRadius: 5,
        topRightRadius: 5,
      ),
    ),
  );
}
