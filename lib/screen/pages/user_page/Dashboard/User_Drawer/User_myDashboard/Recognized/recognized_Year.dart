import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'Quarter/recognized_quarterData.dart';
import 'Recognized_charts.dart';

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
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: CustomPadding.padding8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTabController(
                  length: 4,
                  initialIndex: 0,
                  child: TabBar(
                    labelColor: Pallete.kpWhite,
                    unselectedLabelColor: Pallete.kpBlue,
                    indicator: RectangularIndicator(
                      color: Pallete.kpBlue,
                      bottomLeftRadius: 5,
                      bottomRightRadius: 5,
                      topLeftRadius: 5,
                      topRightRadius: 5,
                    ),
                    tabs: [
                      Tab(
                        text: "Q1",
                      ),
                      Tab(
                        text: "Q2",
                      ),
                      Tab(
                        text: "Q3",
                      ),
                      Tab(
                        text: "Q4",
                      ),
                    ],
                  ),
                ),
                Container(
                    child: SfCartesianChart(
                        primaryXAxis: CategoryAxis(),
                        series: <CartesianSeries>[
                      ColumnSeries<ChartData, String>(
                        dataSource: chartData,
                        color: Pallete.kpBlue,
                        xValueMapper: (ChartData data, _) => data.x,
                        yValueMapper: (ChartData data, _) => data.y,
                        // Map color for each data points from the data source
                      )
                    ])),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              "YTP",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: listTextPesoIconToday("44000"),
                            ),
                            Text(
                              "Delivery Fee",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Completed Delivery",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            Text(
                              "7",
                              style: CustomTextStyle.textStyleBlue16,
                            ),
                          ],
                        ),
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
                            listTextPesoIconToday16("5000"),
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
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
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
                              "Priority Fee",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            listTextPesoIconToday16("100"),
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
                Divider(),
                // ListView.builder(
                //   shrinkWrap: true,
                //   physics: BouncingScrollPhysics(),
                //   itemCount: 4,
                //   itemBuilder: (context, index) {
                //     return expansionTileRecognizedQuarter(
                //       context,
                //       "Q4 2021 Delivery Fee",
                //       "10000",
                //       "250",
                //       "3350",
                //       "1190",
                //       "5000",
                //       "N/A",
                //       "N/A",
                //     );
                //   },
                // ),

                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardRecognizedWeekly("Quarter 1 ", "12500", () {
                    pageRoute(
                        context,
                        RecognizedYearData(
                          title: "Quarter 1",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardRecognizedWeekly("Quarter 2", "13500", () {
                    pageRoute(
                        context,
                        RecognizedYearData(
                          title: "Quarter 2",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardRecognizedWeekly("Quarter 3", "15630", () {
                    pageRoute(
                        context,
                        RecognizedYearData(
                          title: "Quarter 3",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCardRecognizedWeekly("Quarter 4", "17865", () {
                    pageRoute(
                        context,
                        RecognizedYearData(
                          title: "Quarter 4",
                        ));
                  }),
                ),
              ],
            ),
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
