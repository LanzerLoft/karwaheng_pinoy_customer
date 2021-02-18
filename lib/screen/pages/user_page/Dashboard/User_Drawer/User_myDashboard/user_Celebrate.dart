import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:sizer/sizer.dart';
import 'celebrate_Month.dart';
import 'celebrate_Today.dart';
import 'celebrate_Year.dart';
import 'charts.dart';

class UserCelebrate extends StatefulWidget {
  @override
  _UserCelebrateState createState() => _UserCelebrateState();
}

class _UserCelebrateState extends State<UserCelebrate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Pallete.kpWhite,
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          title: Text(
            "Celebrate",
            style: TextStyle(color: Pallete.kpBlue),
          ),
          centerTitle: true,
          bottom: TabBar(
            physics: NeverScrollableScrollPhysics(),
            isScrollable: false,
            labelColor: Pallete.kpBlue,
            indicatorColor: Pallete.kpBlue,
            tabs: [
              Tab(
                text: "Today",
              ),
              Tab(
                text: "Month",
              ),
              Tab(
                text: "Year",
              ),
            ],
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            UserCelebrateToday(),
            ChartsDemo(),
            UserYear(),
          ],
        ),
      ),
    );
  }
}
