import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class PabiliGcashConfirmation extends StatelessWidget {
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    double expandedHeight = 180;

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
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Text("GCash",
                style: TextStyle(
                    fontSize: 40,
                    color: Pallete.kpBlue,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: customButton2(() {
            pageRoute(context, TransferBalanceToGcashNumber());
          }, "Transfer", 5, double.infinity, 55, Pallete.kpBlue,
              Pallete.kpBlue),
        ),
        body: NestedScrollView(
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
                        child: customListTextPesoIcon("1000"),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            height: 100.0.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                    padding: EdgeInsets.symmetric(vertical: 30),
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

class TransferBalanceToGcashNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            centerTitle: false,
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
              child: Text("GCash",
                  style: TextStyle(
                      fontSize: 40,
                      color: Pallete.kpBlue,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          backgroundColor: Pallete.kpWhite,
          bottomNavigationBar: SafeArea(
            maintainBottomViewPadding: true,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: customButton2(
                  () => showGeneralDialog(
                        barrierDismissible: false,
                        context: context,
                        barrierColor: Colors.black54, // space around dialog
                        transitionDuration: Duration(milliseconds: 500),
                        transitionBuilder: (context, a1, a2, child) {
                          return ScaleTransition(
                            scale: CurvedAnimation(
                                parent: a1,
                                curve: Curves.elasticOut,
                                reverseCurve: Curves.easeOutCubic),
                            child: TransferGCashSuccessful(),
                          );
                        },
                        pageBuilder: (BuildContext context, Animation animation,
                            Animation secondaryAnimation) {
                          return null;
                        },
                      ),
                  "Confirm",
                  5,
                  double.infinity,
                  50,
                  Pallete.kpBlue,
                  Pallete.kpBlue),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: CustomConSize.mobile,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "KP Wallet Balance",
                        style: CustomTextStyle.textStyleGrey18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: customListTextPesoIcon("500"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: customCard(
                      Container(
                        width: 100.0.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text("GCash Information",
                                  style: CustomTextStyle.textStyleBluebold18),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text("Accouny Name",
                                  style: CustomTextStyle.textStyleGrey18),
                            ),
                            customTextFieldGcashTransferName((value) {},
                                Pallete.kpBlue, "ex. Juan Dela Cruz"),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text("Account Number",
                                  style: CustomTextStyle.textStyleGrey18),
                            ),
                            customTextFieldGcashAccColumn(
                                (value) {}, Pallete.kpBlue, "ex. 091234567890"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  customCard(
                    Container(
                      width: 100.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text("YOU ARE ABOUT TO PAY",
                                style: CustomTextStyle.textStyleGreybold16),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Amount",
                                    style: CustomTextStyle.textStyleGreybold16),
                                listTextPesoIcon16("1000"),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",
                                    style: CustomTextStyle.textStyleGreybold16),
                                listTextPesoIcon16("1000"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
