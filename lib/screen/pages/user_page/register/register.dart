import "package:flutter/material.dart";
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/register/seller_Register.dart';
import 'package:sizer/sizer.dart';
import 'user_register.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterResponsive extends StatefulWidget {
  @override
  _RegisterResponsiveState createState() => _RegisterResponsiveState();
}

class _RegisterResponsiveState extends State<RegisterResponsive> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Pallete.kpBlue,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Register(),
              ),
            ),
            landscape: (context) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Pallete.kpBlue,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Register(),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Pallete.kpBlue,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Register(),
          ),
          landscape: (context) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Pallete.kpBlue,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Register(),
            ),
          ),
        );
      },
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getValueForScreenType<double>(
          context: context,
          mobile: CustomConSize.mobile,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          OrientationLayoutBuilder(
            portrait: (context) =>
                ResponsiveBuilder(builder: (context, sizingInformation) {
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.tablet) {
                return Center(
                  child: Container(
                    width: 45.0.h,
                    height: 45.0.h,
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
                    width: 32.0.h,
                    height: 32.0.h,
                    child: Image.asset(
                      "assets/login_images/KP_LOGO.png",
                    ),
                  ),
                );
              }
              return Container(
                width: 35.0.h,
                height: 35.0.h,
                child: Image.asset(
                  "assets/login_images/KP_LOGO.png",
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          ),
          customButtonReg(
            () {
              pageRoute(context, UserRegisterStepper());
            },
            "I'm a Customer",
            5,
            double.infinity,
            Pallete.kpBlue,
            Pallete.kpBlue,
          ),
          SizedBox(
            height: 10,
          ),
          customButtonReg(
            () {
              pageRoute(context, SellerRegisterStepper());
            },
            "I'm a Seller",
            5,
            double.infinity,
            Pallete.kpRed,
            Pallete.kpRed,
          ),
        ],
      ),
    );
  }
}
