import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_expansionTile.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:sizer/sizer.dart';

class UserRecognizeMonth extends StatefulWidget {
  @override
  _UserRecognizeMonthState createState() => _UserRecognizeMonthState();
}

class _UserRecognizeMonthState extends State<UserRecognizeMonth> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(
        'Week 1',
        20,
      ),
      ChartData(
        'Week 2',
        8,
      ),
      ChartData(
        'Week 3',
        7,
      ),
      ChartData(
        'Week 4',
        6,
      ),
    ];
    final List<String> weeklyListData = [
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
    ];
    final List monthlyListData = [
      15,
      30,
      10,
      22,
      "17m 42ss",
      "50,000",
      "Jan 1-7",
      "Jan 8-14",
      "Jan 15-21",
      "Jan 22-30",
      "200",
      "Jan 1, 2021",
    ];

    final List sampleJsonData = [
      {
        "Deliveries": "122",
        "date": "Wenesday, Jan 7",
        "time": "10:40 am",
        "recognized": "200",
        "kpShare": "50",
        "rebates": "0",
        "deliveryCount": "0",
        "totalBill": "200",
        "orderCost": "100",
        "deliveryFee": "30",
        "paymentType": "GCash",
        "distance": "5k",
        "minutestoDeliver": "20mins",
        "location": "manila",
      },
      {
        "Deliveries": "10",
        "date": "Monday, Jan 18",
        "time": "12:40 am",
        "recognized": "2,000",
        "kpShare": "500",
        "rebates": "7",
        "deliveryCount": "3",
        "totalBill": "300",
        "orderCost": "100",
        "deliveryFee": "30",
        "paymentType": "GCash",
        "distance": "15k",
        "minutestoDeliver": "25mins",
        "location": "manila",
      },
      {
        "Deliveries": "109",
        "date": "Sunday, Jan 22",
        "time": "12:40 am",
        "recognized": "2,000",
        "kpShare": "5500",
        "rebates": "7",
        "deliveryCount": "3",
        "totalBill": "300",
        "orderCost": "100",
        "deliveryFee": "30",
        "paymentType": "GCash",
        "distance": "15k",
        "minutestoDeliver": "25mins",
        "location": "manila",
      },
    ];
    final List jsonDataMonth = [
      {
        "April": [
          {
            "week1": [
              {
                "kpShare": "50",
                "rebatesPromo": "2,000",
                "deliveryCount": "50,00",
              },
            ],
          },
          {
            "week2": [
              {
                "kpShare": "300",
                "rebatesPromo": "1,000",
                "deliveryCount": "20,000",
              },
            ],
          },
        ],
      },
    ];

    final List<Widget> monthlyChartdata = <Widget>[
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        6,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        30,
        8,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        70,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        60,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
      recognizedMonthlyData(
        context,
        15,
        30,
        10,
        22,
        "17m 42ss",
        "50,000",
        "Jan 1-7",
        "Jan 8-14",
        "Jan 15-21",
        "Jan 22-30",
        "200",
        "Jan 1, 2021",
        sampleJsonData,
      ),
    ];
    return DefaultTabController(
      length: 12,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Pallete.kpWhite,
        body: DefaultTabController(
          length: 12,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(
                  isScrollable: true,
                  labelColor: Pallete.kpWhite,
                  unselectedLabelColor: Pallete.kpBlack,
                  indicator: RectangularIndicator(
                    color: Pallete.kpRed,
                    bottomLeftRadius: 5,
                    bottomRightRadius: 5,
                    topLeftRadius: 5,
                    topRightRadius: 5,
                    verticalPadding: 0,
                  ),
                  tabs: [
                    Tab(
                      text: "Jan",
                    ),
                    Tab(
                      text: "Feb",
                    ),
                    Tab(
                      text: "Mar",
                    ),
                    Tab(
                      text: "Apr",
                    ),
                    Tab(
                      text: "May",
                    ),
                    Tab(
                      text: "Jun",
                    ),
                    Tab(
                      text: "Jul",
                    ),
                    Tab(
                      text: "Aug",
                    ),
                    Tab(
                      text: "Sep",
                    ),
                    Tab(
                      text: "Oct",
                    ),
                    Tab(
                      text: "Nov",
                    ),
                    Tab(
                      text: "Dec",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: monthlyChartdata.map(
                      (Widget monthlyChartdatas) {
                        return monthlyChartdatas;
                      },
                    ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget recognizedMonthly() {
  final List<ChartData> chartData = [
    ChartData(
      'Week 1',
      20,
    ),
    ChartData(
      'Week 2',
      8,
    ),
    ChartData(
      'Week 3',
      7,
    ),
    ChartData(
      'Week 4',
      6,
    ),
  ];
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Total recognized",
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
          ],
        ),
      ),
      Container(
          height: 30.0.h,
          child: SfCartesianChart(
              primaryYAxis: CategoryAxis(
                isVisible: false,
              ),
              primaryXAxis: CategoryAxis(
                isVisible: false,
              ),
              series: <CartesianSeries>[
                ColumnSeries<ChartData, String>(
                  dataSource: chartData,
                  color: Pallete.kpBlue,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  // Map color for each data points from the data source
                )
              ])),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {},
            child: Text("Oct 1-7", style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {},
            child: Text("Oct 8-14", style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {},
            child: Text("Oct 15-21", style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {},
            child: Text("Oct 22-30", style: CustomTextStyle.textStyleBlack12),
          ),
        ],
      ),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "150 Deliveries Completed",
            style: CustomTextStyle.textStyleBlackbold16,
          ),
        ),
      ),
      Divider(),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 7,
          itemBuilder: (context, index) {
            return expansionTileIncomeMonthlyWeek(
              context,
              "Apr 22 - 30",
              "17m 42s",
              "0",
              "0",
              "0",
              "30km",
            );
          },
        ),
      ),
    ],
  );
}

Widget recognizedMonthlyData(
  BuildContext context,
  double chartDataWeek1,
  double chartDataWeek2,
  double chartDataWeek3,
  double chartDataWeek4,
  String minutes,
  String totalrecognized,
  String week1,
  String week2,
  String week3,
  String week4,
  String deliveriescompleted,
  String date,
  List weeklyListData,
) {
  final List<ChartData> chartData = [
    ChartData(
      "Week 1",
      chartDataWeek1,
    ),
    ChartData(
      "Week 2",
      chartDataWeek2,
    ),
    ChartData(
      "Week 3",
      chartDataWeek3,
    ),
    ChartData(
      "Week 4",
      chartDataWeek4,
    ),
  ];

  final userProvider = Provider.of<UserProvider>(context);
  return ListView(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Total Monthly Income",
                  style: CustomTextStyle.textStyleBlackbold18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "PHP ",
                    style: CustomTextStyle.textStyleBlack14,
                  ),
                  Text(
                    "14,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          height: 30.0.h,
          child: SfCartesianChart(
              primaryYAxis: CategoryAxis(
                isVisible: false,
              ),
              primaryXAxis: CategoryAxis(
                isVisible: false,
              ),
              series: <CartesianSeries>[
                ColumnSeries<ChartData, String>(
                  dataSource: chartData,
                  color: Pallete.kpBlue,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                  // Map color for each data points from the data source
                )
              ])),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.recognizedMonthlyWeekview1 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.recognizedMonthWeekView1();
            },
            child: Text(week1, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.recognizedMonthlyWeekview2 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.recognizedMonthWeekView2();
            },
            child: Text(week2, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.recognizedMonthlyWeekview3 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.recognizedMonthWeekView3();
            },
            child: Text(week3, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.recognizedMonthlyWeekview4 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.recognizedMonthWeekView4();
            },
            child: Text(week4, style: CustomTextStyle.textStyleBlack12),
          ),
        ],
      ),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "$deliveriescompleted Deliveries Completed",
            style: CustomTextStyle.textStyleBlackbold16,
          ),
        ),
      ),
      Divider(),
      userProvider.recognizedMonthly == true
          ? montlyView(
              "January 23 - 31",
              "50",
              "180",
              "50",
              "0",
              "0",
              "200",
              "100",
              "30",
              "5km",
              "20ms",
              "manila",
            )
          : userProvider.recognizedMonthlyWeekview1 == false
              ? userProvider.recognizedMonthlyWeekview2 == false
                  ? userProvider.recognizedMonthlyWeekview3 == false
                      ? userProvider.recognizedMonthlyWeekview4 == false
                          ? montlyView(
                              "January 23, 2021",
                              "50",
                              "180",
                              "50",
                              "0",
                              "0",
                              "200",
                              "100",
                              "30",
                              "5km",
                              "20ms",
                              "manila",
                            )
                          : sampleJsonmontlyWeekView(
                              weeklyListData,
                            )
                      : sampleJsonmontlyWeekView(
                          weeklyListData,
                        )
                  : sampleJsonmontlyWeekView(
                      weeklyListData,
                    )
              : sampleJsonmontlyWeekView(
                  weeklyListData,
                ),
    ],
  );
}

class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
}

Widget montlyView(
  String date,
  String deliveries,
  String income,
  String kpShare,
  String rebatesPromo,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String distance,
  String minutestoDeliver,
  String location,
) {
  return ListView.builder(
    shrinkWrap: true,
    physics: BouncingScrollPhysics(),
    itemCount: 7,
    itemBuilder: (context, index) {
      return expansionTileRecognizeMonthly(
        context,
        date,
        deliveries,
        income,
        kpShare,
        rebatesPromo,
        totalBill,
        orderCost,
        deliveryFee,
        paymentType,
        distance,
        minutestoDeliver,
        location,
      );
    },
  );
}

Widget sampleJsonMonthly(
  List sampleJson,
) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: sampleJson.length,
      itemBuilder: (context, index) {
        return expansionTileIncomeMonthly(
          context,
          sampleJson[index]['date'].toString(),
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
  );
}

Widget montlyWeekView(
  // String date,
  // String Deliveries,
  // String recognized,
  // String kpShare,
  // String rebatesPromo,
  // String deliveryCount,
  // String totalBill,
  // String orderCost,
  // String deliveryFee,
  // String paymentType,
  // String completedDelivery,
  // String cancelledDelivery,
  // String distance,
  // String minutestoDeliver,
  // String location,
  List weeklyListData,
) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: ListView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: weeklyListData.length,
      itemBuilder: (context, index) {
        return expansionTileIncomeMonthlyWeekView(
          context,
          "10:40am",
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
          "Manila",
        );
      },
    ),
  );
}

Widget sampleJsonmontlyWeekView(
  List weeklyListData,
) {
  return ListView.builder(
    shrinkWrap: true,
    physics: BouncingScrollPhysics(),
    itemCount: weeklyListData.length,
    itemBuilder: (context, index) {
      return expansionTileIncomeMonthlyWeekView(
        context,
        weeklyListData[index]['date'].toString(),
        weeklyListData[index]['Deliveries'].toString(),
        weeklyListData[index]['recognized'].toString(),
        weeklyListData[index]['kpShare'].toString(),
        weeklyListData[index]['rebates'].toString(),
        weeklyListData[index]['deliveryCount'].toString(),
        weeklyListData[index]['totalBill'].toString(),
        weeklyListData[index]['orderCost'].toString(),
        weeklyListData[index]['deliveryFee'].toString(),
        weeklyListData[index]['paymentType'].toString(),
        weeklyListData[index]['distance'].toString(),
        weeklyListData[index]['minutestoDeliver'].toString(),
        weeklyListData[index]['location'].toString(),
      );
    },
  );
}
