import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'Celebrate/celebrate_Month.dart';
import 'Celebrate/celebrate_Today.dart';
import 'Celebrate/celebrate_Year.dart';

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
            labelColor: Pallete.kpWhite,
            unselectedLabelColor: Pallete.kpBlue,
            indicator: RectangularIndicator(
              color: Pallete.kpBlue,
              horizontalPadding: 5,
              bottomLeftRadius: 5,
              bottomRightRadius: 5,
              topLeftRadius: 5,
              topRightRadius: 5,
            ),
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
            UserCelebrateMonth(),
            UserCelebrateYear(),
          ],
        ),
      ),
    );
  }
}
