import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class UserAccountInformation extends StatefulWidget {
  @override
  _UserAccountInformationState createState() => _UserAccountInformationState();
}

class _UserAccountInformationState extends State<UserAccountInformation> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final userRegProvider = Provider.of<UserLoginRegProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 15.0.h,
        backgroundColor: Pallete.kpWhite,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: StepProgressIndicator(
                    totalSteps: 2,
                    currentStep: 2,
                    selectedColor: Pallete.kpBlue,
                    unselectedColor: Pallete.kpGrey,
                  ),
                ),
                Row(
                  children: [
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 3.0,
                      animation: true,
                      percent: 1,
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        maintainBottomViewPadding: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customButton(() {
                pageRouteBack(context);
              }, "Back", 5, 35.0.w, Pallete.kpBlue, Pallete.kpBlue),
              customButton(
                  () => showGeneralDialog(
                        barrierDismissible: false,
                        context: context,
                        barrierColor: Colors.black54, // space around dialog
                        transitionDuration: Duration(milliseconds: 800),
                        transitionBuilder: (context, a1, a2, child) {
                          return ScaleTransition(
                            scale: CurvedAnimation(
                                parent: a1,
                                curve: Curves.elasticOut,
                                reverseCurve: Curves.easeOutCubic),
                            child: RegisterSuccessfull(),
                          );
                        },
                        pageBuilder: (BuildContext context, Animation animation,
                            Animation secondaryAnimation) {
                          return null;
                        },
                      ),
                  "Register Now",
                  5,
                  35.0.w,
                  Pallete.kpBlue,
                  Pallete.kpBlue),
            ],
          ),
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: SafeArea(
        child: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: CustomConSize.mobile,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Please tell us about you…",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.textStyleBlue14,
                    ),
                  ),
                ),
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
                    "Username",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customPasscodeTextField(
                    (value) {
                      userRegProvider.passcode;
                    },
                    "Enter your 4 digit Passcode",
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
                    hint: Text(" Age",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Pallete.kpGrey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    value: selected,
                    items: userRegProvider.listage
                        .map((label) => DropdownMenuItem(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Pallete.kpBlue,
                                    )),
                              ),
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
                    hint: Text(" Gender",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Pallete.kpGrey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    value: selected,
                    items: userRegProvider.listgender
                        .map((label) => DropdownMenuItem(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Pallete.kpBlue,
                                    )),
                              ),
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
                    hint: Text(" Hometown",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    value: selected,
                    items: userRegProvider.listhomeTown
                        .map((label) => DropdownMenuItem(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Pallete.kpBlue,
                                    )),
                              ),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      userRegProvider.regBookOften(value);
                      setState(() => selected = value);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customTextField(
                    (value) {
                      // userRegProvider.regMobileNo(value);
                    },
                    "Referral Code (optional)",
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
