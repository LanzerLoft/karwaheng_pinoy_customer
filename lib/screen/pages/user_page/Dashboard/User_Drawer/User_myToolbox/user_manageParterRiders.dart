import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'user_Refer.dart';
import 'user_trackMydelivery.dart';

class UserManagePartners extends StatefulWidget {
  @override
  _UserManagePartnersState createState() => _UserManagePartnersState();
}

class _UserManagePartnersState extends State<UserManagePartners> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpWhite,
          ),
          backgroundColor: Pallete.kpBlue,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Manage Partner Riders",
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
                  Container(
                      height: 35,
                      child: customTabBarMPR(
                          "Prefered Partner Rider", "Unwanted Riders")),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Favorite partner rider will receive your deliver on priority.",
                      style: CustomTextStyle.textStyleGrey13,
                    ),
                  ),
                  customCardMPR(
                    70.0.h,
                    TabBarView(children: [
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: false,
                        itemBuilder: (context, index) {
                          return customChecboxNoIcon(
                              (value) {}, false, "KP Juan Dela Cruz", () {});
                        },
                        itemCount: 100,
                      ),
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: false,
                        itemBuilder: (context, index) {
                          return customListTextButton("KP Juan Dela Cruz");
                        },
                        itemCount: 100,
                      ),
                    ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
