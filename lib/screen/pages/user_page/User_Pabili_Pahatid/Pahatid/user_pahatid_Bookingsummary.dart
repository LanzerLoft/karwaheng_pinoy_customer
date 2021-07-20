import 'dart:async';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_termsOfuse.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_prohibitedItems.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class UserPahatidBoookingSummary extends StatefulWidget {
  @override
  _UserPahatidBoookingSummary createState() => _UserPahatidBoookingSummary();
}

class _UserPahatidBoookingSummary extends State<UserPahatidBoookingSummary> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final pahatidProvider = Provider.of<UserPahatidProvider>(context);
    final userProvider = Provider.of<UserProvider>(context);
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    DateTime now = DateTime.now();
    final timeNow = DateFormat('hh:mm a').format(DateTime.now());
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Booking Summary",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        // bottomNavigationBar: SafeArea(
        //   bottom: true,
        //   maintainBottomViewPadding: true,
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        //     child: customButton2(
        //       (){},
        //       "Order Now",
        //       5,
        //       double.infinity,
        //       50,
        //       Pallete.kpBlue,
        //       Pallete.kpBlue,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: oderSummaryTotalBill("Total Bill ", "2345"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Text(
                        "Are this details correct",
                        style: CustomTextStyle.textStyleBlackbold16,
                      ),
                    ),
                    TimelineTile(
                      nodeAlign: TimelineNodeAlign.start,
                      contents: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Text("Pick-up from:"),
                            ),
                            Text(
                              "Jollibee BGC Stopover",
                              style: CustomTextStyle.textStyleBlue16,
                            ),
                            Text(
                              "Juan Dela Cruz",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "09171117777",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "In front of Shell Gas Station",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Item(s):",
                                  style: CustomTextStyle.textStyleGrey14,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "5",
                                    style: CustomTextStyle.textStyleGrey14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 30),
                              child: customTextNotesToRider((value) {}),
                            ),
                          ],
                        ),
                      ),
                      node: TimelineNode(
                        indicator: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.5),
                          child: OutlinedDotIndicator(),
                        ),
                        indicatorPosition: 0,
                        endConnector: SolidLineConnector(
                          thickness: 5,
                          color: Pallete.kpNoticeYellow,
                        ),
                      ),
                    ),
                    // ListView.builder(
                    //   physics: NeverScrollableScrollPhysics(),
                    //   shrinkWrap: true,
                    //   itemBuilder: (context, index) {
                    //     Widget widget =
                    //         pahatidProvider.addTextfields.elementAt(index);
                    //     return widget;
                    //   },
                    //   itemCount: pahatidProvider.addTextfields.length,
                    // ),

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
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Text("Drop-off 1:"),
                            ),
                            Text(
                              "Jollibee BGC Stopover",
                              style: CustomTextStyle.textStyleBlue16,
                            ),
                            Text(
                              "Juan Dela Cruz",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "09171117777",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "In front of Shell Gas Station",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Item(s):",
                                  style: CustomTextStyle.textStyleGrey14,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "3",
                                    style: CustomTextStyle.textStyleGrey14,
                                  ),
                                ),
                                Text(
                                  "In charge of payment",
                                  style: CustomTextStyle.textStyleBlack14,
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 30),
                              child: customTextNotesToRider((value) {}),
                            ),
                          ],
                        ),
                      ),
                      node: TimelineNode(
                        indicator: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: OutlinedDotIndicator(
                            color: Pallete.kpNoticeYellow,
                            child: Container(
                              height: 12,
                              width: 12,
                              child: Image.asset(
                                "assets/payment_icons/pesoicon.png",
                                filterQuality: FilterQuality.high,
                                color: Pallete.kpBlue,
                              ),
                            ),
                          ),
                        ),
                        indicatorPosition: 0,
                        endConnector: SolidLineConnector(
                          thickness: 5,
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
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Text("Drop-off 2:"),
                            ),
                            Text(
                              "Jollibee BGC Stopover",
                              style: CustomTextStyle.textStyleBlue16,
                            ),
                            Text(
                              "Juan Dela Cruz",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "09171117777",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Text(
                              "In front of Shell Gas Station",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Item(s):",
                                  style: CustomTextStyle.textStyleGrey14,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Text(
                                    "3",
                                    style: CustomTextStyle.textStyleGrey14,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 30),
                              child: customTextNotesToRider((value) {}),
                            ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: oderSummaryDeliveryfee("8 km", "₱85.00"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: oderSummaryDiscount("₱10.00"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    "Payment:",
                    style: CustomTextStyle.textStyleBlackbold16,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 30, right: 10, bottom: 20),
                  child: Column(
                    children: [
                      oderSummaryGCash("₱200.00"),
                      oderSummaryCODAbono("₱172.00"),
                      oderSummaryPettyCash("₱200.00"),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery Schedule:",
                      style: CustomTextStyle.textStyleBlackbold16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 20),
                      child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        hint: Text(
                          "Today $timeNow",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Pallete.kpGrey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                          ),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        ),
                        value: pahatidProvider.deliverySched,
                        items: pahatidProvider.deliverySchedule
                            .map((label) => DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Text(label,
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Pallete.kpBlue,
                                        )),
                                  ),
                                  value: label,
                                ))
                            .toList(),
                        onChanged: (value) {
                          if (value == "Pick Time") {
                            showGeneralDialog(
                              barrierDismissible: false,
                              context: context,
                              barrierColor:
                                  Colors.black54, // space around dialog
                              transitionDuration: Duration(milliseconds: 800),
                              transitionBuilder: (context, a1, a2, child) {
                                return ScaleTransition(
                                  scale: CurvedAnimation(
                                      parent: a1,
                                      curve: Curves.elasticOut,
                                      reverseCurve: Curves.easeOutCubic),
                                  child: ShowOrderDate(),
                                );
                              },
                              pageBuilder: (BuildContext context,
                                  Animation animation,
                                  Animation secondaryAnimation) {
                                return null;
                              },
                            );
                          }
                          setState(() => pahatidProvider.deliverySched = value);
                        },
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: 'Please review',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      pageRoute(context, UserProhibitedItems());
                                    },
                                  text: " What We Deliver ",
                                  style: TextStyle(
                                      color: Pallete.kpBlue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: 'before booking.',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: 'By clicking "Book Now", you',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' agree ',
                                  style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                TextSpan(
                                  text: 'to all of our',
                                  style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      pageRoute(context, UserTermsOfUse());
                                    },
                                  text: " Terms of Use.",
                                  style: TextStyle(
                                    color: Pallete.kpBlue,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                //   child: Container(
                //     height: 50,
                //     width: 100.0.w,
                //     child: FlatButton(
                //       onPressed: () => showGeneralDialog(
                //         barrierDismissible: false,
                //         context: context,
                //         barrierColor: Colors.black54, // space around dialog
                //         transitionDuration: Duration(milliseconds: 800),
                //         transitionBuilder: (context, a1, a2, child) {
                //           return ScaleTransition(
                //             scale: CurvedAnimation(
                //                 parent: a1,
                //                 curve: Curves.elasticOut,
                //                 reverseCurve: Curves.easeOutCubic),
                //             child: PabiliBookingSuccessful(),
                //           );
                //         },
                //         pageBuilder: (BuildContext context, Animation animation,
                //             Animation secondaryAnimation) {
                //           return null;
                //         },
                //       ),
                //       color: Pallete.kpRed,
                //       child: Text("Book Now",
                //           style: CustomTextStyle.textStyleWhite16),
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(5.0),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: Container(
                    height: 50,
                    width: 100.0.w,
                    child: FlatButton(
                      onPressed: () {
                        _assigningRider(context);
                        userPabiliProvider.startTime(context);
                      },
                      color: Pallete.kpRed,
                      child: Text("Book Now",
                          style: CustomTextStyle.textStyleWhite16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

_assigningRider(BuildContext context) {
  final userPabiliProvider =
      Provider.of<UserPabiliProvider>(context, listen: false);

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              child: CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Pallete.kpGrey,
              ),
            ),
            Container(
              width: 130,
              height: 130,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  "assets/assigning_rider.png",
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            "Waiting for assigning rider.....",
            style: CustomTextStyle.textStyleBlackbold16,
          ),
        ),
      ],
    ),
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
