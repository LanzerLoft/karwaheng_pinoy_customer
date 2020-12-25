import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:kp_mobile/screen/pages/user_page/register/user_register_PhoneOTP.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'user_businessInformation.dart';

class UserAccountInformation extends StatefulWidget {
  @override
  _UserAccountInformationState createState() => _UserAccountInformationState();
}

class _UserAccountInformationState extends State<UserAccountInformation> {
  ColorBuilder _solidColor =
      PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
  bool _solidEnable = false;
  bool _showpassword = false;
  String dropdownValue = 'One';

  String selected;
  List<String> gender = [
    "Male",
    "Female",
    "Prefer not to say",
  ];
  List<String> homeTown = [
    "Manila",
    "Quezon City",
    "Caloocan",
    "Las Piñas",
    "Makati",
    "Malabon",
    "Mandaluyong",
    "Marikina",
    "Muntinlupa",
    "Navotas",
    "Parañaque",
    "Pasay",
    "Pasig",
    "San Juan",
    "Valenzuela",
    "Taguig",
    "Pateros",
  ];

  List<String> age = [
    "18-30ys old ",
    "30-40ys old",
    "40-60ys old",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: customButton(
          () {
            pageRoute(context, UserBusinessInformation());
          },
          "Next",
          5,
          200,
          Pallete.kpBlue,
          Pallete.kpBlue,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: SafeArea(
        child: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 2,
                      selectedColor: Pallete.kpBlue,
                      unselectedColor: Pallete.kpGrey,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Account Information",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleBlue13,
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 3.0,
                      animation: true,
                      percent: 0.6,
                      center: Text(
                        "2",
                        style: CustomTextStyle.textStyleBluebold18,
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Pallete.kpBlue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Please tell us about you…",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue14,
                ),
                SizedBox(
                  height: 15,
                ),
                customTextField(
                  (value) {},
                  "First Name",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {},
                    "Last Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {},
                    "*Username",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customPasscodeTextField(
                    (value) {},
                    "*Enter your 4 digit Passcode",
                    null,
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 15),
                //   child: Container(
                //     height: 45,
                //     padding: EdgeInsets.symmetric(horizontal: 20),
                //     child: PinInputTextFormField(
                //       decoration: BoxLooseDecoration(
                //         strokeColorBuilder: PinListenColorBuilder(
                //             Pallete.kpBlue, Pallete.kpGrey),
                //         bgColorBuilder: _solidEnable ? _solidColor : null,
                //         obscureStyle: ObscureStyle(
                //           isTextObscure: _showpassword,
                //           obscureText: '😂',
                //         ),
                //         hintText: "0000",
                //       ),
                //       pinLength: 4,
                //       textInputAction: TextInputAction.go,
                //       keyboardType: TextInputType.number,
                //       textCapitalization: TextCapitalization.characters,
                //       onSubmit: (pin) {},
                //       onChanged: (pin) {},
                //       onSaved: (pin) {},
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kpGreyOkpGreypacity,
                  ),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    hint: Text("Age",
                        style: TextStyle(
                          fontSize: 14,
                          color: Pallete.kpGrey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                    ),
                    value: selected,
                    items: age
                        .map((label) => DropdownMenuItem(
                              child: Text(label,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Pallete.kpBlue,
                                  )),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kpGreyOkpGreypacity,
                  ),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    hint: Text("Gender",
                        style: TextStyle(
                          fontSize: 14,
                          color: Pallete.kpGrey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                    ),
                    value: selected,
                    items: gender
                        .map((label) => DropdownMenuItem(
                              child: Text(label,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Pallete.kpBlue,
                                  )),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kpGreyOkpGreypacity,
                  ),
                  child: DropdownButtonFormField<String>(
                    hint: Text("Hometown",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                    ),
                    value: selected,
                    items: homeTown
                        .map((label) => DropdownMenuItem(
                              child: Text(label,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Pallete.kpBlue,
                                  )),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {},
                    "Referral Code (optional)",
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 30, bottom: 30),
                //   child: Align(
                //     alignment: Alignment.bottomRight,
                //     child: customButton(
                //       () {
                //         pageRoute(context, UserBusinessInformation());
                //       },
                //       "Next",
                //       5,
                //       200,
                //       Pallete.kpBlue,
                //       Pallete.kpBlue,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
