import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_Switch.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_sendFeedback.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'user_changePass.dart';

class UserMyAccount extends StatefulWidget {
  @override
  _UserMyAccountState createState() => _UserMyAccountState();
}

class _UserMyAccountState extends State<UserMyAccount> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "My Account",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: customButton2(() {}, "Logout", 5, double.infinity, 40,
              Pallete.kpBlue, Pallete.kpBlue),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: customButton2(() {}, "Logout", 5, double.infinity, 40,
        //       Pallete.kpBlue, Pallete.kpBlue),
        // ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: ListView(
            children: [
              customListTextProfile(
                "Profile Picture",
                "KPSonny",
                () {},
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/login_images/KP_LOGO.png'),
                    ),
                  ),
                ),
              ),
              customListTextIcon("Username", "KPSonny", () {
                _showDialog(context);
              }),
              customListTextIcon("Full Name", "Juan dela cruz", () {
                _showDialog(context);
              }),
              customListTextIcon("Mobile Number", "09126456789", () {
                _showDialog(context);
              }),
              customListTextIcon("Email", "KPSonny@karwahengpinoy.ph", () {
                _showDialog(context);
              }),
              customListTextIcon("Home Address", "Makati Metro Manila", () {
                _showDialog(context);
              }),
              customListTextIcon(
                  "Work Address", "Bonifacio Global City, Taguig Metro Manila",
                  () {
                _showDialog(context);
              }),
              Divider(),
              customSwitchMaterial(
                  Text(
                    "Vibrate",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchvibrate, (value) {
                userProvider.customSwitchVibrate();
              }),
              customSwitchMaterial(
                  Text(
                    "Sound",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchsound, (value) {
                userProvider.customSwitchSound();
              }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(),
              ),
              customListTextColIcon(
                  "Change Password", "Click here to change the Password", () {
                pageRoute(context, UserchangePassResponsive());
              }),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}

_showDialog(BuildContext context) async {
  await showDialog<String>(
    context: context,
    child: AlertDialog(
      contentPadding: EdgeInsets.all(16.0),
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                  labelText: 'Full Name', hintText: 'Juan dela cruz'),
            ),
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
            child: Text('Cancel'),
            onPressed: () {
              pageRouteBack(context);
            }),
        FlatButton(child: Text('Save'), onPressed: () {})
      ],
    ),
  );
}
