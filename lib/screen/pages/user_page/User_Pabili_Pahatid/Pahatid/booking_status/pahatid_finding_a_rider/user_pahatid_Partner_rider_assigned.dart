import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/rider_icon_nav_bar_icons.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/custom/user_drawer_icons.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_chatWithUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPahatidPartnerRiderAssigned extends StatefulWidget {
  @override
  _UserPahatidPartnerRiderAssignedState createState() =>
      _UserPahatidPartnerRiderAssignedState();
}

class _UserPahatidPartnerRiderAssignedState
    extends State<UserPahatidPartnerRiderAssigned> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  void initState() {
    super.initState();
  }

  String _value = "";
  @override
  Widget build(BuildContext context) {
    final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            color: Pallete.kpBlue,
            onPressed: () {
              //
              //
              pageRoute(context, UserMainDashboard());
              //
              //
              // userPahatidProvider.orderFeedback(context);
              // userPahatidProvider.orderReportRider(context);
              // userPahatidProvider.pahatidOrderWasCancel(context);
              // userPahatidProvider.pahatidOrderParcelPickedUp(context);
              // userPahatidProvider.pahatidOrderParcelHasDelivered(context);
              // userPahatidProvider.pahatidOrderPartnerRiderDropoff1(context);
              // userPahatidProvider.pahatidOrderPartnerRiderDropoff2(context);
              // userPahatidProvider.pahatidOrderParcelHasDelivered(context);
              // userPabiliProvider.pabiliOrderHasAssigned(context);
              // userPabiliProvider.pabiliOrderHasArrivedMerchant1(context);
              // userPabiliProvider.pabiliOrderHasArrivedMerchant2(context);
              //
              //
              //
              //
            },
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Pallete.kpWhite,
          title: Text(
            "Finding a Rider",
            style: TextStyle(color: Pallete.kpBlue),
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            // IconButton(
            //   onPressed: () {},
            //   icon: FaIcon(FontAwesomeIcons.ellipsisH, color: Pallete.kpBlack),
            //   iconSize: 20,
            // ),
            PopupMenuButton(
              color: Pallete.bcGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              enabled: true,
              icon: FaIcon(FontAwesomeIcons.ellipsisH,
                  color: Pallete.kpBlack, size: 20),
              onSelected: (value) {
                userPahatidProvider.popMenuFindingaRider(context, value);
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  height: 35,
                  child: Text(
                    "Cancel Order",
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
                PopupMenuItem(
                  height: 35,
                  child: Text(
                    "Change Address",
                    style: CustomTextStyle.textStyleWhite12,
                  ),
                  value: "Change",
                ),
              ],
            ),
          ],
          // bottom: PreferredSize(
          //     child: Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.all(
          //           Radius.circular(20),
          //         ),
          //         color: Pallete.kpBlue,
          //       ),
          //       child: Text("TEXT"),
          //     ),
          //     preferredSize: Size.fromHeight(50.0)),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Container(
              // decoration: BoxDecoration(
              //   color: Pallete.kpWhite,
              // ),
              height: 100.0.h,
              child: DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.4,
                minChildSize: 0.4,
                maxChildSize: 1,
                builder: (BuildContext context, myscrollController) {
                  // return _assigningPabiliRider(context, myscrollController);
                  return _pahatidpartnerRiderisAssigned(
                      context, myscrollController);
                },
              ),
            ),
            // _riderStatusOTW(),
          ],
        ),
      ),
    );
  }
}

//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

Widget _pahatidpartnerRiderisAssigned(
  BuildContext context,
  ScrollController myscrollController,
) {
  final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Container(
    child: ListView(
      controller: myscrollController,
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 30.0.h,
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.only(
                    top: 10.0, left: 12, right: 12, bottom: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                          right: 12,
                        ),
                        child: Text(
                          "2 Minutes away",
                          style: CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Pallete.kpBlue,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                "assets/login_images/KP_profile.png",
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Juan Dela Cruz",
                                  style: CustomTextStyle.textStyleBlack18,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Pallete.kpNoticeYellow,
                                    ),
                                    Text(
                                      "5.0",
                                      style: CustomTextStyle.textStyleBlack14,
                                    ),
                                  ],
                                ),
                                Text(
                                  "MC 1000 | Yamaha Mio 125i",
                                  style: CustomTextStyle.textStyleBlack14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Container(
                            width: 40.0.w,
                            child: GestureDetector(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.messenger,
                                      size: 15,
                                      color: Pallete.kpGrey,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "Message",
                                        style: CustomTextStyle.textStyleBlack14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                userPabiliProvider.makeChatMessagetoRider(
                                  context,
                                  "09123455675",
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                            height: 20,
                            child: VerticalDivider(color: Pallete.kpBlack)),
                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                          child: Container(
                            width: 40.0.w,
                            child: GestureDetector(
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size: 15,
                                      color: Pallete.kpGrey,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "Call",
                                        style: CustomTextStyle.textStyleBlack14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                userPabiliProvider.phoneCalltoRider(
                                    context, "09123455675");
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: .0,
              left: .0,
              right: .0,
              child: Center(
                  child: Container(
                decoration: BoxDecoration(
                  color: Pallete.kpBlue,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 12,
                        color: Pallete.kpNoticeYellow,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Swipe to Rider Info",
                          style: CustomTextStyle.textStyleYellow12,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ],
        ),
        Container(
          height: 90.0.h,
          decoration: BoxDecoration(
            color: Pallete.kpWhite,
          ),
          child: Column(
            children: [
              customCardRiderInfo(
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Pallete.kpBlue,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          "assets/login_images/KP_profile.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Juan Dela Cruz",
                        style: CustomTextStyle.textStyleBlack18,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message),
                      iconSize: 20,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.call),
                      iconSize: 20,
                    ),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 16, bottom: 12, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "April 25, 11:30 AM",
                        style: CustomTextStyle.textStyleBlack12,
                      ),
                      Text(
                        "Order number 110000-00077",
                        style: CustomTextStyle.textStyleBlack12,
                      )
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: customCard(
                  Container(
                    child: Column(
                      children: [
                        TimelineTile(
                          nodeAlign: TimelineNodeAlign.start,
                          contents: Padding(
                            padding: EdgeInsets.only(left: 10, bottom: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "BDO Katipunan Avenue",
                                    style: CustomTextStyle.textStyleBlack12,
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          "Loyola Heights Branch, Katipunan Avenue, Quezon City, Metro Manila",
                                      style: CustomTextStyle.textStyleGrey10,
                                    ),
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: "Juana Dela Cruz",
                                    style: CustomTextStyle.textStyleGrey10,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "  09177777777",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          node: TimelineNode(
                            indicator: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4.5),
                              child: OutlinedDotIndicator(
                                borderWidth: 3,
                              ),
                            ),
                            indicatorPosition: 0,
                            endConnector: SolidLineConnector(
                              thickness: 2,
                              color: Pallete.kpNoticeYellow,
                            ),
                          ),
                        ),
                        TimelineTile(
                          nodeAlign: TimelineNodeAlign.start,
                          contents: Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "SM City North EDSA",
                                    style: CustomTextStyle.textStyleBlack12,
                                  ),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          "North Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                                      style: CustomTextStyle.textStyleGrey10,
                                    ),
                                  ),
                                ),
                                // RichText(
                                //   text: TextSpan(
                                //     text: "Juana Dela Cruz",
                                //     style: CustomTextStyle.textStyleGrey10,
                                //     children: <TextSpan>[
                                //       TextSpan(
                                //         text: "09177777777",
                                //         style: CustomTextStyle.textStyleGrey10,
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          node: TimelineNode(
                            indicatorPosition: 0,
                            indicator: Icon(
                              Icons.location_on,
                              color: Pallete.kpRed,
                            ),
                            startConnector: SolidLineConnector(
                              thickness: 5,
                              color: Pallete.kpNoticeYellow,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Divider(),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.only(top: 8),
                            width: 100.0.w,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.ios_share,
                                    size: 15,
                                    color: Pallete.kpGrey,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Text(
                                      "Share tracking link",
                                      style: CustomTextStyle.textStyleBlack16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            print("SHARE");
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              customCard(
                Container(
                  width: 100.0.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Service Type:",
                          style: CustomTextStyle.textStyleBlack14,
                          children: <TextSpan>[
                            TextSpan(
                              text: "      ",
                              style: CustomTextStyle.textStyleBlue14,
                            ),
                            TextSpan(
                              text: "Pabili",
                              style: CustomTextStyle.textStyleBlue14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              customCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Unpaid",
                              style: CustomTextStyle.textStyleBlackbold16),
                          Text("₱500.00",
                              style: CustomTextStyle.textStyleBlackbold16),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            pageRoute(context, UserPahatidFeeBreakdown());
                          },
                          child: Text("Fee Breakdown",
                              style: TextStyle(
                                color: Pallete.kpBlue,
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("2 Minutes away",
                    style: CustomTextStyle.textStyleBlack16),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class UserPahatidFeeBreakdown extends StatefulWidget {
  @override
  State<UserPahatidFeeBreakdown> createState() =>
      UserPahatidFeeBreakdownState();
}

class UserPahatidFeeBreakdownState extends State<UserPahatidFeeBreakdown> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Fee Breakdown",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 2,
        // bottom: _tabBarPickupAddressMap(),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Not yet paid",
                      style: CustomTextStyle.textStyleBlack18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Base Rate (Pabili)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱60", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Over mileage (14.5 km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱82", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Holiday Surcharge",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱20", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: customCard(
                      Container(
                        width: 100.0.w,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text("Total 14.5 km",
                                style: CustomTextStyle.textStyleBlack14),
                            Text("₱ 20.00",
                                style: CustomTextStyle.textfieldBlack40),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        "If there are highway and toll fees, parking fees and moving fees, please pay on top of the order fee. If the overtime waiting fee is involved, please settle with the driver according to the pricing basis.",
                        style: CustomTextStyle.textStyleGrey14),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class UserPahatidFeeBreakdownCanceled extends StatefulWidget {
  @override
  State<UserPahatidFeeBreakdownCanceled> createState() =>
      UserPahatidFeeBreakdownCanceledState();
}

class UserPahatidFeeBreakdownCanceledState
    extends State<UserPahatidFeeBreakdownCanceled> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Fee Breakdown",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 2,
        // bottom: _tabBarPickupAddressMap(),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Not yet paid",
                      style: CustomTextStyle.textStyleBlack18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Base Rate (Pabili)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱60", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Over mileage (14.5 km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱82", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Holiday Surcharge",
                            style: CustomTextStyle.textStyleBlack16),
                        Text("₱20", style: CustomTextStyle.textStyleBlue16),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: customCard(
                      Container(
                        width: 100.0.w,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          children: [
                            Text("Total 14.5 km",
                                style: CustomTextStyle.textStyleBlack14),
                            Text("₱ 20.00",
                                style: CustomTextStyle.textfieldBlack40),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        "If there are highway and toll fees, parking fees and moving fees, please pay on top of the order fee. If the overtime waiting fee is involved, please settle with the driver according to the pricing basis.",
                        style: CustomTextStyle.textStyleGrey14),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
//
//
//
//
//

class UserPahatidBookingOrderCanceledWithRider extends StatefulWidget {
  @override
  State<UserPahatidBookingOrderCanceledWithRider> createState() =>
      UserPahatidBookingOrderCanceledWithRiderState();
}

class UserPahatidBookingOrderCanceledWithRiderState
    extends State<UserPahatidBookingOrderCanceledWithRider> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Booking Canceled",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        child: Container(
          height: 50,
          width: 100.0.w,
          child: FlatButton(
            onPressed: () {},
            color: Pallete.kpBlue,
            child: Text("Book Again", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: 90.0.h,
            decoration: BoxDecoration(
              color: Pallete.kpWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: customCardRiderInfo(
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Pallete.kpBlue,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              "assets/login_images/KP_profile.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleBlack18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customCard(
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "April 25, 11:30 AM",
                                  style: CustomTextStyle.textStyleBlack12,
                                ),
                                Text(
                                  "Order number 110000-00077",
                                  style: CustomTextStyle.textStyleBlack12,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "BDO Katipunan Avenue",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Loyola Heights Branch, Katipunan Avenue, Quezon City, Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Juana Dela Cruz",
                                      style: CustomTextStyle.textStyleGrey10,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "  09177777777",
                                          style:
                                              CustomTextStyle.textStyleGrey10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.5),
                                child: OutlinedDotIndicator(
                                  borderWidth: 3,
                                ),
                              ),
                              indicatorPosition: 0,
                              endConnector: SolidLineConnector(
                                thickness: 2,
                                color: Pallete.kpGrey,
                              ),
                            ),
                          ),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "SM City North EDSA",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "North Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  // RichText(
                                  //   text: TextSpan(
                                  //     text: "Juana Dela Cruz",
                                  //     style: CustomTextStyle.textStyleGrey10,
                                  //     children: <TextSpan>[
                                  //       TextSpan(
                                  //         text: "09177777777",
                                  //         style: CustomTextStyle.textStyleGrey10,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicatorPosition: 0,
                              indicator: Icon(
                                Icons.location_on,
                                color: Pallete.kpRed,
                              ),
                              startConnector: SolidLineConnector(
                                thickness: 5,
                                color: Pallete.kpNoticeYellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: customCard(
                    Container(
                      width: 100.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Service Type:",
                              style: CustomTextStyle.textStyleBlack14,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "      ",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                                TextSpan(
                                  text: "Pahatid",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Unpaid",
                                style: CustomTextStyle.textStyleBlackbold16),
                            Text("₱500.00",
                                style: CustomTextStyle.textStyleBlackbold16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              pageRoute(
                                  context, UserPahatidFeeBreakdownCanceled());
                            },
                            child: Text("Fee Breakdown",
                                style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserPahatidBookingOrderCanceledWithRiderNoRider extends StatefulWidget {
  @override
  State<UserPahatidBookingOrderCanceledWithRiderNoRider> createState() =>
      UserPahatidBookingOrderCanceledWithRiderNoRiderState();
}

class UserPahatidBookingOrderCanceledWithRiderNoRiderState
    extends State<UserPahatidBookingOrderCanceledWithRiderNoRider> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Booking Canceled",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        child: Container(
          height: 50,
          width: 100.0.w,
          child: FlatButton(
            onPressed: () {},
            color: Pallete.kpBlue,
            child: Text("Book Again", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: 90.0.h,
            decoration: BoxDecoration(
              color: Pallete.kpWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customCard(
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "April 25, 11:30 AM",
                                  style: CustomTextStyle.textStyleBlack12,
                                ),
                                Text(
                                  "Order number 110000-00077",
                                  style: CustomTextStyle.textStyleBlack12,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "BDO Katipunan Avenue",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Loyola Heights Branch, Katipunan Avenue, Quezon City, Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Juana Dela Cruz",
                                      style: CustomTextStyle.textStyleGrey10,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "  09177777777",
                                          style:
                                              CustomTextStyle.textStyleGrey10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.5),
                                child: OutlinedDotIndicator(
                                  borderWidth: 3,
                                ),
                              ),
                              indicatorPosition: 0,
                              endConnector: SolidLineConnector(
                                thickness: 2,
                                color: Pallete.kpGrey,
                              ),
                            ),
                          ),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "SM City North EDSA",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "North Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  // RichText(
                                  //   text: TextSpan(
                                  //     text: "Juana Dela Cruz",
                                  //     style: CustomTextStyle.textStyleGrey10,
                                  //     children: <TextSpan>[
                                  //       TextSpan(
                                  //         text: "09177777777",
                                  //         style: CustomTextStyle.textStyleGrey10,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicatorPosition: 0,
                              indicator: Icon(
                                Icons.location_on,
                                color: Pallete.kpRed,
                              ),
                              startConnector: SolidLineConnector(
                                thickness: 5,
                                color: Pallete.kpNoticeYellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: customCard(
                    Container(
                      width: 100.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Service Type:",
                              style: CustomTextStyle.textStyleBlack14,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "      ",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                                TextSpan(
                                  text: "Pahatid",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Unpaid",
                                style: CustomTextStyle.textStyleBlackbold16),
                            Text("₱500.00",
                                style: CustomTextStyle.textStyleBlackbold16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              pageRoute(
                                  context, UserPahatidFeeBreakdownCanceled());
                            },
                            child: Text("Fee Breakdown",
                                style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
