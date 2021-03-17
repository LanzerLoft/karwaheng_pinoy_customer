import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserAboutUs extends StatefulWidget {
  @override
  _UserAboutUs createState() => _UserAboutUs();
}

class _UserAboutUs extends State<UserAboutUs> {
  String selected;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child:
                      Text("About Us", style: CustomTextStyle.helpCenterTitle),
                ),

                // Text(
                //   "Karwaheng Pinoy Delivery Services",
                //   style: CustomTextStyle.textStyleBluebold18,
                // ),
                Padding(
                  padding: CustomPadding.padding16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "    Karwaheng Pinoy Delivery Services ",
                          style: TextStyle(
                            height: 2,
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  "is a 100% Filipino owned technology sole proprietorship engaged in same day and scheduled door-to-door motorcycle delivery and purchase services in the National Capital Region (NCR) through our mobile apps (Android and iOS) connecting Customers to our Partner riders. Karwaheng Pinoy envisions to be the most preferred Pahatid and Pabili service provider by a Filipino, for the Filipinos.",
                              style: TextStyle(
                                height: 2,
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }
}
