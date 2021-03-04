import 'package:flutter/material.dart';
import 'dart:math';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';

import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import '../../user_Pabili_Pahatid.dart';
import 'user_History.dart';
import 'user_Rewards.dart';
import 'user_Topup.dart';
import 'user_Transfer.dart';

class UserMyWallet extends StatefulWidget {
  @override
  _UserMyWalletState createState() => _UserMyWalletState();
}

class _UserMyWalletState extends State<UserMyWallet> {
  @override
  Widget build(BuildContext context) {
    double expandedHeight = 200;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        leading: GestureDetector(
          onTap: () {
            pageRoute(context, UserMainDashboard());
          },
          child: Icon(Icons.arrow_back_ios),
        ),

        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "My Wallet",
          style: CustomTextStyle.textStyleBlue18,
        ),
        // bottom:
        //     customTabBarMyWallet("Top Up", "History", "Transfer", "Rewards"),
      ),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Pallete.kpWhite,
                expandedHeight: expandedHeight,
                floating: true,
                pinned: false,
                snap: true,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: Text(
                            "Available Balance",
                            style: CustomTextStyle.textStyleGrey18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: customListTextPesoIcon("1000"),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          print("details");
                          pageRoute(context, TopUpBalanceDetails());
                        },
                        child: Text(
                          "Details",
                          style: CustomTextStyle.textStyleGrey14,
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
                  customTabBarMyWallet(
                      "Top Up", "Rewards", "Transfer", "History"),
                ),
                pinned: true,
              ),
            ];
          },
          body: Container(
            color: Pallete.kpWhite,
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 8.0,
              ),
            ),
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                UserTopUpWallet(),
                UserRewardsWallet(),
                UserTransferWallet(),
                UserHistoryWallet(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Pallete.kpWhite,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class TopUpBalanceDetails extends StatefulWidget {
  @override
  _TopUpBalanceDetailsState createState() => _TopUpBalanceDetailsState();
}

class _TopUpBalanceDetailsState extends State<TopUpBalanceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center());
  }
}
