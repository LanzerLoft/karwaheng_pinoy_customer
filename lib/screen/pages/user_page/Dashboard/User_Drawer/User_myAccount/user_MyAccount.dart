import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_Switch.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          child: customButton2(() {
            pageRoute(context, UserLoginResponsive());
          }, "Logout", 5, double.infinity, 55, Pallete.kpBlue, Pallete.kpBlue),
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
                () {
                  userProvider.getImgFromGallery();
                },
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
                _showAccountDetails(context, "Username",
                    TextEditingController(text: "KPSonny"));
              }),
              customListTextIcon("Full Name", "Juan dela cruz", () {
                _showAccountDetails(context, "Full Name",
                    TextEditingController(text: "Juan dela cruz"));
              }),
              customListTextIcon("Mobile Number", "09126456789", () {
                _showAccountDetails(context, "Mobile Number",
                    TextEditingController(text: "09126456789"));
              }),
              customListTextIcon("Email", "KPSonny@karwahengpinoy.ph", () {
                _showAccountDetails(context, "Email",
                    TextEditingController(text: "KPSonny@karwahengpinoy.ph"));
              }),
              customListTextIcon("Home Address", "Makati Metro Manila", () {
                _showAccountDetails(context, "Home Address",
                    TextEditingController(text: "Makati Metro Manila"));
              }),
              customListTextIcon(
                  "Work Address", "Bonifacio Global City, Taguig Metro Manila",
                  () {
                _showAccountDetails(
                    context,
                    "Work Address",
                    TextEditingController(
                        text: "Bonifacio Global City, Taguig Metro Manila"));
              }),
              Divider(),
              customSwitchIOSAndroidVibrate(
                  Text(
                    "Vibrate",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchvibrate, (value) {
                userProvider.customSwitchVibrate();
              }),
              customSwitchIOSAndroidSound(
                  Text(
                    "Sound",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchsound, (value) {
                userProvider.customSwitchSound();
              }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              customListTextColIcon(
                  "Change Passcode", "Click here to change the Passcode", () {
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

_showAccountDetails(
    BuildContext context, String title, TextEditingController username) async {
  showPlatformDialog(
    context: context,
    builder: (_) => PlatformAlertDialog(
      cupertino: (_, __) => CupertinoAlertDialogData(
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            title,
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        content: CupertinoTextField(
          autofocus: true,
          controller: username,
          style: CustomTextStyle.textStyleGrey18,
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
      material: (_, __) => MaterialAlertDialogData(
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        content: TextField(
          autofocus: true,
          controller: username,
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
    ),
  );
}

void _showPicker(context) {
  final userProvider = Provider.of<UserProvider>(context, listen: false);
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      userProvider.getImgFromGallery();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    userProvider.getImgFromCamera();
                  },
                ),
              ],
            ),
          ),
        );
      });
}
