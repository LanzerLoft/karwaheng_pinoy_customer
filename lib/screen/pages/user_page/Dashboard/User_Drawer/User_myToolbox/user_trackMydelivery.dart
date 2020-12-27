import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
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
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Track My Delivery",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "All ongoing deliveries will be visible here",
                        style: CustomTextStyle.textStyleGrey13,
                      ),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enter Booking ID",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                          Text(
                            "Booking ID",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                          Text(
                            "Booking Time & Date",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                          Text(
                            "Delivery Time and Date",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                          Text(
                            "Estimated Time of Arrival",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                          Container(
                            height: 20.0.h,
                          ),
                          customButton2(() {}, "Status Here", 5,
                              double.infinity, 35, Pallete.kpRed, Pallete.kpRed)
                          // Container(
                          //   height: 30.0.h,
                          //   child: GoogleMap(
                          //     zoomControlsEnabled: false,
                          //     mapType: MapType.hybrid,
                          //     initialCameraPosition: _kGooglePlex,
                          //     onMapCreated: (GoogleMapController controller) {
                          //       _controller.complete(controller);
                          //     },
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
