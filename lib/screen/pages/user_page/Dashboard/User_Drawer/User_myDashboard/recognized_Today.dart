import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:speedometer/speedometer.dart';

class UserRecognizeToday extends StatefulWidget {
  @override
  _UserRecognizeTodayState createState() => _UserRecognizeTodayState();
}

class _UserRecognizeTodayState extends State<UserRecognizeToday> {
  final items = List<String>.generate(100, (i) => "$i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: CustomPadding.padding8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: customCard(
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "What I’ve earned today:",
                            style: CustomTextStyle.textStyleGrey16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: listTextPesoIconToday("1000"),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Bill",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("1000"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Cost",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("500"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              _settingModalBottomSheet(context);
                            },
                            child: customCard(
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5),
                                        child: Text(
                                          "KP100${items[index]}",
                                          style:
                                              CustomTextStyle.textStyleBlue16,
                                        ),
                                      ),
                                      Text(
                                          "February 1, 2021 10:3${items[index]} am"),
                                    ],
                                  ),
                                  listTextPesoIconToday16("500"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      backgroundColor: Pallete.kpWhite,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext bc) {
        return Column(
          children: [
            Padding(
              padding: CustomPadding.padding16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "20-0001234",
                    style: CustomTextStyle.textStyleBlue,
                  ),
                  Text("10:39 am"),
                ],
              ),
            ),
            Padding(
              padding: CustomPadding.padding16,
              child: customCard(
                Padding(
                  padding: CustomPadding.padding16,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Rebate Recieved"),
                          Text("P 300"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Time"),
                          Text("10:33 am"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Service Type"),
                          Text("N/A"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Bill"),
                          Text("P 300"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order Cost"),
                          Text("P 300"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Fee"),
                          Text("P 300"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        );
      });
}
