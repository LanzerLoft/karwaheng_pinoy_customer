import "package:flutter/material.dart";
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'register_user.dart';
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 10.0.h),
                  child: Register(),
                ),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: Register(),
                ),
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
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
                child: Register(),
              ),
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
          mobile: 16,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  width: 40.0.h,
                  height: 40.0.h,
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
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: RaisedButton(
                      elevation: 0,
                      color: Pallete.kpBlue,
                      focusColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UserRegisterResponsive()));
                      },
                      child: Text(
                        "I'm a Customer",
                        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: RaisedButton(
                      elevation: 0,
                      color: Pallete.kpRed,
                      focusColor: Colors.blueAccent,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Register()));
                      },
                      child: Text(
                        "I'm a Seller",
                        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
