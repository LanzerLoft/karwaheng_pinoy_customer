import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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

class UserPahatidBoookingSummary extends StatefulWidget {
  @override
  _UserPahatidBoookingSummary createState() => _UserPahatidBoookingSummary();
}

class _UserPahatidBoookingSummary extends State<UserPahatidBoookingSummary> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final pahatidProvider = Provider.of<UserPahatidProvider>(context);
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: oderSummaryTotalBill("Total Bill ", "2345"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: oderSummaryDeliveryfee("8 km", "2345"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: oderSummaryDiscount("25"),
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
                      oderSummaryGCash("200.00"),
                      oderSummaryCODAbono("400.00"),
                      oderSummaryPettyCash("400.00"),
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
                                  fontSize: 14),
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
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: 'before booking.',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
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
                                  fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' agree ',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: 'to all of our',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
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
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: Container(
                    height: 50,
                    width: 100.0.w,
                    child: FlatButton(
                      onPressed: () {},
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
