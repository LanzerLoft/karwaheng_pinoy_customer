import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class SliverAppbar extends StatefulWidget {
  @override
  _SliverAppbarState createState() => _SliverAppbarState();
}

class _SliverAppbarState extends State<SliverAppbar> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final userRegProvider = Provider.of<UserLoginRegProvider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 25.0.h,
        backgroundColor: Pallete.kpWhite,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepProgressIndicator(
                  totalSteps: 2,
                  currentStep: 2,
                  selectedColor: Pallete.kpBlue,
                  unselectedColor: Pallete.kpGrey,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 3.0,
                        animation: true,
                        percent: 1.0,
                        center: Text(
                          "2",
                          style: CustomTextStyle.textStyleBluebold18,
                        ),
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Pallete.kpBlue,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Account Information...",
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Please tell us about you…",
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.textStyleBlue14,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            customButton(() {
              pageRouteBack(context);
            }, "Back", 5, 150, Pallete.kpYellow, Pallete.kpRed),
            customButton(
              () {
                // userRegProvider.registerUser(context);
                pageRoute(context, UserLoginResponsive());
              },
              "Register Now",
              5,
              150,
              Pallete.kpRed,
              Pallete.kpBlue,
            ),
          ],
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextField(
                  (value) {
                    userRegProvider.regFirstName(value);
                  },
                  "First Name",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {
                      userRegProvider.regLastName(value);
                    },
                    "Last Name",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {
                      userRegProvider.regUsername(value);
                    },
                    "*Username",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customPasscodeTextField(
                    (value) {
                      userRegProvider.passcode;
                    },
                    "*Enter your 4 digit Passcode",
                    null,
                    context,
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
                    items: userRegProvider.listage
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
                      userRegProvider.regAge(value);
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
                    items: userRegProvider.listgender
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
                    items: userRegProvider.listhomeTown
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
