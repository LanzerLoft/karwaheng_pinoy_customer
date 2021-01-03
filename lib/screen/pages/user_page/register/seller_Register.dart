import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:kp_mobile/screen/pages/user_page/register/user_register_PhoneOTP.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SellerRegisterStepper extends StatefulWidget {
  @override
  _SellerRegisterStepperState createState() => _SellerRegisterStepperState();
}

class _SellerRegisterStepperState extends State<SellerRegisterStepper> {
  @override
  Widget build(BuildContext context) {
    final userLoginRegProvider = Provider.of<UserLoginRegProvider>(context);
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 100.0.h,
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 12,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: StepProgressIndicator(
                      totalSteps: 2,
                      currentStep: 1,
                      selectedColor: Pallete.kpBlue,
                      unselectedColor: Pallete.kpGrey,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's start with your cellphone number...",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleBlue14,
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 3.0,
                      animation: true,
                      percent: 0.3,
                      center: Text(
                        "1",
                        style: CustomTextStyle.textStyleBluebold18,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Pallete.kpBlue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Enter your Cellphone Number",
                      style: CustomTextStyle.textStyleBlue22),
                ),
                SizedBox(
                  height: 60,
                ),
                customTextFieldBorder((value) {
                  userLoginRegProvider.mobileNo;
                }, "0997-8888888", "Cellphone Number", () {}),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "We will send you a 4-digit verification code",
                    textAlign: TextAlign.center,
                    style: CustomTextStyle.textStyleGrey13,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                customButton(
                  () {
                    pageRoute(
                      context,
                      UserRegisterPhoneOtp(),
                    );
                  },
                  "SEND OTP",
                  5,
                  double.infinity,
                  Pallete.kpBlue,
                  Pallete.kpBlue,
                ),
                SizedBox(
                  height: 10,
                ),
                customFlatButton(
                  () {
                    pageRouteBack(context);
                  },
                  "Cancel",
                ),
                Spacer(),
                customRichTextGestureReg(
                  'Already have an account? ',
                  ' LOGIN here',
                  () {
                    pageRoute(context, UserLoginResponsive());
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
