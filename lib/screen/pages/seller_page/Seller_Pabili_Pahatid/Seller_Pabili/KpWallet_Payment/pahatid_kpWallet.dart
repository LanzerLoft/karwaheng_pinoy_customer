import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'Pahatid_KP_Tabs/Pahatid_kpTopup.dart';
import 'Pahatid_KP_Tabs/Pahatid_kpTransfer.dart';
import 'Pahatid_KP_Tabs/Pahitd_kpRewards.dart';
import 'Pahatid_KP_Tabs/Pahitid_kpHistory.dart';

class UserPahatidKpWallet extends StatefulWidget {
  @override
  _UserPahatidKpWalletState createState() => _UserPahatidKpWalletState();
}

class _UserPahatidKpWalletState extends State<UserPahatidKpWallet> {
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
            "My Wallet",
            style: CustomTextStyle.textStyleWhite18,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    height: 35,
                    child: customTabBarMyWallet(
                        "Top Up", "History", "Transfer", "Rewards")),
                Container(
                  height: 85.0.h,
                  child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        topUpList(),
                        pahatidHistory(),
                        pahatidTransfer(),
                        pahatidRewards(),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
