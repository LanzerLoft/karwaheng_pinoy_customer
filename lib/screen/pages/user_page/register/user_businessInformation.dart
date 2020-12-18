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

class UserBusinessInformation extends StatefulWidget {
  @override
  _UserBusinessInformationState createState() =>
      _UserBusinessInformationState();
}

class _UserBusinessInformationState extends State<UserBusinessInformation> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customButton(() {
              pageRouteBack(context);
            }, "Back", 5, 150, Pallete.kpYellow, Pallete.kpRed),
            customButton(
                () {}, "Register Now", 5, 150, Pallete.kpRed, Pallete.kpBlue),
          ],
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 100.0.h,
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: StepProgressIndicator(
                      totalSteps: 3,
                      currentStep: 3,
                      selectedColor: Pallete.kpBlue,
                      unselectedColor: Pallete.kpGrey,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Business Information",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleBlue13,
                    ),
                    CircularPercentIndicator(
                      radius: 50.0,
                      lineWidth: 3.0,
                      animation: true,
                      percent: 0.99,
                      center: Text(
                        "3",
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
                  "..and a little about your business.",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue14,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {},
                    "Business name (optional)",
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
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kpGreyOkpGreypacity,
                  ),
                  child: DropdownButtonFormField<String>(
                    hint: Text("What products are you selling?",
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
                Spacer(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     customButton(
                //         () {}, "Back", 5, 150, Pallete.kpYellow, Pallete.kpRed),
                //     customButton(
                //         () {}, "Next", 5, 150, Pallete.kpRed, Pallete.kpBlue),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
