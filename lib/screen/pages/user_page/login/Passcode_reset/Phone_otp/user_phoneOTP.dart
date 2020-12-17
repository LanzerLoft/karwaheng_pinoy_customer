import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';

import 'user_phoneNewPasscode.dart';

class PhoneResetOTP extends StatefulWidget {
  @override
  _PhoneResetOTPState createState() => _PhoneResetOTPState();
}

class _PhoneResetOTPState extends State<PhoneResetOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Passcode Reset",
                      style: CustomTextStyle.textStyleBlue28),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shape: Border.all(color: Pallete.kpGrey),
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
                    child: Column(
                      children: [
                        Text(
                          "One Time Verfication Code (OTP) was sent to: \n 0997-XXX-XX17",
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.textStyleBlue13,
                        ),
                        customTextFieldNoBorder(
                            (value) {}, "Enter the SMS Code", null, () {}),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                customButton(
                  () {
                    pageRoute(
                      context,
                      PhoneNewPasscode(),
                    );
                  },
                  "SUBMIT",
                  5,
                  double.infinity,
                  Pallete.kpBlue,
                  Pallete.kpBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
