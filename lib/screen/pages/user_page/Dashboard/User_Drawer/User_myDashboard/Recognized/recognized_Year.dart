import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_expansionTile.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class UserRecognizeYear extends StatefulWidget {
  @override
  _UserRecognizeYearState createState() => _UserRecognizeYearState();
}

class _UserRecognizeYearState extends State<UserRecognizeYear> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(
        'Quarter 1',
        11,
      ),
      ChartData(
        'Quarter 2',
        15,
      ),
      ChartData(
        'Quarter 3',
        18,
      ),
      ChartData(
        'Quarter 4',
        25,
      ),
    ];
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      userProvider.recognizedQ1();
                    },
                    child: Container(
                      width: 24.0.w,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: userProvider.recognizedQuarter1 == true
                            ? Pallete.kpRed
                            : Pallete.kpGreyOkpGreypacity2,
                      ),
                      child: Center(
                        child: Text(
                          "Q1",
                          style: userProvider.recognizedQuarter1 == true
                              ? CustomTextStyle.textStyleWhite14
                              : CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      userProvider.recognizedQ2();
                    },
                    child: Container(
                      width: 24.0.w,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: userProvider.recognizedQuarter2 == true
                            ? Pallete.kpRed
                            : Pallete.kpGreyOkpGreypacity2,
                      ),
                      child: Center(
                        child: Text(
                          "Q2",
                          style: userProvider.recognizedQuarter2 == true
                              ? CustomTextStyle.textStyleWhite14
                              : CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      userProvider.recognizedQ3();
                    },
                    child: Container(
                      width: 24.0.w,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: userProvider.recognizedQuarter3 == true
                            ? Pallete.kpRed
                            : Pallete.kpGreyOkpGreypacity2,
                      ),
                      child: Center(
                        child: Text(
                          "Q3",
                          style: userProvider.recognizedQuarter3 == true
                              ? CustomTextStyle.textStyleWhite14
                              : CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      userProvider.recognizedQ4();
                    },
                    child: Container(
                      width: 24.0.w,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: userProvider.recognizedQuarter4 == true
                            ? Pallete.kpRed
                            : Pallete.kpGreyOkpGreypacity2,
                      ),
                      child: Center(
                        child: Text(
                          "Q4",
                          style: userProvider.recognizedQuarter4 == true
                              ? CustomTextStyle.textStyleWhite14
                              : CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              userProvider.recognizedYear == true
                  ? recognizedYear()
                  : userProvider.recognizedQuarter1 == false
                      ? userProvider.recognizedQuarter2 == false
                          ? userProvider.recognizedQuarter3 == false
                              ? userProvider.recognizedQuarter4 == false
                                  ? recognizedYear()
                                  : recognizedYearQuarte4()
                              : recognizedYearQuarter3()
                          : recognizedYearQuarter2()
                      : recognizedYearQuarter1(),
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y,
  );
  final String x;
  final double y;
}

Widget recognizedYear() {
  final List<ChartData> chartData = [
    ChartData(
      'Q1',
      11,
    ),
    ChartData(
      'Q2',
      15,
    ),
    ChartData(
      'Q3',
      18,
    ),
    ChartData(
      'Q4',
      25,
    ),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Total Income This Year",
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
                    "400,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: SfCartesianChart(
              primaryYAxis: CategoryAxis(
                isVisible: false,
              ),
              primaryXAxis: CategoryAxis(
                isVisible: true,
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
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "1000 Deliveries Completed",
            style: CustomTextStyle.textStyleBlackbold16,
          ),
        ),
      ),
      Divider(),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return expansionTileIncomeYear(
              context,
              "4th Quarter",
              "250 Deliveries Completed",
              "150",
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
      ),
    ],
  );
}

Widget recognizedYearQuarter1() {
  final List<ChartData> chartData = [
    ChartData(
      'Jan',
      11,
    ),
    ChartData(
      'Feb',
      15,
    ),
    ChartData(
      'Mar',
      18,
    ),
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Total Quarterly Income",
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
                    "100,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SfCartesianChart(
            primaryYAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryXAxis: CategoryAxis(
              isVisible: true,
            ),
            series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.6,
                spacing: 0.2,
                color: Pallete.kpBlue,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Map color for each data points from the data source
              )
            ]),
      )),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "100 Deliveries Completed",
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return expansionTileIncomeYear(
              context,
              "January 2021 recognized",
              "85 Deliveries Completed",
              "150,000",
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
      ),
    ],
  );
}

Widget recognizedYearQuarter2() {
  final List<ChartData> chartData = [
    ChartData(
      'Apr',
      11,
    ),
    ChartData(
      'May',
      15,
    ),
    ChartData(
      'Jun',
      6,
    ),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Total Quarterly Income",
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
                    "100,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SfCartesianChart(
            primaryYAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryXAxis: CategoryAxis(
              isVisible: true,
            ),
            series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.6,
                spacing: 0.2,
                color: Pallete.kpBlue,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Map color for each data points from the data source
              )
            ]),
      )),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "100 Deliveries Completed",
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return expansionTileIncomeYear(
              context,
              "April 2021 recognized",
              "85 Deliveries Completed",
              "150,000",
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
      ),
    ],
  );
}

Widget recognizedYearQuarter3() {
  final List<ChartData> chartData = [
    ChartData(
      'Jul',
      11,
    ),
    ChartData(
      'Aug',
      7,
    ),
    ChartData(
      'Sep',
      18,
    ),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Total Quarterly Income",
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
                    "100,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SfCartesianChart(
            primaryYAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryXAxis: CategoryAxis(
              isVisible: true,
            ),
            series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.6,
                spacing: 0.2,
                color: Pallete.kpBlue,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Map color for each data points from the data source
              )
            ]),
      )),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "100 Deliveries Completed",
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return expansionTileIncomeYear(
              context,
              "July 2021 recognized",
              "85 Deliveries Completed",
              "150,000",
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
      ),
    ],
  );
}

Widget recognizedYearQuarte4() {
  final List<ChartData> chartData = [
    ChartData(
      'Oct',
      20,
    ),
    ChartData(
      'Nov',
      15,
    ),
    ChartData(
      'Dec',
      18,
    ),
  ];
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Total Quarterly Income",
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
                    "100,000",
                    style: CustomTextStyle.textStyleBlackbold36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: SfCartesianChart(
            primaryYAxis: CategoryAxis(
              isVisible: false,
            ),
            primaryXAxis: CategoryAxis(
              isVisible: true,
            ),
            series: <CartesianSeries>[
              ColumnSeries<ChartData, String>(
                dataSource: chartData,
                width: 0.6,
                spacing: 0.2,
                color: Pallete.kpBlue,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                // Map color for each data points from the data source
              )
            ]),
      )),
      Divider(),
      Container(
        width: 100.0.w,
        decoration: BoxDecoration(color: Pallete.kpGreyOkpGreypacity3),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            "100 Deliveries Completed",
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
          itemCount: 3,
          itemBuilder: (context, index) {
            return expansionTileIncomeYear(
              context,
              "October 2021 recognized",
              "85 Deliveries Completed",
              "150,000",
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
      ),
    ],
  );
}
