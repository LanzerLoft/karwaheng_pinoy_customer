import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

import 'user_Today.dart';

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
          backgroundColor: Pallete.kpWhite,
          title: Text(
            "Celebrate",
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
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
