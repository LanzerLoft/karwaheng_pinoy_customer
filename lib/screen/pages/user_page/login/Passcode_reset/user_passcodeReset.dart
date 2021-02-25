import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

import 'Email_otp/user_EmailOTP.dart';
import 'Phone_otp/user_phoneOTP.dart';

class UserPasscodeReset extends StatefulWidget {
  @override
  _UserPasscodeResetState createState() => _UserPasscodeResetState();
}

class _UserPasscodeResetState extends State<UserPasscodeReset> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Pallete.kpWhite,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          elevation: 0,
          backgroundColor: Pallete.kpWhite,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: CustomConSize.mobile,
                ),
              ),
              height: 70.0.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text("Passcode Reset",
                        style: CustomTextStyle.textStyleBlue28),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Text(
                      "We will send a 4-digit Verification code to the email or mobile number registered on file.",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleGrey13,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  customTabBarMPR("Email", "Cellphone Number"),
                  // Text("Select:", style: CustomTextStyle.textStyleGrey13),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // customRadiobutton(
                  //   (value) {
                  //     userProvider.resetPassViaPhone();
                  //   },
                  //   0,
                  //   "Cellphone Number",
                  //   userProvider.resetViaPhone,
                  // ),
                  // customRadiobutton(
                  //   (value) {
                  //     userProvider.resetPassViaEmail();
                  //   },
                  //   1,
                  //   "Email",
                  //   userProvider.resetViaEmail,
                  // ),
                  Container(
                    height: 30.0.h,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: customTextFieldResetViaEmail(
                                (value) {},
                                "Email",
                                null,
                              ),
                            ),
                            customButton(
                              () {
                                pageRoute(context, ChangePassEmailOtp());
                              },
                              "Next",
                              5,
                              double.infinity,
                              Pallete.kpBlue,
                              Pallete.kpBlue,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: customTextFieldResetViaPhone(
                                (value) {},
                                "0997-8888888",
                                null,
                              ),
                            ),
                            customButton(
                              () {
                                pageRoute(context, ChangePassPhoneOtp());
                              },
                              "Next",
                              5,
                              double.infinity,
                              Pallete.kpBlue,
                              Pallete.kpBlue,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       pageRoute(context, RegisterResponsive());
                  //     },
                  //     child: Text.rich(
                  //       TextSpan(
                  //           text: 'New user?',
                  //           style: CustomTextStyle.textblue14,
                  //           children: [
                  //             TextSpan(
                  //               text: '  REGISTER Here',
                  //               style: CustomTextStyle.register,
                  //             ),
                  //           ]),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
