import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_Topup.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'user_History.dart';
import 'user_Rewards.dart';
import 'user_Topup.dart';
import 'user_Transfer.dart';

class UserKPWalletPayment extends StatefulWidget {
  @override
  _UserKPWalletPaymentState createState() => _UserKPWalletPaymentState();
}

class _UserKPWalletPaymentState extends State<UserKPWalletPayment> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    double expandedHeight = 180;
    bool primary = true;
    int length = 4;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
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
          // bottom:
          //     customTabBarMyWallet("Top Up", "History", "Transfer", "Rewards"),
        ),
        bottomNavigationBar: SafeArea(
          maintainBottomViewPadding: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: customButton2(() {
              pageRouteBack(context);
            }, "Pay Now", 5, double.infinity, 55, Pallete.kpBlue,
                Pallete.kpBlue),
          ),
        ),
        body: Container(
          color: Pallete.kpWhite,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 8.0,
            ),
          ),
          child: Container(
            height: 100.0.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Text(
                        "Available Balance",
                        style: CustomTextStyle.textStyleGrey18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: customListTextPesoIcon("0.00"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Amount",
                      style: CustomTextStyle.textStyleGrey18,
                    ),
                  ),
                  Container(
                    width: 40.0.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "PHP",
                          style: CustomTextStyle.textStyleGrey18,
                        ),
                        Container(
                          width: 30.0.w,
                          child: customTextFieldAmmount(
                              (value) {}, "0.00", userProvider.ammount, () {
                            userProvider.phpOntap();
                          }),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customCardAmmount(
                              () {
                                userProvider.php50();
                              },
                              "50",
                              userProvider.btnphp50
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp50
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp50
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                            customCardAmmount(
                              () {
                                userProvider.php100();
                              },
                              "100",
                              userProvider.btnphp100
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp100
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp100
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                            customCardAmmount(
                              () {
                                userProvider.php300();
                              },
                              "300",
                              userProvider.btnphp300
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp300
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp300
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            customCardAmmount(
                              () {
                                userProvider.php500();
                              },
                              "500",
                              userProvider.btnphp500
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp500
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp500
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                            customCardAmmount(
                              () {
                                userProvider.php1000();
                              },
                              "1000",
                              userProvider.btnphp1000
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp1000
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp1000
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                            customCardAmmount(
                              () {
                                userProvider.php5000();
                              },
                              "5000",
                              userProvider.btnphp5000
                                  ? Pallete.kpWhite
                                  : Pallete.kpBlack,
                              userProvider.btnphp5000
                                  ? CustomTextStyle.textStyleWhitebold16
                                  : CustomTextStyle.textStyleBluebold16,
                              userProvider.btnphp5000
                                  ? Pallete.kpBlue
                                  : Pallete.kpWhite,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
