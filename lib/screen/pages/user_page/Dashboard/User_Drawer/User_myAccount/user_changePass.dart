import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
      body: Container(
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: 22,
          ),
        ),
        child: Column(
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
            changePassTextField(
                (value) {}, "Passcode", userProvider.passwordValidation),
            changePassTextField(
                (value) {}, "New Passcode", userProvider.passwordValidation),
            changePassTextField(
                (value) {}, "Retype Passcode", userProvider.passwordValidation),
          ],
        ),
      ),
    );
  }
}
