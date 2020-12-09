import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

import 'celebrate_Month.dart';
import 'celebrate_Today.dart';

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
          leading: BackButton(color: Pallete.kpBlue),
          automaticallyImplyLeading: true,
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
            UserMonth(),
            UserToday(),
          ],
        ),
      ),
    );
  }
}
