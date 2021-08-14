import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:sms_autofill/sms_autofill.dart';

import 'seller_AccountInformation.dart';
import 'user_accountInformation.dart';

class SellerRegisterPhoneOtp extends StatefulWidget {
  @override
  _SellerRegisterPhoneOtpState createState() => _SellerRegisterPhoneOtpState();
}

class _SellerRegisterPhoneOtpState extends State<SellerRegisterPhoneOtp> {
  ColorBuilder _solidColor =
      PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
  bool _solidEnable = false;
  bool _showpassword = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
        ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "OTP\nVerification",
                    style: CustomTextStyle.textStyleBluebold38,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Enter the OTP sent to 09971****88",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleGrey16,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                    child: PinFieldAutoFill(
                      decoration: BoxLooseDecoration(
                        strokeColorBuilder: PinListenColorBuilder(
                            Pallete.kpBlue, Pallete.kpGrey),
                        bgColorBuilder: _solidEnable ? _solidColor : null,
                        obscureStyle: ObscureStyle(
                          isTextObscure: _showpassword,
                          obscureText: '😂',
                        ),
                      ),
                      textInputAction: TextInputAction.go,
                      keyboardType: TextInputType.number,
                      codeLength: 4,
                      onCodeSubmitted: (pin) {},
                      onCodeChanged: (val) {
                        print(val);
                      },
                    ),
                  ),
                  customButton(
                    () {
                      pageRoute(
                        context,
                        SellerAccountInformation(),
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
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("resend");
                                },
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
      ),
    );
  }
}
