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
            color: Pallete.kpWhite,
          ),
          backgroundColor: Pallete.kpBlue,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "KP Wallet",
            style: CustomTextStyle.textStyleWhite18,
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 35,
                      child: customTabBarMyWallet(
                          "Top Up", "History", "Transfer", "Rewards")),
                  Container(
                    height: 80.0.h,
                    child: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          userTopUP(),
                          userHistory(),
                          userTransfer(),
                          userRewards(),
                        ]),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
