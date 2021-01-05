import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'user_History.dart';
import 'user_Rewards.dart';
import 'user_Topup.dart';
import 'user_Transfer.dart';

class UserKpWallet extends StatefulWidget {
  @override
  _UserKpWalletState createState() => _UserKpWalletState();
}

class _UserKpWalletState extends State<UserKpWallet> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "My Wallet",
            style: CustomTextStyle.textStyleBlue18,
          ),
          bottom:
              customTabBarMyWallet("Top Up", "History", "Transfer", "Rewards"),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            UserTopUpWallet(),
            UserHistoryWallet(),
            UserTransferWallet(),
            UserRewardsWallet(),
          ],
        ),
      ),
    );
  }
}
