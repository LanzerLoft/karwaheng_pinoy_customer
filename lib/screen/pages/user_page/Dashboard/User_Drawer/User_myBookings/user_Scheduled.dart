import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return customCardBooking(
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: customRichTextBookingCard(
                      "Date & Time of the delivery:  ",
                      "08 july 2020, 5:30pm,"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customRichTextBooking("Booking ID:", "\nKP12345"),
                    customListTextBookingPesoIcon("Delivery Fee:", "999"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customTimelineTile(
                    "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                    "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customButton2(() {
                    pageRoute(context, UserScheduledViewPage());
                  }, "View Schedule", 5, double.infinity, 40, Pallete.kpYellow,
                      Pallete.kpYellow),
                )
              ],
            ),
          ),
          Pallete.kpBlue,
        );
      },
      itemCount: 20,
    );
  }
}

class UserScheduledViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpWhite,
          ),
          backgroundColor: Pallete.kpBlue,
          elevation: 0,
          centerTitle: true,
          title: customRichTextAppbar("Booking ID:  ", "KP12354"),
        ),
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
              children: [
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 10),
                        child: customRichTextBookingCard(
                            "Date & Time of the delivery:  ",
                            "08 july 2020, 5:30pm,"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customRichTextBooking("Booking ID:", "\nKP12345"),
                          customListTextBookingPesoIcon("Delivery Fee:", "999"),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: customTimelineTile(
                          "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                        ),
                      ),
                    ],
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customListTextBooking(
                          "Item Description:  ", "Blue jansport Bags"),
                      customListTextBooking(
                          "Notes to Rider:  ", "Call me when you get here po"),
                      customListTextBooking("Payment Method:  ", "GCASH"),
                      customListTextBooking(
                          "Name of rider:  ", "Juan Dela cruz"),
                      customListTextBooking("Employee ID no.:  ", "KP1234"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customButton2(
                    () {},
                    "Edit",
                    5,
                    double.infinity,
                    40,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
