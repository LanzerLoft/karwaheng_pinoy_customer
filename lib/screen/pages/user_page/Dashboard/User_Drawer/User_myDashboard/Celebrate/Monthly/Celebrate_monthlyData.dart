import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/Recognized/Recognized_charts.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CelebrateMonthlyData extends StatefulWidget {
  final String title;

  CelebrateMonthlyData({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  _CelebrateMonthlyDataState createState() => _CelebrateMonthlyDataState();
}

class _CelebrateMonthlyDataState extends State<CelebrateMonthlyData> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(
        'Week 1',
        10,
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              widget.title,
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: listTextPesoIconToday("221"),
                            ),
                            Text(
                              "Rebates",
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
                              "Delivery Count",
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
                    ],
                  )),
                ),
                Divider(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return expansionTileCelebrateMonth(
                      context,
                      "27-January",
                      "88",
                      "15",
                      "190",
                      "100",
                      "150",
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
