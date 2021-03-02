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
          bottom: customTabBarMPR("Preferred Partner Rider", "Unwanted Riders"),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: CustomConSize.mobile,
            ),
          ),
          child: ListView(
            children: [
              Container(
                height: 100.0.h,
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Favorite Partner Rider will receive your deliver on priority.",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                        ),
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
                                          style:
                                              CustomTextStyle.textStyleGrey18,
                                        ),
                                        RatingBar.builder(
                                          itemSize: 20,
                                          glow: false,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 2.0),
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
                                      padding:
                                          EdgeInsets.symmetric(vertical: 15),
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
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Employee ID:",
                                          style:
                                              CustomTextStyle.textStyleGrey16,
                                        ),
                                        Container(
                                          constraints: BoxConstraints(
                                              maxHeight: 100, maxWidth: 55.0.w),
                                          child: Text(
                                            "EMP 12345",
                                            style:
                                                CustomTextStyle.textStyleBlue16,
                                          ),
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
                                            style:
                                                CustomTextStyle.textStyleGrey16,
                                          ),
                                          Container(
                                            constraints: BoxConstraints(
                                                maxHeight: 100,
                                                maxWidth: 55.0.w),
                                            child: Text(
                                              "Yamaha NMAX",
                                              style: CustomTextStyle
                                                  .textStyleBlue16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Plate Number:",
                                            style:
                                                CustomTextStyle.textStyleGrey16,
                                          ),
                                          Container(
                                            constraints: BoxConstraints(
                                                maxHeight: 100,
                                                maxWidth: 55.0.w),
                                            child: Text(
                                              "KP 12345",
                                              style: CustomTextStyle
                                                  .textStyleBlue16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Date Added:",
                                                style: CustomTextStyle
                                                    .textStyleGrey16,
                                              ),
                                              Container(
                                                constraints: BoxConstraints(
                                                    maxHeight: 100,
                                                    maxWidth: 55.0.w),
                                                child: Text(
                                                  "March 01, 2021 - 9:00 AM",
                                                  style: CustomTextStyle
                                                      .textStyleGrey14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          flatButtonIconBottomDelete(
                                              Icon(
                                                Icons.delete,
                                                color: Pallete.kpGrey,
                                              ),
                                              "Remove",
                                              () {}),
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
                      ],
                    ),
                    ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "Unwanted Riders will not receive your bookings/orders.",
                            style: CustomTextStyle.textStyleGrey13,
                          ),
                        ),
                        ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: customCard(
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Pallete.kpRed),
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
                                                style: CustomTextStyle
                                                    .textStyleGrey18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Date Added:",
                                                style: CustomTextStyle
                                                    .textStyleGrey16,
                                              ),
                                              Container(
                                                constraints: BoxConstraints(
                                                    maxHeight: 100,
                                                    maxWidth: 55.0.w),
                                                child: Text(
                                                  "March 01, 2021 - 9:00 AM",
                                                  style: CustomTextStyle
                                                      .textStyleGrey14,
                                                ),
                                              ),
                                            ],
                                          ),
                                          flatButtonIconBottomDelete(
                                              Icon(
                                                Icons.delete,
                                                color: Pallete.kpGrey,
                                              ),
                                              "Remove",
                                              () {}),
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
                      ],
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
