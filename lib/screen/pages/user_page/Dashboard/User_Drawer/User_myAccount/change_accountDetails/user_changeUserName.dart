import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import '../user_MyAccount.dart';

class UserChangeUsernameRes extends StatefulWidget {
  final String userName;

  UserChangeUsernameRes({
    Key key,
    @required this.userName,
  }) : super(key: key);

  @override
  _UserChangeUsernameResState createState() => _UserChangeUsernameResState();
}

class _UserChangeUsernameResState extends State<UserChangeUsernameRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangeUsername(
              userName: widget.userName,
            ),
            landscape: (context) => ChangeUsername(
              userName: widget.userName,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangeUsername(
            userName: widget.userName,
          ),
          landscape: (context) => ChangeUsername(
            userName: widget.userName,
          ),
        );
      },
    );
  }
}

class ChangeUsername extends StatefulWidget {
  final String userName;

  ChangeUsername({
    Key key,
    @required this.userName,
  }) : super(key: key);

  @override
  _ChangeUsernameState createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Change Username",
            style: CustomTextStyle.textStyleBlue18,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Set New Username",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.kpGrey,
                          fontWeight: FontWeight.bold)),
                ),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.userName),
                    "Username",
                    "Username",
                    () {}),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customButton(
                    () {
                      pageRoute(context, UserMyAccount());
                    },
                    "Save",
                    5,
                    double.infinity,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
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
