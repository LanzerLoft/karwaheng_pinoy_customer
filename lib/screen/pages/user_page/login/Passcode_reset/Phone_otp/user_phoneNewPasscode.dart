import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';

class PhoneNewPasscode extends StatefulWidget {
  @override
  _PhoneNewPasscodeState createState() => _PhoneNewPasscodeState();
}

class _PhoneNewPasscodeState extends State<PhoneNewPasscode> {
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
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text("Passcode Reset",
                      style: CustomTextStyle.textStyleBlue28),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Enter New PassCode:",
                    style: CustomTextStyle.textStyleBlue13),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      child: PinInputTextFormField(
                        decoration: UnderlineDecoration(
                          colorBuilder: PinListenColorBuilder(
                              Pallete.kpBlue, Pallete.kpGrey),
                          bgColorBuilder: _solidEnable ? _solidColor : null,
                          obscureStyle: ObscureStyle(
                            isTextObscure: _showpassword,
                            obscureText: '😂',
                          ),
                          hintText: "0000",
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
                      width: 20,
                    ),
                    Container(
                      height: 25,
                      child: GestureDetector(
                        onTap: () {
                          // Update the state i.e. toogle the state of passwordVisible variable
                          setState(() {
                            _showpassword = !_showpassword;
                          });
                          print("hello");
                        },
                        child: Icon(
                          // Based on passwordVisible state choose the icon
                          _showpassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Pallete.kpBlue,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                customButton(
                  () {
                    pageRoute(
                      context,
                      PhoneNewPasscode(),
                    );
                  },
                  "Change Passcode",
                  5,
                  double.infinity,
                  Pallete.kpBlue,
                  Pallete.kpBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
