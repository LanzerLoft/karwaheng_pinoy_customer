import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'custom_widget/custom_user_dashboardDrawer.dart';

class UserChooseAService extends StatefulWidget {
  @override
  _UserChooseAServiceState createState() => _UserChooseAServiceState();
}

class _UserChooseAServiceState extends State<UserChooseAService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
      ),
      drawer: UserDrawer(),
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          color: Pallete.kpWhite,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrientationLayoutBuilder(
                portrait: (context) =>
                    ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return Center(
                      child: Container(
                        width: 50.0.h,
                        height: 50.0.h,
                        child: Image.asset(
                          "assets/login_images/KP_LOGO.png",
                        ),
                      ),
                    );
                  }
                  return Center(
                    child: Container(
                      width: 50.0.h,
                      height: 50.0.h,
                      child: Image.asset(
                        "assets/login_images/KP_LOGO.png",
                      ),
                    ),
                  );
                }),
                landscape: (context) =>
                    ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return Center(
                      child: Container(
                        width: 50.0.h,
                        height: 50.0.h,
                        child: Image.asset(
                          "assets/login_images/KP_LOGO.png",
                        ),
                      ),
                    );
                  }
                  return Center(
                    child: Container(
                      width: 50.0.h,
                      height: 50.0.h,
                      child: Image.asset(
                        "assets/login_images/KP_LOGO.png",
                      ),
                    ),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Choose a Service",
                  style: CustomTextStyle.textStyleGrey32,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customButtonChoose(() {
                  pageRoute(context, UserPabiliResponsive());
                }, "PABILI\n", "Send Parcel to the recipient now!",
                    double.infinity, 55, Pallete.kpBlue, Pallete.kpBlue),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customButtonChoose(() {
                  pageRoute(context, UserPahatidResponsive());
                }, "PAHATID\n", "On demand purchase service!", double.infinity,
                    55, Pallete.kpRed, Pallete.kpRed),
              )
            ],
          ),
        ),
      ),
    );
  }
}
