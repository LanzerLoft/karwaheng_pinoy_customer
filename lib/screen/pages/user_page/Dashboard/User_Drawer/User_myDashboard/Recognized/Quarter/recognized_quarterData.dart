import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Recognized_charts.dart';

class RecognizedYearData extends StatefulWidget {
  final String title;

  RecognizedYearData({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  _RecognizedYearDataState createState() => _RecognizedYearDataState();
}

class _RecognizedYearDataState extends State<RecognizedYearData> {
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
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.title,
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                              "Quarter 1",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: listTextPesoIconToday("12000"),
                            ),
                            Text(
                              "Delivery Fee",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
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
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return expansionTileRecognizedQuarter(
                      context,
                      "November 2021",
                      "10000",
                      "250",
                      "3350",
                      "1190",
                      "5000",
                      "N/A",
                      "N/A",
                    );
                  },
                ),
              ],
            ),
          ),
        ));
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
