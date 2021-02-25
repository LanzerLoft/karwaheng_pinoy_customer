import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import '../user_MyAccount.dart';

class UserChangeMobileNumberRes extends StatefulWidget {
  final String mobileNumber;

  UserChangeMobileNumberRes({
    Key key,
    @required this.mobileNumber,
  }) : super(key: key);

  @override
  _UserChangeMobileNumberResState createState() =>
      _UserChangeMobileNumberResState();
}

class _UserChangeMobileNumberResState extends State<UserChangeMobileNumberRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => MobileNumberOTP(
              mobileNumber: widget.mobileNumber,
            ),
            landscape: (context) => MobileNumberOTP(
              mobileNumber: widget.mobileNumber,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => MobileNumberOTP(
            mobileNumber: widget.mobileNumber,
          ),
          landscape: (context) => MobileNumberOTP(
            mobileNumber: widget.mobileNumber,
          ),
        );
      },
    );
  }
}

class ChangemobileNumber extends StatefulWidget {
  final String mobileNumber;

  ChangemobileNumber({
    Key key,
    @required this.mobileNumber,
  }) : super(key: key);
  @override
  _ChangemobileNumberState createState() => _ChangemobileNumberState();
}

class _ChangemobileNumberState extends State<ChangemobileNumber> {
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
          centerTitle: true,
          title: Text(
            "Change Mobile Number",
            style: CustomTextStyle.textStyleBlue18,
          ),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Set New Mobile Number",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.kpGrey,
                          fontWeight: FontWeight.bold)),
                ),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.mobileNumber),
                    "Mobile Number",
                    "Mobile Number",
                    () {}),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customButton(
                    () {
                      pageRoute(context, UserMyAccount());
                    },
                    "Save",
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

class MobileNumberOTP extends StatefulWidget {
  final String mobileNumber;

  MobileNumberOTP({
    Key key,
    @required this.mobileNumber,
  }) : super(key: key);
  @override
  _MobileNumberOTPState createState() => _MobileNumberOTPState();
}

class _MobileNumberOTPState extends State<MobileNumberOTP> {
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
          centerTitle: true,
          title: Text(
            "OTP Verification",
            style: CustomTextStyle.textStyleBlue18,
          ),
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
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Enter the OTP sent to ${widget.mobileNumber}",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleGrey16,
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
                    autoFocus: true,
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
                        ChangemobileNumber(
                          mobileNumber: widget.mobileNumber,
                        ));
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
                customRichTextGestureResend(
                  'Didn\'t receive the 4-digit OTP? ',
                  ' Resend',
                  () {
                    pageRoute(context, UserMyAccount());
                  },
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
