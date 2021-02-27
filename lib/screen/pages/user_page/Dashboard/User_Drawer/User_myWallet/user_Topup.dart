import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'Topup_PaymentMethod/topup_InstantPayment.dart';
import 'Topup_PaymentMethod/topup_RegularPayment.dart';
import 'Topup_PaymentMethod/topup_viaGCashMethod.dart';

class UserTopUpWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: Container(
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
                          (value) {},   userProvider.minimun,"0.00", userProvider.ammount, () {
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: customCardTopUpPayment("Payment via", " GCash", () {
                  pageRoute(context, TopupWalletPayment());
                }),
              ),
              customButton2(() {}, "Top Up", 5, double.infinity, 55,
                  Pallete.kpBlue, Pallete.kpBlue)
            ],
          ),
        ),
      ),
    );
  }
}

class TopupWalletPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Payment Method",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: cardTopupPaymentMethod("Instant",
                    "(Credits your account within 10 minutes, with 2.7% processing fee)",
                    () {
                  pageRoute(context, TopupInstantPayment());
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: cardTopupPaymentMethod(
                    "Regular", "(Credits your account within 24 hours, free)",
                    () {
                  pageRoute(context, TopupRegularPayment());
                }),
              ),
            ],
          ),
        ));
  }
}
