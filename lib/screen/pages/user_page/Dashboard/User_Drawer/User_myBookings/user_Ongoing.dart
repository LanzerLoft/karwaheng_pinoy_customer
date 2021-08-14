import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_chatWithUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox_chat.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_voiceCall.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Pabili_finding_a_rider/user_pabili_Partner_rider_assigned.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:share/share.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserMyBookingsOngoing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return customCardBooking(
          Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 20, bottom: 10, right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20, top: 10),
                      child: customRichTextBookingCard(
                          "Date & Time of delivery:  ",
                          "08 july 2020, 5:30 PM,"),
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
                      child: customButton2black(() {
                        userPabiliProvider.flushBarRider(context);
                        pageRoute(context, UserPabiliPartnerRiderAssigned());
                      }, "View", 5, double.infinity, 40, Pallete.kpNoticeYellow,
                          Pallete.kpNoticeYellow),
                    )
                  ],
                ),
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: PopupMenuButton(
              //     color: Pallete.bcGrey,
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     elevation: 20,
              //     enabled: true,
              //     icon: FaIcon(FontAwesomeIcons.ellipsisH,
              //         color: Pallete.kpBlack, size: 20),
              //     onSelected: (value) {
              //       print(value);
              //       if (value == "Cancel") {
              //         userPabiliProvider.orderCancelOrderScheduledOrder(context);
              //       }else if (value == "Chat") {
              //   pageRoute(context, UserChatWithUs());
              // }
              //     },
              //     itemBuilder: (context) => [
              //       PopupMenuItem(
              //         height: 35,
              //         child: Text(
              //           "Cancel Order",
              //           style: CustomTextStyle.textStyleWhite12,
              //         ),
              //         value: "Cancel",
              //       ),
              //       PopupMenuItem(
              //         height: 35,
              //         child: Text(
              //           "Chat with us",
              //           style: CustomTextStyle.textStyleWhite12,
              //         ),
              //         value: "Chat",
              //       ),
              //     ],
              //   ),
              // ),
              Align(
                alignment: Alignment.topRight,
                child: PopupMenuButton(
                  color: Pallete.bcGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  enabled: true,
                  icon: FaIcon(FontAwesomeIcons.ellipsisH,
                      color: Pallete.kpBlack, size: 20),
                  onSelected: (value) {
                    print(value);
                    if (value == "Cancel") {
                    } else if (value == "Chat") {
                      pageRoute(context, UserChatWithUs());
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      height: 35,
                      child: Text(
                        "Cancel Booking",
                        style: CustomTextStyle.textStyleWhite12,
                      ),
                      value: "Cancel",
                    ),
                    PopupMenuItem(
                      height: 35,
                      child: Text(
                        "Chat with us",
                        style: CustomTextStyle.textStyleWhite12,
                      ),
                      value: "Chat",
                    ),
                  ],
                ),
              ),
            ],
          ),
          Pallete.kpBlue,
        );
      },
      itemCount: 20,
    );
  }
}

class UserMyBookingsOngoingPage extends StatefulWidget {
  UserMyBookingsOngoingPage({Key key}) : super(key: key);

  @override
  _UserMyBookingsOngoingPageState createState() => _UserMyBookingsOngoingPageState();
}

class _UserMyBookingsOngoingPageState extends State<UserMyBookingsOngoingPage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
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
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _kGooglePlex,
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: true,
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
