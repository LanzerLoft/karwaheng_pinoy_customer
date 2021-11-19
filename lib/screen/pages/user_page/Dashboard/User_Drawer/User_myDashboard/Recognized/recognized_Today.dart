import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_expansionTile.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:speedometer/speedometer.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "Total Income",
                              style: CustomTextStyle.textStyleBlackbold18,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PHP ",
                                style: CustomTextStyle.textStyleBlack14,
                              ),
                              Text(
                                "1,000",
                                style: CustomTextStyle.textStyleBlackbold36,
                              ),
                            ],
                          ),
                        ),
                        Container(
                            height: 150,
                            width: 150,
                            child: SfRadialGauge(axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 150,
                                showTicks: false,
                                showLabels: false,
                                ranges: <GaugeRange>[
                                  GaugeRange(
                                      startWidth: 10,
                                      endWidth: 10,
                                      startValue: 0,
                                      endValue: 50,
                                      color: Pallete.kpRed),
                                  GaugeRange(
                                      startWidth: 15,
                                      endWidth: 20,
                                      startValue: 50,
                                      endValue: 100,
                                      color: Pallete.kpNoticeYellow),
                                  GaugeRange(
                                      startWidth: 20,
                                      endWidth: 25,
                                      startValue: 100,
                                      endValue: 150,
                                      color: Colors.green)
                                ],
                                pointers: <GaugePointer>[
                                  NeedlePointer(
                                      value: 50,
                                      needleLength: 0.9,
                                      needleStartWidth: 1,
                                      needleEndWidth: 5,
                                      animationType: AnimationType.bounceOut),
                                ],

                                //  annotations: <GaugeAnnotation>[
                                //   GaugeAnnotation(
                                //       widget: Container(
                                //           child: Text('90.0',
                                //               style: TextStyle(
                                //                   fontSize: 10,
                                //                   fontWeight:
                                //                       FontWeight.bold))),
                                //       angle: 90,
                                //       positionFactor: 0.5)
                                //
                                //]),
                              ),
                            ])),
                      ],
                    ),
                  ),
                ),
                Divider(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return expansionTileIncomeToday(
                      context,
                      "April 23, 2021",
                      "10:40am",
                      "180",
                      "50",
                      "0",
                      "0",
                      "200",
                      "100",
                      "30",
                      "GCash",
                      "-",
                      "-",
                      "5km",
                      "20mins",
                      "Manila",
                    );
                  },
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
