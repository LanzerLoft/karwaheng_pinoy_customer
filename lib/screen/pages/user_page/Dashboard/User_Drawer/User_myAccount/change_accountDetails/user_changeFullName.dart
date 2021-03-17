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

class UserChangeFullnameRes extends StatefulWidget {
  final String firstName;
  final String lastName;

  UserChangeFullnameRes({
    Key key,
    @required this.firstName,
    @required this.lastName,
  }) : super(key: key);

  @override
  _UserChangeFullnameResState createState() => _UserChangeFullnameResState();
}

class _UserChangeFullnameResState extends State<UserChangeFullnameRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangeFullname(
              firstName: widget.firstName,
              lastName: widget.lastName,
            ),
            landscape: (context) => ChangeFullname(
              firstName: widget.firstName,
              lastName: widget.lastName,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangeFullname(
            firstName: widget.firstName,
            lastName: widget.lastName,
          ),
          landscape: (context) => ChangeFullname(
            firstName: widget.firstName,
            lastName: widget.lastName,
          ),
        );
      },
    );
  }
}

class ChangeFullname extends StatefulWidget {
  final String firstName;
  final String lastName;

  ChangeFullname({
    Key key,
    @required this.firstName,
    @required this.lastName,
  }) : super(key: key);

  @override
  _ChangeFullnameState createState() => _ChangeFullnameState();
}

class _ChangeFullnameState extends State<ChangeFullname> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
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
            "Change Fullname",
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
                  child: Text("Set New Fullname",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.kpGrey,
                          fontWeight: FontWeight.bold)),
                ),
                textFieldChangeDetailsName(
                    (value) {},
                    TextEditingController(text: widget.firstName),
                    "First Name",
                    "First Name",
                    userProvider.changeFullNameValidation,
                    () {}),
                textFieldChangeDetailsName(
                    (value) {},
                    TextEditingController(text: widget.lastName),
                    "Last Name",
                    "Last Name",
                    userProvider.changeFullNameValidation,
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
