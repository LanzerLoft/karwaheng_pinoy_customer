import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

class UserRegisterStepper extends StatefulWidget {
  @override
  _UserRegisterStepperState createState() => _UserRegisterStepperState();
}

class _UserRegisterStepperState extends State<UserRegisterStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 100.0.h,
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Enter your Cellphone Number",
                      style: CustomTextStyle.textStyleBlue28),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "We will send you a 4-digit verification code",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue13,
                ),
                SizedBox(
                  height: 25,
                ),
                customTextFieldBorder(
                    (value) {}, "0997-8888888", "Cellphone Number", () {}),
                SizedBox(
                  height: 50,
                ),
                customButton(
                  () {
                    // pageRoute(
                    //   context,
                    //   PhoneNewPasscode(),
                    // );
                  },
                  "SEND OTP",
                  5,
                  double.infinity,
                  Pallete.kpBlue,
                  Pallete.kpBlue,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "cancel",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue13,
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterResponsive(),
                      ),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                        text: 'Already have an account? ',
                        style: CustomTextStyle.textgrey14,
                        children: [
                          TextSpan(
                            text: ' LOGIN here',
                            style: CustomTextStyle.textStyleBlue13,
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
