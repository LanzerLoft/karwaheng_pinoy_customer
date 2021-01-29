import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/seller_page/Seller_Drawer/Seller_Dashboard/Seller_DashBoard.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class SellerPahatidSummary extends StatefulWidget {
  @override
  _SellerPahatidSummary createState() => _SellerPahatidSummary();
}

class _SellerPahatidSummary extends State<SellerPahatidSummary> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
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
        bottomNavigationBar: SafeArea(
          bottom: true,
          maintainBottomViewPadding: true,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: customButton2(
              () {
                pageRoute(context, SellerMainDashboard());
              },
              "Order Now",
              5,
              double.infinity,
              50,
              Pallete.kpBlue,
              Pallete.kpBlue,
            ),
          ),
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: customTimelineTilePahatid(
                        "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                        "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                      ),
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customRichTextBooking("Booking ID:", "\nKP12345"),
                          customListTextBookingPesoIcon("Delivery Fee:", "999"),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customListTextBooking(
                              "Item Description:  ", "Blue jansport Bags"),
                          customListTextBooking("Notes to Rider:  ",
                              "Call me when you get here po"),
                          customListTextBooking("Additional Services  ", "n/a"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBookingSummaryPayment(
                                  "Payment Method:  ",
                                  "Cash on Delievery",
                                  "GCASH"),
                              customListTextBooking("Promo Code  ", "n/a"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
