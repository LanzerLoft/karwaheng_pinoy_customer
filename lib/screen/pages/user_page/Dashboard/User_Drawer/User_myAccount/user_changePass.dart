import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'user_MyAccount.dart';

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
            portrait: (context) => ChangePasscode(),
            landscape: (context) => ChangePasscode(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangePasscode(),
          landscape: (context) => ChangePasscode(),
        );
      },
    );
  }
}

class ChangePasscode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBuilder _solidColor =
        PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
    bool _solidEnable = false;
    bool _showpassword = false;
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
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
                "Enter the OTP sent to 0997-1****88",
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
    );
  }
}

class NewPasscode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "New Passcode",
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
                child: Text("Set New Passcode",
                    style: TextStyle(
                        fontSize: 22,
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.bold)),
              ),
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting.",
                  style: CustomTextStyle.textStyleGrey14),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: customPasscodeTextField(
                    (value) {}, "New Passcode", null, context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: customButton(
                  () {
                    pageRoute(context, UserMyAccount());
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
    );
  }
}
