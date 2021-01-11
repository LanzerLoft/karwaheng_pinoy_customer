import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';

import 'package:sizer/sizer.dart';

class SliverApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(100, (i) => "$i");
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // Add the app bar to the CustomScrollView.
          SliverAppBar(
            // Provide a standard title.
            backgroundColor: Pallete.kpWhite,
            title: Text(
              "Celebrates",
              style: CustomTextStyle.textStyleBlue18,
            ),
            centerTitle: true,
            // Allows the user to reveal the app bar if they begin scrolling
            floating: true, pinned: true, snap: true,
            // Display a placeholder widget to visualize the shrinking size.

            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Column(
                children: [
                  DefaultTabController(
                    length: 3,
                    initialIndex: 1,
                    child: TabBar(
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
                          text: "Month",
                        ),
                      ],
                    ),
                  ),
                  DefaultTabController(
                    length: 5,
                    initialIndex: 1,
                    child: TabBar(
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
                          text: "Month",
                        ),
                        Tab(
                          text: "Month",
                        ),
                        Tab(
                          text: "Month",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.

              (context, index) => Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
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
              ),
              // Builds 1000 ListTiles
              childCount: 1000,
            ),
          ),
        ],
      ),
    );
  }
}
