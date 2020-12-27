import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';

import 'package:kp_mobile/screen/custom/custom_Button.dart';
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
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Calculate Volumetric Weight",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: customTextfieldCalculate((value) {
                  userCalculateProvider.setLenght(value);
                }, "Length"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: customTextfieldCalculate((value) {
                  userCalculateProvider.setWidth(value);
                }, "Width"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                child: customTextfieldCalculate((value) {
                  userCalculateProvider.setHeight(value);
                }, "Height"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  "(L x W x H/5000 = kg)\n(Total Volumetric Weight)",
                  style: CustomTextStyle.textStyleGrey15,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: customButton2(() {
                  userCalculateProvider.totalVolumetric();
                }, "See Maximum Allowed Limit", 5, double.infinity, 40,
                    Pallete.kpBlue, Pallete.kpBlue),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: customButton2(() {}, "See Prohibited Items", 5,
                    double.infinity, 40, Pallete.kpRed, Pallete.kpRed),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
