import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:kp_mobile/screen/pages/user_page/register/user_register_PhoneOTP.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
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
  String selected;

  @override
  Widget build(BuildContext context) {
    final userRegProvider = Provider.of<UserLoginRegProvider>(context);
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
                    (value) {
                      userRegProvider.regBusinessName(value);
                    },
                    "Business name (optional)",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: customTextField(
                    (value) {
                      userRegProvider.regBusinessAddress(value);
                    },
                    "Business Address: (Where are you based?)",
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
                    items: userRegProvider.listproducts
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void showFancyCustomDialog(BuildContext context) {
  //   Dialog registerSuccessful = Dialog(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(12.0),
  //     ),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(20.0),
  //       ),
  //       height: 300.0,
  //       width: 300.0,
  //       child: Stack(
  //         children: <Widget>[
  //           Container(
  //             width: double.infinity,
  //             height: 300,
  //             decoration: BoxDecoration(
  //               color: Colors.grey[100],
  //               borderRadius: BorderRadius.circular(12.0),
  //             ),
  //           ),
  //           Container(
  //             width: double.infinity,
  //             height: 50,
  //             alignment: Alignment.bottomCenter,
  //             decoration: BoxDecoration(
  //               color: Pallete.kpBlue,
  //               borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(12),
  //                 topRight: Radius.circular(12),
  //               ),
  //             ),
  //             child: Align(
  //               alignment: Alignment.center,
  //               child: Text(
  //                 "Register Successful!",
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.w600),
  //               ),
  //             ),
  //           ),
  //           Align(
  //             alignment: Alignment.bottomCenter,
  //             child: InkWell(
  //               onTap: () {
  //                 pageRoute(context, UserLoginResponsive());
  //               },
  //               child: Container(
  //                 width: double.infinity,
  //                 height: 50,
  //                 decoration: BoxDecoration(
  //                   color: Pallete.kpBlue,
  //                   borderRadius: BorderRadius.only(
  //                     bottomLeft: Radius.circular(12),
  //                     bottomRight: Radius.circular(12),
  //                   ),
  //                 ),
  //                 child: Align(
  //                   alignment: Alignment.center,
  //                   child: Text(
  //                     "Login Now!",
  //                     style: TextStyle(
  //                         color: Colors.white,
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.w600),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ),
  //           Align(
  //             // These values are based on trial & error method
  //             alignment: Alignment(1.05, -1.05),
  //             child: InkWell(
  //               onTap: () {
  //                 pageRouteBack(context);
  //               },
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                   color: Colors.grey[200],
  //                   borderRadius: BorderRadius.circular(12),
  //                 ),
  //                 child: Icon(
  //                   Icons.close,
  //                   color: Colors.black,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) => registerSuccessful);
  // }
}
