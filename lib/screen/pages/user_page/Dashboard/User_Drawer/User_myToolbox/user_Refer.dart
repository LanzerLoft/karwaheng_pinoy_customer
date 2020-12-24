import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserReferAfriend extends StatefulWidget {
  @override
  _UserReferAfriendState createState() => _UserReferAfriendState();
}

class _UserReferAfriendState extends State<UserReferAfriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Refer a Friend",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Get P50 and Give P50 to your friend!",
                    style: CustomTextStyle.textStyleBlue22,
                  ),
                ),
                Text(
                  "Refer a friend and get P50 off of their first delivery order. Your friend will get P50 worth of credits in their wallet tool ",
                  style: CustomTextStyle.textStyleGrey13,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Share Your Promo Code:\n KP123456",
                      style: CustomTextStyle.textStyleBlue22,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Image.asset(
                    "assets/refer_a_Friend/KP_Refer.png",
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
