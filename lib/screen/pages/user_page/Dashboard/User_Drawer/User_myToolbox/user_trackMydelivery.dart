import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserTrackMyDelivery extends StatefulWidget {
  @override
  _UserTrackMyDeliveryState createState() => _UserTrackMyDeliveryState();
}

class _UserTrackMyDeliveryState extends State<UserTrackMyDelivery> {
  Completer<GoogleMapController> _controller = Completer();

  /// Declare static map controller
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Track My Delivery",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: Column(
            children: [
              // customCard(
              //   Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 8),
              //     child: Align(
              //       alignment: Alignment.center,
              //       child: Text(
              //         "Track your deliveries here",
              //         style: CustomTextStyle.textStyleGrey16,
              //       ),
              //     ),
              //   ),
              // ),
              customCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: customTextFieldEnterID(
                          (value) {}, "eg.KP12345", "Enter Booking ID", () {}),
                    ),
                    customCard(
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              customListTextTrackDelivery(
                                  "Booking ID:  ", "KP12344"),
                              customListTextTrackDelivery(
                                  "Booking Time & Date:  ",
                                  " 1:30pm, 08 july 2020"),
                              customListTextTrackDelivery(
                                  "Delivery Time & Date:  ",
                                  "5:30pm, 08 july 2020"),
                              customListTextTrackDelivery(
                                  "Estimated Time of Arrival:  ", "5:30pm"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 30.0.h,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: customButton2(() {}, "Get Status", 5, double.infinity,
                    50, Pallete.kpBlue, Pallete.kpBlue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
