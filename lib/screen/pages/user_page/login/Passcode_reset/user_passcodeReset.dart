import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';

import 'Phone_otp/user_phoneOTP.dart';

class UserPasscodeReset extends StatefulWidget {
  @override
  _UserPasscodeResetState createState() => _UserPasscodeResetState();
}

class _UserPasscodeResetState extends State<UserPasscodeReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SafeArea(
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  "We will send a 4-digit Verification code to the email or mobile number registered on file.",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue13,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Select:", style: CustomTextStyle.textStyleBlue13),
              SizedBox(
                height: 20,
              ),
              customRadiobutton(
                (value) {},
                false,
                "0907-xxx-xx07",
                true,
              ),
              customRadiobutton(
                (value) {},
                false,
                "Ka***h**gP**oy@*mail.com",
                true,
              ),
              SizedBox(
                height: 100,
              ),
              customButton(
                () {
                  pageRoute(
                    context,
                    PhoneResetOTP(),
                  );
                },
                "SEND OTP",
                5,
                double.infinity,
                Pallete.kpBlue,
                Pallete.kpBlue,
              ),
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    pageRoute(context, RegisterResponsive());
                  },
                  child: Text.rich(
                    TextSpan(
                        text: 'New user?',
                        style: CustomTextStyle.textblue14,
                        children: [
                          TextSpan(
                            text: '  REGISTER Here',
                            style: CustomTextStyle.register,
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
