import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:speedometer/speedometer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UserToday extends StatefulWidget {
  @override
  _UserTodayState createState() => _UserTodayState();
}

class _UserTodayState extends State<UserToday> {
  final items = List<String>.generate(100, (i) => "$i");
  final List<ChartData> chartData = [
    ChartData('David', 25),
    ChartData('Steve', 38),
    ChartData('Jack', 34),
    ChartData('Others', 52)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: CustomPadding.padding8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            child: SfCircularChart(
                              palette: [
                                Pallete.kpYellow,
                              ],
                              annotations: <CircularChartAnnotation>[
                                CircularChartAnnotation(
                                    widget: Container(
                                        child: PhysicalModel(
                                            child: Container(),
                                            shape: BoxShape.circle,
                                            elevation: 10,
                                            shadowColor: Colors.black,
                                            color: const Color.fromRGBO(
                                                230, 230, 230, 1)))),
                                CircularChartAnnotation(
                                  widget: Container(
                                    child: Text(
                                      '62%',
                                      style: TextStyle(
                                          color: Pallete.kpGrey, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                              series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    // Radius of doughnut

                                    innerRadius: '70%')
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            child: SfCircularChart(
                              palette: [
                                Pallete.kpBlue,
                              ],
                              annotations: <CircularChartAnnotation>[
                                CircularChartAnnotation(
                                    widget: Container(
                                        child: PhysicalModel(
                                            child: Container(),
                                            shape: BoxShape.circle,
                                            elevation: 10,
                                            shadowColor: Colors.black,
                                            color: const Color.fromRGBO(
                                                230, 230, 230, 1)))),
                                CircularChartAnnotation(
                                  widget: Container(
                                    child: Text(
                                      '62%',
                                      style: TextStyle(
                                          color: Pallete.kpGrey, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                              series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    innerRadius: '70%')
                              ],
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            child: SfCircularChart(
                              palette: [
                                Pallete.kpRed,
                              ],
                              annotations: <CircularChartAnnotation>[
                                CircularChartAnnotation(
                                    widget: Container(
                                        child: PhysicalModel(
                                            child: Container(),
                                            shape: BoxShape.circle,
                                            elevation: 10,
                                            shadowColor: Colors.black,
                                            color: const Color.fromRGBO(
                                                230, 230, 230, 1)))),
                                CircularChartAnnotation(
                                  widget: Container(
                                    child: Text(
                                      '62%',
                                      style: TextStyle(
                                          color: Pallete.kpGrey, fontSize: 16),
                                    ),
                                  ),
                                ),
                              ],
                              series: <CircularSeries>[
                                DoughnutSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y,
                                    // Radius of doughnut

                                    innerRadius: '70%')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SfCircularChart(
                      palette: [
                        Pallete.kpRed,
                        Pallete.kpYellow,
                        Pallete.kpBlue,
                      ],
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                          widget: Container(
                            child: Text(
                              '62%',
                              style: TextStyle(
                                  color: Pallete.kpGrey, fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y,
                            // Radius of doughnut
                            radius: '50%',
                            innerRadius: '60%')
                      ],
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Pallete.kpRed,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("0-30"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Pallete.kpBlue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("31-60"),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Pallete.kpYellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("61 and Above"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                customCard(
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("What I’ve earned today:"),
                          Text("P 88"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: CustomPadding.padding8,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total Bill"),
                                Text("200"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Order Cost"),
                                Text("300"),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: CustomPadding.symetric24,
                  child: Text("All"),
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text("20-000${items[index]}"),
                                    Text("10:3${items[index]} am"),
                                  ],
                                ),
                                Text("P 88${items[index]}"),
                              ],
                            ),
                          ),
                        ),
                      ],
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

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color color;
}
