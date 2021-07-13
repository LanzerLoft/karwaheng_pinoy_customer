import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';

import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../user_passcodeReset.dart';
import 'user_phoneNewPasscode.dart';

class ChangePassPhoneOtpResponsive extends StatefulWidget {
  @override
  _ChangePassPhoneOtpResponsiveState createState() =>
      _ChangePassPhoneOtpResponsiveState();
}

class _ChangePassPhoneOtpResponsiveState
    extends State<ChangePassPhoneOtpResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangePassPhoneOtp(),
            landscape: (context) => ChangePassPhoneOtp(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangePassPhoneOtp(),
          landscape: (context) => ChangePassPhoneOtp(),
        );
      },
    );
  }
}

class ChangePassPhoneOtp extends StatefulWidget {
  const ChangePassPhoneOtp({Key key}) : super(key: key);

  @override
  _ChangePassPhoneOtpState createState() => _ChangePassPhoneOtpState();
}

class _ChangePassPhoneOtpState extends State<ChangePassPhoneOtp> {
  @override
  void initState() {
    super.initState();
    SmsAutoFill().listenForCode;
  }

  @override
  Widget build(BuildContext context) {
    ColorBuilder _solidColor =
        PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
    bool _solidEnable = false;
    bool _showpassword = false;
    final userProvider = Provider.of<UserProvider>(context);
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 22,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      strokeColorBuilder:
                          PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey),
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
                    pageRoute(context, ChangNewPasscodeViaPhone());
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
                  onTap: () {},
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
