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

class UserChangeEmailrRes extends StatefulWidget {
  final String email;

  UserChangeEmailrRes({
    Key key,
    @required this.email,
  }) : super(key: key);

  @override
  _UserChangeEmailrResState createState() => _UserChangeEmailrResState();
}

class _UserChangeEmailrResState extends State<UserChangeEmailrRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => EmailOTP(
              email: widget.email,
            ),
            landscape: (context) => EmailOTP(
              email: widget.email,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => EmailOTP(
            email: widget.email,
          ),
          landscape: (context) => EmailOTP(
            email: widget.email,
          ),
        );
      },
    );
  }
}

class ChangeEmail extends StatefulWidget {
  final String email;

  ChangeEmail({
    Key key,
    @required this.email,
  }) : super(key: key);
  @override
  _ChangeEmailState createState() => _ChangeEmailState();
}

class _ChangeEmailState extends State<ChangeEmail> {
  @override
  Widget build(BuildContext context) {
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
            "Change Email",
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
                  child: Text("Set New Email",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.kpGrey,
                          fontWeight: FontWeight.bold)),
                ),
                textFieldChangeDetailsEmail(
                  (value) {},
                  TextEditingController(text: widget.email),
                  "Email",
                  "Email",
                  () {},
                  userProvider.changeEmailValidation,
                ),
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

class EmailOTP extends StatefulWidget {
  final String email;

  EmailOTP({
    Key key,
    @required this.email,
  }) : super(key: key);
  @override
  _EmailOTPState createState() => _EmailOTPState();
}

class _EmailOTPState extends State<EmailOTP> {
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
                  "Enter the OTP sent to \n${widget.email}",
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
                        ChangeEmail(
                          email: widget.email,
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
