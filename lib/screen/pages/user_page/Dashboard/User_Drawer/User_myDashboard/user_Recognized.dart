import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'Recognized/recognized_Month.dart';
import 'Recognized/recognized_Today.dart';
import 'Recognized/recognized_Year.dart';

class UserRecognized extends StatefulWidget {
  @override
  _UserRecognizedState createState() => _UserRecognizedState();
}

class _UserRecognizedState extends State<UserRecognized> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Pallete.kpWhite,
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          title: Text(
            "Recognize",
            style: TextStyle(color: Pallete.kpBlue),
          ),
          elevation: 0,
          centerTitle: true,
          bottom: TabBar(
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
          children: [
            UserRecognizeToday(),
            UserRecognizeMonth(),
            UserRecognizeYear(),
          ],
        ),
      ),
    );
  }
}
