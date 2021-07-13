import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox_chat.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_voiceCall.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:share/share.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserOnGoing extends StatelessWidget {
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
                      "Date & Time of delivery:  ", "08 july 2020, 5:30 PM,"),
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
                    pageRoute(context, UserOngoingViewPage());
                  }, "View", 5, double.infinity, 50, Pallete.kpYellow,
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

class UserOngoingViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: customRichTextAppbarBlue("Booking ID:  ", "KP12345"),
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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    height: 40.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.05),
                          blurRadius: 0.01, // soften the shadow
                          //extend the shadow
                          offset: Offset(
                            0, // Move to right 10  horizontally
                            0, // Move to bottom 10 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Center(
                      child: Text("MAPS HERE"),
                    ),
                  ),
                ),
                customCardBookingRider(
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: customRichTextBooking(
                        "Name of rider:", "\nJuan Dela Cruz"),
                  ),
                  'assets/login_images/KP_profile.png',
                  () {
                    Share.share(
                        'https://www.google.com/maps/place/Manila,+Metro+Manila/@14.5964879,120.9095193,12z/data=!3m1!4b1!4m5!3m4!1s0x3397ca03571ec38b:0x69d1d5751069c11f!8m2!3d14.5995124!4d120.9842195');
                  },
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 10),
                        child: customRichTextBookingCard(
                            "Date & Time of delivery:  ",
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
                      GestureDetector(
                        onTap: () {
                          pageRoute(context, UserTrackMyDelivery());
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Track My Delivery",
                              style: TextStyle(
                                color: Pallete.kpBlue,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customListTextBooking(
                              "Item Description:  ", "Blue jansport Bags"),
                          customListTextBooking("Notes to Rider:  ",
                              "Call me when you get here po"),
                          customListTextBooking("Payment Method:  ", "GCASH"),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customButton2(() {
                        userPabiliProvider.phoneCalltoRider(
                            context, "09511066931");
                        // userPabiliProvider.makePhoneCalltoRider(
                        //     context, "09511066931");
                      }, "Call Rider", 5, 40.0.w, 50, Pallete.kpRed,
                          Pallete.kpRed),
                      customButton2(() {
                        userPabiliProvider.makeChatMessagetoRider(
                            context, "09300551740");
                      }, "Message Rider", 5, 40.0.w, 50, Pallete.kpBlue,
                          Pallete.kpBlue),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ));
  }
}
