import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/Recognized/Recognized_charts.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';

import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'Monthly/Celebrate_monthlyData.dart';

class UserCelebrateMonth extends StatefulWidget {
  @override
  _UserCelebrateMonthState createState() => _UserCelebrateMonthState();
}

class _UserCelebrateMonthState extends State<UserCelebrateMonth> {
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
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: RecognizedMonthChart(
                    monthlyIncome: "25000",
                    week1: 8500,
                    week2: 3500,
                    week3: 5630,
                    week4: 7865,
                  ),
                ),
                Divider(),
                customCardCelebrateWeekly("Week 1", "10", "200", () {
                  pageRoute(
                      context,
                      CelebrateMonthlyData(
                        title: "Week 1",
                      ));
                }),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardCelebrateWeekly("Week 2", "10", "10", () {
                    pageRoute(
                        context,
                        CelebrateMonthlyData(
                          title: "Week 2",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardCelebrateWeekly("Week 3", "10", "130", () {
                    pageRoute(
                        context,
                        CelebrateMonthlyData(
                          title: "Week 3",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCardCelebrateWeekly("Week 4", "10", "55", () {
                    pageRoute(
                        context,
                        CelebrateMonthlyData(
                          title: "Week 4",
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
