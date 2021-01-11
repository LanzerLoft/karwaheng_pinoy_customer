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
      horizontalPadding: 10,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget customTabBarMyWallet(
    String tab1, String tab2, String tab3, String tab4) {
  return TabBar(
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
    labelColor: Pallete.kpWhite,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      horizontalPadding: 5,
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget customTabBarMyBooking(String tab1, String tab2, String tab3) {
  return TabBar(
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
    labelColor: Pallete.kpWhite,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      horizontalPadding: 10,
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget customTabBarPahatid(
  String tab1,
  String tab2,
) {
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
      horizontalPadding: 10,
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget customTabBarCelebrate() {
  return TabBar(
    indicatorColor: Colors.red,
    isScrollable: true,
    tabs: [
      Tab(
        text: "tab",
      ),
      Tab(
        text: "tab",
      ),
      Tab(
        text: "tab",
      ),
      Tab(
        text: "tab",
      ),
      Tab(
        text: "tab",
      ),
    ],
    labelColor: Pallete.kpWhite,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpBlue,
      horizontalPadding: 10,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}
