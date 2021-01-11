import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class UserRecognizeYear extends StatefulWidget {
  @override
  _UserRecognizeYearState createState() => _UserRecognizeYearState();
}

class _UserRecognizeYearState extends State<UserRecognizeYear> {
  final items = List<String>.generate(100, (i) => "$i");

  final List<ChartData> chartData = [
    ChartData('David', 25, 2),
    ChartData('Steve', 38, 5),
    ChartData('Jack', 34, 6),
    ChartData('Others', 52, 8)
  ];

  final List<SalesData> chartDatas = [
    SalesData(2010, 35),
    SalesData(2011, 28),
    SalesData(2012, 34),
    SalesData(2013, 32),
    SalesData(2014, 40)
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
                DefaultTabController(
                  length: 4,
                  initialIndex: 1,
                  child: TabBar(
                    labelColor: Pallete.kpBlue,
                    indicatorColor: Pallete.kpBlue,
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
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Stack(
                    children: [
                      Container(
                        child: SfCartesianChart(
                          palette: [
                            Pallete.kpRed,
                          ],
                          series: <ChartSeries>[
                            StackedColumnSeries<ChartData, double>(
                                groupName: 'Group A',
                                dataSource: chartData,
                                xValueMapper: (ChartData sales, _) => sales.x1,
                                yValueMapper: (ChartData sales, _) => sales.y),
                            StackedColumnSeries<ChartData, double>(
                                groupName: 'Group B',
                                dataSource: chartData,
                                xValueMapper: (ChartData sales, _) => sales.x1,
                                yValueMapper: (ChartData sales, _) => sales.y),
                            StackedColumnSeries<ChartData, double>(
                                groupName: 'Group A',
                                dataSource: chartData,
                                xValueMapper: (ChartData sales, _) => sales.x1,
                                yValueMapper: (ChartData sales, _) => sales.y),
                            StackedColumnSeries<ChartData, double>(
                                groupName: 'Group B',
                                dataSource: chartData,
                                xValueMapper: (ChartData sales, _) => sales.x1,
                                yValueMapper: (ChartData sales, _) => sales.y)
                          ],
                        ),
                      ),
                    ],
                  ),
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
  ChartData(this.x, this.y, this.x1, [this.color]);
  final String x;
  final double y;
  final double x1;
  final Color color;
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
