import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
import 'package:kp_mobile/screen/custom/container_Size.dart';
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
              mobile:CustomConSize.mobile,
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
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: customCard(
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "RIDER 12345",
                                      style: CustomTextStyle.textStyleGrey18,
                                    ),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      glow: false,
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 2.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
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
                                              maxHeight: 80, maxWidth: 150),
                                          child: Text(
                                            "Juan Dela Cruz",
                                            style:
                                                CustomTextStyle.textStyleGrey18,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Employee ID:",
                                      style: CustomTextStyle.textStyleGrey16,
                                    ),
                                    Text(
                                      "EMP 12345",
                                      style: CustomTextStyle.textStyleBlue16,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Motorcycle:",
                                        style: CustomTextStyle.textStyleGrey16,
                                      ),
                                      Text(
                                        "Yamaha NMAX",
                                        style: CustomTextStyle.textStyleBlue16,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Plate Number:",
                                        style: CustomTextStyle.textStyleGrey16,
                                      ),
                                      Text(
                                        "KP 12345",
                                        style: CustomTextStyle.textStyleBlue16,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 100,
                    ),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: customCard(
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Pallete.kpBlue),
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
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    constraints: BoxConstraints(
                                        maxHeight: 80, maxWidth: 130),
                                    child: Text(
                                      "Juan Dela Cruz",
                                      style: CustomTextStyle.textStyleGrey18,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                flatButtonIconBottomDelete(
                                    Icon(
                                      Icons.delete,
                                      color: Pallete.kpRed,
                                    ),
                                    "Remove",
                                    () {}),
                              ],
                            ),
                          ),
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
