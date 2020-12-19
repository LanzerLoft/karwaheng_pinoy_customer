import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserchangePassResponsive extends StatefulWidget {
  @override
  _UserchangePassResponsiveState createState() =>
      _UserchangePassResponsiveState();
}

class _UserchangePassResponsiveState extends State<UserchangePassResponsive> {
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
                  child: UserChangePass(),
                ),
              ),
            ),
            landscape: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: UserChangePass(),
                ),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => UserChangePass(),
          landscape: (context) => Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
              child: UserChangePass(),
            ),
          ),
        );
      },
    );
  }
}

class UserChangePass extends StatefulWidget {
  @override
  _UserChangePassState createState() => _UserChangePassState();
}

class _UserChangePassState extends State<UserChangePass> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Change Passcode",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 22,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Add Home Address"),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Add Work Address"),
                  FlatButton(
                    onPressed: () {},
                    child: Text("Edit"),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              redButton(() {}, "Save"),
              SizedBox(
                height: 15,
              ),
              changePassTextField(
                context,
                (value) {},
                "Current Passcode",
                userProvider.passwordValidation,
              ),
              SizedBox(
                height: 10,
              ),
              changePassTextField(
                context,
                (value) {},
                "New Passcode",
                userProvider.passwordValidation,
              ),
              SizedBox(
                height: 10,
              ),
              changePassTextField(
                context,
                (value) {},
                "Retype New Passcode",
                userProvider.passwordValidation,
              ),
              SizedBox(
                height: 15,
              ),
              redButton(() {}, "Save"),
            ],
          ),
        ),
      ),
    );
  }
}
