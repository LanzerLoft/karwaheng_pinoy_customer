import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/Recognized/Recognized_charts.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';

import 'Quarter/Celebrate_quarterData.dart';

class UserCelebrateYear extends StatefulWidget {
  @override
  _UserCelebrateYearState createState() => _UserCelebrateYearState();
}

class _UserCelebrateYearState extends State<UserCelebrateYear> {
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
                  child: RecognizedYearChart(
                    q1: 2500,
                    q2: 3500,
                    q3: 4330,
                    q4: 2665,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Text(
                              "Year to Date",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: listTextPesoIconToday("12000"),
                            ),
                            Text(
                              "Rebates",
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
                  child: customCardCelebrateYear(
                      "Quarter 1 Rebates", "3388", "12", "800", () {
                    pageRoute(
                        context,
                        CelebrateYearData(
                          title: "Quarter 1 ",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardCelebrateYear(
                      "Quarter 2 Rebates", "1388", "12", "800", () {
                    pageRoute(
                        context,
                        CelebrateYearData(
                          title: "Quarter 2 ",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardCelebrateYear(
                      "Quarter 3 Rebates", "2388", "12", "800", () {
                    pageRoute(
                        context,
                        CelebrateYearData(
                          title: "Quarter 3 ",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCardCelebrateYear(
                      "Quarter 4 Rebates", "358", "12", "800", () {
                    pageRoute(
                        context,
                        CelebrateYearData(
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
