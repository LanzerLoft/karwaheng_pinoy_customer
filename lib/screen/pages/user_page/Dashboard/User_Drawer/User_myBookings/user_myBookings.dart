import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
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
              "Active ",
              "Scheduled",
              "History",
            ),
          ),
          backgroundColor: Pallete.kpWhite,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: CustomConSize.mobile,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80.0.h,
                    child:
                        TabBarView(physics: BouncingScrollPhysics(), children: [
                      Center(
                          child: Text(
                        "NO ACTIVE BOOKING",
                        style: CustomTextStyle.textStyleGrey14,
                      )),
                      Center(
                          child: Text(
                        "NO SCHEDULE BOOKING",
                        style: CustomTextStyle.textStyleGrey14,
                      )),
                      Center(
                          child: Text(
                        "NO BOOKING HISTORY",
                        style: CustomTextStyle.textStyleGrey14,
                      )),
                      // UserSchedule(),
                      // UserOnGoing(),
                      // UserDelivered(),
                    ]),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
