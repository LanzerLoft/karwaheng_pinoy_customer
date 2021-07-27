import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
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
      color: Pallete.kpYellow,
      horizontalPadding: 10,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget tabBarPasscodeReset(String tab1, String tab2) {
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
    labelColor: Pallete.kpNoticeYellow,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      horizontalPadding: 5,
      verticalPadding: 7,
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
    labelColor: Pallete.kpNoticeYellow,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      horizontalPadding: 10,
      verticalPadding: 7,
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget tabBarAllBookings(
  String tab1,
  String tab2,
  String tab3,
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
      Tab(
        text: tab3,
      ),
    ],
    labelColor: Pallete.kpNoticeYellow,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      horizontalPadding: 5,
      verticalPadding: 7,
      color: Pallete.kpBlue,
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}

Widget tabBarOrders(String tab1, String tab2) {
  return TabBar(
    tabs: [
      Tab(
        text: tab1,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Tab(
            text: tab2,
          ),

          // Badge(
          //   badgeColor: Pallete.kpYellow,
          //   badgeContent:
          //       Text(notifNumber, style: TextStyle(color: Pallete.kpBlue)),
          //   child: Icon(
          //     Icons.notifications,
          //   ),
          //   animationType: BadgeAnimationType.scale,
          // )
        ],
      ),
    ],
    labelStyle: CustomTextStyle.textStyleWhitebold16,
    labelColor: Pallete.kpNoticeYellow,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      verticalPadding: 0,
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
  Function onTapOneWay,
  Function onTapRoundTrip,
) {
  return TabBar(
    indicatorColor: Colors.red,
    tabs: [
      GestureDetector(
        onTap: onTapOneWay,
        child: Tab(
          text: tab1,
        ),
      ),
      GestureDetector(
        onTap: onTapRoundTrip,
        child: Tab(
          text: tab2,
        ),
      ),
    ],
    labelColor: Pallete.kpYellow,
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
