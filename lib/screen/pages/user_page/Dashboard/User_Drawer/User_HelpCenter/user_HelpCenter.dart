import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_sendFeedback.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserHelpCenter extends StatefulWidget {
  @override
  _UserHelpCenterState createState() => _UserHelpCenterState();
}

class _UserHelpCenterState extends State<UserHelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Help Center",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.feedback,
                  color: Pallete.kpBlue,
                ),
                title: Text("Send Feedback",
                    style: CustomTextStyle.textStyleBlack16),
                onTap: () {
                  pageRoute(context, UserSendFeedback());
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.list_alt,
                  color: Pallete.kpBlue,
                ),
                title: Text("Pricing Schedule",
                    style: CustomTextStyle.textStyleBlack16),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Pallete.kpBlue,
                ),
                title:
                    Text("About Us", style: CustomTextStyle.textStyleBlack16),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
