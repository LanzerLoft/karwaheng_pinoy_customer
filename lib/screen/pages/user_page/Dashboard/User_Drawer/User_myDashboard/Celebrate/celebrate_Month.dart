import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_expansionTile.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:sizer/sizer.dart';

class UserCelebrateMonth extends StatefulWidget {
  @override
  _UserCelebrateMonthState createState() => _UserCelebrateMonthState();
}

class _UserCelebrateMonthState extends State<UserCelebrateMonth> {
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

    final List sampleJsonData = [
      {
        "Deliveries": "12",
        "date": "Sunday, Apr 3",
        "time": "10:40 am",
        "celebrate": "200",
        "kpShare": "50",
        "rebates": "0",
        "deliveryCount": "0",
        "totalBill": "200",
        "orderCost": "100",
        "deliveryFee": "30",
        "paymentType": "GCash",
        "completedDelivery": "-",
        "cancelledDelivery": "-",
        "distance": "5k",
        "minutestoDeliver": "20mins",
        "location": "manila",
      },
      {
        "Deliveries": "10",
        "date": "Tues, June 22",
        "time": "12:40 am",
        "celebrate": "2,000",
        "kpShare": "1,500",
        "rebates": "7",
        "deliveryCount": "3",
        "totalBill": "300",
        "orderCost": "100",
        "deliveryFee": "30",
        "paymentType": "GCash",
        "completedDelivery": "-",
        "cancelledDelivery": "-",
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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
      celebrateMonthlyData(
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

Widget celebrateMonthly() {
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
                  "Total celebrate",
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "This Month Rebates",
                style: CustomTextStyle.textStyleBlackbold16,
              ),
              Text(
                "₱88",
                style: CustomTextStyle.textStyleBluebold18,
              ),
            ],
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

Widget celebrateMonthlyData(
  BuildContext context,
  double chartDataWeek1,
  double chartDataWeek2,
  double chartDataWeek3,
  double chartDataWeek4,
  String minutes,
  String totalcelebrate,
  String week1,
  String week2,
  String week3,
  String week4,
  String Deliveriescompleted,
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
  final List<ChartData2> chartData1 = <ChartData2>[
    ChartData2('Low', 100, Pallete.kpNoticeYellow),
  ];
  final List<ChartData2> chartData2 = <ChartData2>[
    ChartData2('Low', 30, HexColor('#42E0D0')),
  ];
  final List<ChartData2> chartData3 = <ChartData2>[
    ChartData2('Low', 100, HexColor('#FBFFA9')),
  ];
  return ListView(
    children: [
      // Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Align(
      //         alignment: Alignment.centerLeft,
      //         child: Padding(
      //           padding: EdgeInsets.symmetric(vertical: 10),
      //           child: Text(
      //             userProvider.celebrateWeeklyIncome == true
      //                 ? "Total Weekly Income"
      //                 : "Total Montly Income",
      //             style: CustomTextStyle.textStyleBlackbold18,
      //           ),
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.centerLeft,
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               "PHP ",
      //               style: CustomTextStyle.textStyleBlack14,
      //             ),
      //             Text(
      //               totalcelebrate,
      //               style: CustomTextStyle.textStyleBlackbold36,
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      Column(
        children: [
          Container(
            height: 15.0.h,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
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
                              RadialBarSeries<ChartData2, String>(
                                  maximumValue: 100,
                                  innerRadius: '80%',
                                  // radius: '30%',
                                  gap: '3%',
                                  name: "3%",
                                  dataSource: chartData1,
                                  xValueMapper: (ChartData2 data, _) => data.x,
                                  yValueMapper: (ChartData2 data, _) => data.y,
                                  pointColorMapper: (ChartData2 data, _) =>
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
                              style: CustomTextStyle.textStyleBlackbold16,
                            ),
                          ],
                        ),
                        Container(
                          height: 250,
                          width: 25.0.w,
                          child: SfCircularChart(
                            series: <CircularSeries>[
                              // Renders radial bar chart
                              RadialBarSeries<ChartData2, String>(
                                  maximumValue: 100,
                                  innerRadius: '80%',
                                  // radius: '30%',
                                  gap: '3%',
                                  name: "3%",
                                  dataSource: chartData2,
                                  trackBorderColor: Colors.transparent,
                                  xValueMapper: (ChartData2 data, _) => data.x,
                                  yValueMapper: (ChartData2 data, _) => data.y,
                                  pointColorMapper: (ChartData2 data, _) =>
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
                              RadialBarSeries<ChartData2, String>(
                                  maximumValue: 100,
                                  innerRadius: '80%',
                                  // radius: '30%',
                                  gap: '3%',
                                  name: "3%",
                                  dataSource: chartData3,
                                  xValueMapper: (ChartData2 data, _) => data.x,
                                  yValueMapper: (ChartData2 data, _) => data.y,
                                  pointColorMapper: (ChartData2 data, _) =>
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
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.celebrateMonthlyWeekview1 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.celebrateMonthWeekView1();
            },
            child: Text(week1, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.celebrateMonthlyWeekview2 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.celebrateMonthWeekView2();
            },
            child: Text(week2, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.celebrateMonthlyWeekview3 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.celebrateMonthWeekView3();
            },
            child: Text(week3, style: CustomTextStyle.textStyleBlack12),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: userProvider.celebrateMonthlyWeekview4 == true
                  ? Pallete.kpNoticeYellow
                  : Pallete.kpGreyOkpGreypacity3,
            ),
            onPressed: () {
              userProvider.celebrateMonthWeekView4();
            },
            child: Text(week4, style: CustomTextStyle.textStyleBlack12),
          ),
        ],
      ),
      Divider(),
      userProvider.celebrateMonthly == true
          ? montlyViewCelebrate(
              "800",
              "April 23, 2021",
              "10:40am",
              "180",
              "50",
              "0",
            )
          : userProvider.celebrateMonthlyWeekview1 == false
              ? userProvider.celebrateMonthlyWeekview2 == false
                  ? userProvider.celebrateMonthlyWeekview3 == false
                      ? userProvider.celebrateMonthlyWeekview4 == false
                          ? montlyViewCelebrate(
                              "140",
                              "April 23, 2021",
                              "10:40am",
                              "180",
                              "50",
                              "0",
                            )
                          : sampleJsonmontlyWeekView(
                              "800",
                              "789",
                              "April 23, 2021",
                              "10:40am",
                              "180",
                              "50",
                              "0",
                            )
                      : sampleJsonmontlyWeekView(
                          "700",
                          "446",
                          "April 23, 2021",
                          "10:40am",
                          "180",
                          "50",
                          "0",
                        )
                  : sampleJsonmontlyWeekView(
                      "500",
                      "999",
                      "April 23, 2021",
                      "10:40am",
                      "180",
                      "50",
                      "0",
                    )
              : sampleJsonmontlyWeekView(
                  "400",
                  "333",
                  "April 23, 2021",
                  "10:40am",
                  "180",
                  "50",
                  "0",
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

Widget montlyViewCelebrate(
  String monthlyRebate,
  String date,
  String celebrateIncome,
  String deliveryCount,
  String orderCost,
  String totalBill,
) {
  return Column(
    children: [
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "This Month Rebates",
                style: CustomTextStyle.textStyleBlackbold16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "₱$monthlyRebate",
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ),
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
          return expansionTileCelebrateMonthly(
            context,
            "January 20-31 Rebates",
            "140",
            "20",
            "5000",
            "7000",
          );
        },
      ),
    ],
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
          "5km",
          "20mins",
          "Manila",
        );
      },
    ),
  );
}

Widget sampleJsonmontlyWeekView(
  String thismonthRebate,
  String date,
  String monthlyRebate,
  String celebrateIncome,
  String deliveryCount,
  String orderCost,
  String totalBill,
) {
  return Column(
    children: [
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "This Week Rebates",
                style: CustomTextStyle.textStyleBlackbold16,
              ),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text(
                  "₱$monthlyRebate",
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
      ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return expansionTileCelebrateMonthlyWeekView(
            context,
            date,
            monthlyRebate,
            deliveryCount,
            orderCost,
            totalBill,
          );
        },
      ),
    ],
  );
}

class ChartData2 {
  ChartData2(
    this.x,
    this.y,
    this.color,
  );
  final String x;
  final double y;
  final Color color;
}
