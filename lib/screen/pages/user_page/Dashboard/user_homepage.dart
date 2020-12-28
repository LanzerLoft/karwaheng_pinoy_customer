import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UserHomepage extends StatefulWidget {
  @override
  _UserHomepageState createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.kpWhite,
      padding: EdgeInsets.all(
        getValueForScreenType<double>(
          context: context,
          mobile: 16,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: customButton2(() {
              pageRoute(context, UserPabiliResponsive());
            }, "PABILI", 5, double.infinity, 45, Pallete.kpBlue,
                Pallete.kpBlue),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: customButton2(() {
              pageRoute(context, UserPahatidResponsive());
            }, "PAHATID", 5, double.infinity, 45, Pallete.kpRed, Pallete.kpRed),
          )
        ],
      ),
    );
  }
}
