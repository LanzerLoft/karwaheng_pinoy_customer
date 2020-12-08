import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

import 'user_Today.dart';

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
          leading: BackButton(color: Pallete.kpBlue),
          automaticallyImplyLeading: true,
          backgroundColor: Pallete.kpWhite,
          title: Text(
            "Recognized ",
            style: TextStyle(color: Pallete.kpBlue),
          ),
          centerTitle: true,
          bottom: TabBar(
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
        body: TabBarView(
          children: [
            UserToday(),
            UserToday(),
            UserToday(),
          ],
        ),
      ),
    );
  }
}
