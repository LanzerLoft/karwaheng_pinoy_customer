import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';

import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class UserMonth extends StatefulWidget {
  @override
  _UserMonthState createState() => _UserMonthState();
}

class _UserMonthState extends State<UserMonth> {
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
                DefaultTabController(
                  length: 12,
                  initialIndex: 1,
                  child: TabBar(
                    isScrollable: true,
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: customCard(
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "What I’ve earned this Month",
                            style: CustomTextStyle.textStyleGrey16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: listTextPesoIconToday("1000"),
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
                                "Order Cost",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("500"),
                            ],
                          ),
                        ),
                      ],
                    ),
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
