import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:sizer/sizer.dart';

class UserLoginResponsive extends StatefulWidget {
  @override
  _UserLoginResponsiveState createState() => _UserLoginResponsiveState();
}

class _UserLoginResponsiveState extends State<UserLoginResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 10.0.h),
                  child: TabletLogin(),
                ),
              ),
            ),
            landscape: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: TabletLogin(),
                ),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Scaffold(
            body: SingleChildScrollView(
              child: TabletLogin(),
            ),
          ),
          landscape: (context) => Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
                child: TabletLogin(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class TabletLogin extends StatefulWidget {
  @override
  _TabletLoginState createState() => _TabletLoginState();
}

class _TabletLoginState extends State<TabletLogin> {
  GlobalKey<FormState> _form = GlobalKey<FormState>();

  void _validate() {
    _form.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    final passwordValidation = ValidationBuilder().maxLength(6).build();
    final userPhoneValidation = ValidationBuilder()
        .or(
          (builder) => builder.minLength(6),
          (builder) => builder.phone('not phone').minLength(11),
          reverse: true,
        )
        .build();

    return Container(
      padding: EdgeInsets.all(
        getValueForScreenType<double>(
          context: context,
          mobile: 16,
        ),
      ),
      child: Form(
        key: _form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    return Center(
                      child: Container(
                        width: 35.0.h,
                        height: 35.0.h,
                        child: Image.asset(
                          "assets/login_images/KP_LOGO.png",
                        ),
                      ),
                    );
                  }),
                ),
                usernameField(
                  (value) {},
                  userPhoneValidation,
                  // ignore: unrelated_type_equality_checks
                ),
                SizedBox(
                  height: 15,
                ),
                passcodeField(
                  (value) {},
                  passwordValidation,
                ),
                SizedBox(
                  height: 15,
                ),
                loginButton(
                  _validate,
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Forgot Passcode?",
                      style: TextStyle(
                        color: Pallete.kpBlue,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterResponsive(),
                  ),
                );
              },
              child: Text.rich(
                TextSpan(
                    text: 'Don\'t have an account? ',
                    style: CustomTextStyle.textblue14,
                    children: [
                      TextSpan(
                        text: ' Register Now',
                        style: CustomTextStyle.register,
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
