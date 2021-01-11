import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_Switch.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
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
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Manage Partner Riders",
            style: CustomTextStyle.textStyleBlue18,
          ),
          bottom: customTabBarMPR("Prefered Partner Rider", "Unwanted Riders"),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Favorite partner rider will receive your deliver on priority.",
                  style: CustomTextStyle.textStyleGrey13,
                ),
              ),
              Container(
                height: 100.0.h,
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.05),
                                    blurRadius: 0.01, // soften the shadow
                                    //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 0,
                                child: ListTileSwitch(
                                  switchScale: 0.7,
                                  value: true,
                                  onChanged: (value) {},
                                  visualDensity: VisualDensity.comfortable,
                                  switchType: SwitchType.material,
                                  switchActiveColor: Pallete.kpBlue,
                                  switchInactiveColor: Pallete.kpGrey,
                                  title: Padding(
                                    padding: CustomPadding.padding8,
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Pallete.kpBlue),
                                            color: Pallete.kpWhite,
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: AssetImage(
                                                  "assets/login_images/KP_profile.png"),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Container(
                                            constraints: BoxConstraints(
                                                maxHeight: 80, maxWidth: 150),
                                            child: Text(
                                              "Juan Dela Cruz",
                                              style: CustomTextStyle
                                                  .textStyleGrey18,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: 100,
                    ),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.05),
                                    blurRadius: 0.01, // soften the shadow
                                    //extend the shadow
                                    offset: Offset(
                                      0, // Move to right 10  horizontally
                                      0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 0,
                                child: Padding(
                                  padding: CustomPadding.padding8,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Pallete.kpBlue),
                                          color: Pallete.kpWhite,
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(
                                                "assets/login_images/KP_profile.png"),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Container(
                                          constraints: BoxConstraints(
                                              maxHeight: 80, maxWidth: 130),
                                          child: Text(
                                            "Juan Dela Cruz",
                                            style:
                                                CustomTextStyle.textStyleGrey18,
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      flatButtonIconBottomDelete(
                                          Icon(
                                            Icons.delete,
                                            color: Pallete.kpRed,
                                          ),
                                          "Delete",
                                          () {}),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      itemCount: 100,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
