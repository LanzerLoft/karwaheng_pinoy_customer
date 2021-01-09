import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'user_accountInformation.dart';

class UserRegisterPhoneOtp extends StatefulWidget {
  @override
  _UserRegisterPhoneOtpState createState() => _UserRegisterPhoneOtpState();
}

class _UserRegisterPhoneOtpState extends State<UserRegisterPhoneOtp> {
  ColorBuilder _solidColor =
      PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
  bool _solidEnable = false;
  bool _showpassword = false;

  @override
  Widget build(BuildContext context) {
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
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    "assets/otp_image/KP_Icon2.png",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("OTP Verification",
                      style: CustomTextStyle.textStyleBlue22),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Enter the OTP sent to mobileNo",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue13,
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: 200,
                  child: PinInputTextFormField(
                    decoration: UnderlineDecoration(
                      colorBuilder:
                          PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey),
                      bgColorBuilder: _solidEnable ? _solidColor : null,
                      obscureStyle: ObscureStyle(
                        isTextObscure: _showpassword,
                        obscureText: '😂',
                      ),
                    ),
                    pinLength: 4,
                    textInputAction: TextInputAction.go,
                    keyboardType: TextInputType.number,
                    textCapitalization: TextCapitalization.characters,
                    onSubmit: (pin) {},
                    onChanged: (pin) {},
                    onSaved: (pin) {},
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                customButton(
                  () {
                    pageRoute(
                      context,
                      UserAccountInformation(),
                    );
                  },
                  "Verify & Continue",
                  5,
                  double.infinity,
                  Pallete.kpBlue,
                  Pallete.kpBlue,
                ),
                SizedBox(
                  height: 25,
                ),
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
                        text: 'Didn\'t receive the 4-digit OTP? ',
                        style: CustomTextStyle.textgrey14,
                        children: [
                          TextSpan(
                            text: ' Resend',
                            style: CustomTextStyle.textStyleRed16,
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
