import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:sizer/sizer.dart';

Widget userTransfer() {
  return Container(
    height: 60.0.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            "Select:",
            style: CustomTextStyle.textStyleBlue13,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              customChecboxKPtranser((value) {}, false, "KP USER", () {}),
              SizedBox(
                width: 20.0.w,
              ),
              customChecboxKPtranser((value) {}, false, "Partner Rider", () {}),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            "Enter Email/Phone Number of the receiver",
            style: CustomTextStyle.textStyleBlue13,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              customChecboxKPtranser((value) {}, false, "Email", () {}),
              SizedBox(
                width: 25.0.w,
              ),
              customChecboxKPtranser((value) {}, false, "Phone Number", () {}),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: customTextField((value) {}, ""),
        ),
        Align(
            alignment: Alignment.center,
            child: customButton2(
                () {}, "Search", 20, 80, 35, Pallete.kpRed, Pallete.kpRed))
      ],
    ),
  );
}
