import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_Delivered.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_Ongoing.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_Scheduled.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserMybookings extends StatefulWidget {
  @override
  _UserMybookingsState createState() => _UserMybookingsState();
}

class _UserMybookingsState extends State<UserMybookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Pallete.kpBlue,
            ),
            backgroundColor: Pallete.kpWhite,
            elevation: 0,
            centerTitle: true,
            title: Text(
              "My Bookings",
              style: CustomTextStyle.textStyleBlue18,
            ),
            bottom: customTabBarMyBooking(
              "Scheduled",
              "Ongoing",
              "Delivered",
            ),
          ),
          backgroundColor: Pallete.kpWhite,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: 16,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80.0.h,
                    child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          UserSchedule(),
                          UserOnGoing(),
                          UserDelivered(),
                        ]),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
