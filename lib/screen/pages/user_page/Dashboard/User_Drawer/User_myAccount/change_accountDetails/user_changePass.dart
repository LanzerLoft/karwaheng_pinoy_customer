import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_login.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../user_MyAccount.dart';

class UserchangePassResponsive extends StatefulWidget {
  @override
  _UserchangePassResponsiveState createState() =>
      _UserchangePassResponsiveState();
}

class _UserchangePassResponsiveState extends State<UserchangePassResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangePassCode(),
            landscape: (context) => ChangePassCode(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangePassCode(),
          landscape: (context) => ChangePassCode(),
        );
      },
    );
  }
}

class ChangePassCode extends StatefulWidget {
  const ChangePassCode({Key key}) : super(key: key);

  @override
  _ChangePassCodeState createState() => _ChangePassCodeState();
}

class _ChangePassCodeState extends State<ChangePassCode> {
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
                // Container(
                //   width: 200,
                //   child: PinInputTextFormField(
                //     decoration: UnderlineDecoration(
                //       colorBuilder:
                //           PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey),
                //       bgColorBuilder: _solidEnable ? _solidColor : null,
                //       obscureStyle: ObscureStyle(
                //         isTextObscure: _showpassword,
                //         obscureText: '😂',
                //       ),
                //     ),
                //     pinLength: 4,
                //     autoFocus: true,
                //     textInputAction: TextInputAction.go,
                //     keyboardType: TextInputType.number,
                //     textCapitalization: TextCapitalization.characters,
                //     onSubmit: (pin) {},
                //     onChanged: (pin) {},
                //     onSaved: (pin) {},
                //   ),
                // ),

                customButton(
                  () {
                    pageRoute(context, NewPasscode());
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

class NewPasscode extends StatelessWidget {
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
                  "New\nPasscode",
                  style: CustomTextStyle.textStyleBluebold38,
                  textAlign: TextAlign.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Set New Passcode",
                      style: CustomTextStyle.textStyleGreybold16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: customPasscodeTextField(
                      (value) {}, "Current Passcode", null, context),
                ),
                customPasscodeTextField(
                    (value) {}, "New Passcode", null, context),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customButton(
                    () {
                      pageRoute(context, ForgotPasscodeUpdated());
                    },
                    "Confirm",
                    5,
                    double.infinity,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPasscodeUpdated extends StatelessWidget {
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
        backgroundColor: Colors.white,
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
                Padding(
                  padding: EdgeInsets.only(top: 60, bottom: 20),
                  child: Text(
                    "Passcode\nUpdated",
                    style: CustomTextStyle.textStyleBluebold38,
                    textAlign: TextAlign.center,
                  ),
                ),
                Icon(
                  Icons.check_circle,
                  size: 150,
                  color: Pallete.kpBlue,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Passcode update successful!",
                    style: CustomTextStyle.textStyleGreybold16,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customButton(
                    () {
                      pageRoute(context, UserLoginResponsive());
                    },
                    "Login Now",
                    5,
                    double.infinity,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
