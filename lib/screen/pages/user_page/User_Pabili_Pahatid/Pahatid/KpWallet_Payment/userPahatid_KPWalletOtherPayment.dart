import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserPahatidKPWalletOtherPayment extends StatefulWidget {
  @override
  _UserPahatidKPWalletOtherPayment createState() =>
      _UserPahatidKPWalletOtherPayment();
}

class _UserPahatidKPWalletOtherPayment
    extends State<UserPahatidKPWalletOtherPayment> {
  TextEditingController gcash = TextEditingController();
  TextEditingController remainingbill = TextEditingController();
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    TextEditingController passcode = TextEditingController();
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
          title: RichText(
            text: TextSpan(
              text: "KP Wallet ",
              style: TextStyle(
                  color: Pallete.kpBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                  text: '(Up to ₱2,000)',
                  style: TextStyle(
                      color: Pallete.kpGrey,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                width: 70,
                height: 70,
                child: Image.asset(
                  "assets/payment_icons/kpwallet.png",
                  filterQuality: FilterQuality.high,
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          color: Pallete.kpWhite,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: CustomConSize.mobile,
            ),
          ),
          child: Container(
            height: 100.0.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: RichText(
                        text: TextSpan(
                          text: "Pay Cashless up to ₱2,000. ",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                    child: RichText(
                      text: TextSpan(
                        text:
                            "Our system will debit the amount fromt your KP Wallet and credits that amount to your Rider's KP Wallet.",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Pallete.kpGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                      text: TextSpan(
                        text: "Your",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Total Bill",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          TextSpan(
                            text: " is ",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 18),
                          ),
                          TextSpan(
                            text: "₱400.",
                            style: TextStyle(
                                color: Pallete.kpBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                      child: RichText(
                        text: TextSpan(
                          text: "To pay through other ",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Payment Methods:',
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      _otherMethodsGCashPayment("100"),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Pallete.kpGrey,
                  ),
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
                    child: customListTextPesoIcon("1000.00"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "How much will you pay?",
                        style: CustomTextStyle.textStyleGrey18,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 50.0.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "PHP ",
                            style: CustomTextStyle.textStyleGrey18,
                          ),
                          Container(
                            width: 30.0.w,
                            child: customTextFieldAmount(
                                (value) {},
                                userProvider.minimun,
                                "250.00",
                                userProvider.ammount, () {
                              userProvider.phpOntap();
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
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
                              "₱ 50",
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
                              "₱ 100",
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
                              "₱ 300",
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
                              "₱ 500",
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
                              "₱ 1000",
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
                              "₱ 5000",
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
                  Divider(
                    thickness: 2,
                    color: Pallete.kpGrey,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "Remaining Bill:\n",
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '(Pay through other ',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: 'Payment Methods',
                                  style: TextStyle(
                                      color: Pallete.kpBlue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: ').',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountRemainingBill(
                              (value) {}, "50", remainingbill),
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                    maintainBottomViewPadding: true,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: customButtonYT(
                          () => showGeneralDialog(
                                barrierDismissible: false,
                                context: context,
                                barrierColor:
                                    Colors.black54, // space around dialog
                                transitionDuration: Duration(milliseconds: 800),
                                transitionBuilder: (context, a1, a2, child) {
                                  return ScaleTransition(
                                    scale: CurvedAnimation(
                                        parent: a1,
                                        curve: Curves.elasticOut,
                                        reverseCurve: Curves.easeOutCubic),
                                    child: KPWalletPayNow(
                                      onChanged: (value) {},
                                      controller: passcode,
                                      amount: "250",
                                      onConfirm: () {
                                        pageRouteBack(context);
                                        showGeneralDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          barrierColor: Colors
                                              .black54, // space around dialog
                                          transitionDuration:
                                              Duration(milliseconds: 100),
                                          transitionBuilder:
                                              (context, a1, a2, child) {
                                            return ScaleTransition(
                                              scale: CurvedAnimation(
                                                  parent: a1,
                                                  curve: Curves.elasticOut,
                                                  reverseCurve:
                                                      Curves.easeOutCubic),
                                              child: PaymentSuccess(),
                                            );
                                          },
                                          pageBuilder: (BuildContext context,
                                              Animation animation,
                                              Animation secondaryAnimation) {
                                            return null;
                                          },
                                        );
                                      },
                                    ),
                                  );
                                },
                                pageBuilder: (BuildContext context,
                                    Animation animation,
                                    Animation secondaryAnimation) {
                                  return null;
                                },
                              ),
                          "Pay Now",
                          5,
                          double.infinity,
                          Pallete.kpBlue,
                          Pallete.kpBlue),
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

Widget _otherMethodsGCashPayment(String gcashAmount) {
  TextEditingController gcash = TextEditingController();
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset(
                "assets/payment_icons/gcash_logo.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            Text(
              "GCash",
              style: CustomTextStyle.textStyleBlack14,
            )
          ],
        ),
        IgnorePointer(
          ignoring: true,
          child: enterAmountAllPaymentMethod(
              (value) {}, gcashAmount, 25.0.w, gcash),
        ),
      ],
    ),
  );
}

Widget _otherMethodsPaymayaPayment(String paymayaAmount) {
  TextEditingController paymaya = TextEditingController();
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              child: Image.asset(
                "assets/payment_icons/paymaya_logo.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            Text(
              "Paymaya",
              style: CustomTextStyle.textStyleBlack14,
            )
          ],
        ),
        IgnorePointer(
          ignoring: true,
          child: enterAmountAllPaymentMethod(
              (value) {}, paymayaAmount, 25.0.w, paymaya),
        ),
      ],
    ),
  );
}
