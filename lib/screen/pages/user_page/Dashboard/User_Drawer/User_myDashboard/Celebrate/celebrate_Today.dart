import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_expansionTile.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:sizer/sizer.dart';
import 'package:speedometer/speedometer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class UserCelebrateToday extends StatefulWidget {
  @override
  _UserCelebrateTodayState createState() => _UserCelebrateTodayState();
}

class _UserCelebrateTodayState extends State<UserCelebrateToday> {
  final items = List<String>.generate(100, (i) => "$i");

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData1 = <ChartData>[
      ChartData('Low', 100, Pallete.kpNoticeYellow),
    ];
    final List<ChartData> chartData2 = <ChartData>[
      ChartData('Low', 30, HexColor('#42E0D0')),
    ];
    final List<ChartData> chartData3 = <ChartData>[
      ChartData('Low', 100, HexColor('#FBFFA9')),
    ];
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 10),
                  //     child: Text(
                  //       "Total Income",
                  //       style: CustomTextStyle.textStyleBlackbold18,
                  //     ),
                  //   ),
                  // ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "PHP ",
                  //         style: CustomTextStyle.textStyleBlack14,
                  //       ),
                  //       Text(
                  //         "1,300",
                  //         style: CustomTextStyle.textStyleBlackbold36,
                  //       ),
                  //     ],
                  //   ),
                  // ),

                  Container(
                    height: 15.0.h,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  "2.5%",
                                  style: CustomTextStyle.textStyleBlackbold16,
                                ),
                                Container(
                                  width: 25.0.w,
                                  child: SfCircularChart(
                                    series: <CircularSeries>[
                                      // Renders radial bar chart
                                      RadialBarSeries<ChartData, String>(
                                          maximumValue: 100,
                                          innerRadius: '80%',
                                          // radius: '30%',
                                          gap: '3%',
                                          name: "3%",
                                          dataSource: chartData1,
                                          xValueMapper: (ChartData data, _) =>
                                              data.x,
                                          yValueMapper: (ChartData data, _) =>
                                              data.y,
                                          pointColorMapper:
                                              (ChartData data, _) =>
                                                  data.color),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              thickness: 5,
                              height: 5,
                              color: Pallete.kpNoticeYellow,
                            ),
                          ),
                          Container(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "75 to go",
                                      style: CustomTextStyle.textStyleBlack11,
                                    ),
                                    Text(
                                      "3%",
                                      style:
                                          CustomTextStyle.textStyleBlackbold16,
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 250,
                                  width: 25.0.w,
                                  child: SfCircularChart(
                                    series: <CircularSeries>[
                                      // Renders radial bar chart
                                      RadialBarSeries<ChartData, String>(
                                          maximumValue: 100,
                                          innerRadius: '80%',
                                          // radius: '30%',
                                          gap: '3%',
                                          name: "3%",
                                          dataSource: chartData2,
                                          trackBorderColor: Colors.transparent,
                                          xValueMapper: (ChartData data, _) =>
                                              data.x,
                                          yValueMapper: (ChartData data, _) =>
                                              data.y,
                                          pointColorMapper:
                                              (ChartData data, _) =>
                                                  data.color),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 30,
                            child: Divider(
                              thickness: 5,
                              height: 5,
                              color: HexColor('#42E0D0').withOpacity(0.3),
                            ),
                          ),
                          Container(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text(
                                  "3.5%",
                                  style: CustomTextStyle.textStyleBlackbold16,
                                ),
                                Container(
                                  height: 250,
                                  width: 25.0.w,
                                  child: SfCircularChart(
                                    series: <CircularSeries>[
                                      // Renders radial bar chart
                                      RadialBarSeries<ChartData, String>(
                                          maximumValue: 100,
                                          innerRadius: '80%',
                                          // radius: '30%',
                                          gap: '3%',
                                          name: "3%",
                                          dataSource: chartData3,
                                          xValueMapper: (ChartData data, _) =>
                                              data.x,
                                          yValueMapper: (ChartData data, _) =>
                                              data.y,
                                          pointColorMapper:
                                              (ChartData data, _) =>
                                                  data.color),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 2000,
                          showTicks: true,
                          ticksPosition: ElementsPosition.outside,
                          labelsPosition: ElementsPosition.outside,
                          ranges: <GaugeRange>[
                            GaugeRange(
                                startWidth: 10,
                                endWidth: 25,
                                startValue: 0,
                                endValue: 800,
                                color: Pallete.kpRed),
                            GaugeRange(
                                startWidth: 25,
                                endWidth: 35,
                                startValue: 800,
                                endValue: 1600,
                                color: Pallete.kpNoticeYellow),
                            GaugeRange(
                                startWidth: 35,
                                endWidth: 45,
                                startValue: 1600,
                                endValue: 2400,
                                color: Colors.green)
                          ],
                          pointers: <GaugePointer>[
                            NeedlePointer(
                                value: 1300,
                                needleLength: 0.7,
                                needleStartWidth: 1,
                                needleEndWidth: 5,
                                animationType: AnimationType.linear),
                          ],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                widget: Container(
                                    child: Text(
                                  '₱1,300',
                                  style: CustomTextStyle.textStyleBlackbold16,
                                )),
                                angle: 90,
                                positionFactor: 0.5)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: Pallete.kpGreyOkpGreypacity2,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "What I’ve earned today:",
                            style: CustomTextStyle.textStyleBlackbold18,
                          ),
                          Text(
                            "₱88",
                            style: CustomTextStyle.textStyleBluebold18,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Bill",
                                style: CustomTextStyle.textStyleBlack16,
                              ),
                              Text(
                                "300",
                                style: CustomTextStyle.textStyleBlack16,
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Cost",
                                style: CustomTextStyle.textStyleBlack16,
                              ),
                              Text(
                                "300",
                                style: CustomTextStyle.textStyleBlack16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return expansionTileCelebrateEarnedToday(
                    context,
                    "20-0000000",
                    "Pahatid",
                    "10",
                    "100",
                    "123",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void _settingModalBottomSheet(context) {
//   showModalBottomSheet(
//       backgroundColor: Pallete.kpWhite,
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
//       ),
//       builder: (BuildContext bc) {
//         return Column(
//           children: [
//             Padding(
//               padding: CustomPadding.padding16,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "20-0001234",
//                     style: CustomTextStyle.textStyleBlue,
//                   ),
//                   Text("10:39 am"),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: CustomPadding.padding16,
//               child: customCard(
//                 Padding(
//                   padding: CustomPadding.padding16,
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Rebate Recieved"),
//                           Text("P 300"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Time"),
//                           Text("10:33 am"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Service Type"),
//                           Text("N/A"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Total Bill"),
//                           Text("P 300"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Order Cost"),
//                           Text("P 300"),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Delivery Fee"),
//                           Text("P 300"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             )
//           ],
//         );
//       });
// }
class ChartData {
  ChartData(
    this.x,
    this.y,
    this.color,
  );
  final String x;
  final double y;
  final Color color;
}
