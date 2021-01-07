import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserCalculateWeight extends StatefulWidget {
  @override
  _UserCalculateWeightState createState() => _UserCalculateWeightState();
}

class _UserCalculateWeightState extends State<UserCalculateWeight> {
  @override
  Widget build(BuildContext context) {
    final userCalculateProvider = Provider.of<UserCalculate>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Calculate Weight",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 35.0.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/otp_image/KP_Icon2.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextfieldCalculate((value) {
                            userCalculateProvider.setLenght(value);
                          }, "Length"),
                          customTextfieldCalculate((value) {
                            userCalculateProvider.setWidth(value);
                          }, "Width"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextfieldCalculate((value) {
                            userCalculateProvider.setHeight(value);
                          }, "Height"),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child:
                                customRichTextWeight("Total Weight", "\n5kgs"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                ),
                child: customButton2(() {
                  userCalculateProvider.totalVolumetric();
                }, "See Maximum Allowed Limit", 5, double.infinity, 50,
                    Pallete.kpBlue, Pallete.kpBlue),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //     vertical: 5,
              //   ),
              //   child: customButton2(() {}, "See Prohibited Items", 5,
              //       double.infinity, 50, Pallete.kpRed, Pallete.kpRed),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
