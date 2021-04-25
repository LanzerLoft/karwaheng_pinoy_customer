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

class UserPahatidCOPwithNotice extends StatefulWidget {
  @override
  _UserPahatidCOPwithNotice createState() => _UserPahatidCOPwithNotice();
}

class _UserPahatidCOPwithNotice extends State<UserPahatidCOPwithNotice> {
  TextEditingController gcash = TextEditingController();
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    TextEditingController prepay = TextEditingController();
    TextEditingController pettyCash = TextEditingController();
    TextEditingController change = TextEditingController();
    TextEditingController remainingbill = TextEditingController();
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
            title: Text("COP",
                style: CustomTextStyle.textStyleBlue16,
                textAlign: TextAlign.center),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    "assets/payment_icons/cod_abono.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Pallete.kpWhite,
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
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
                            text: "400",
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
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 85.0.w),
                          child: Text(
                            "Pay for your delivery right at your doorstep. Our Partner Rider will prepay (abono) your Pabili item(s) first.",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 85.0.w),
                          child: Text(
                            "You'll just have to reimburse our rider upon delivery.",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: Text(
                            "How much do we need to prepay (make abono) for you?",
                            style: CustomTextStyle.textStyleBlue14,
                          ),
                        ),
                        enterAmountAllPaymentMethod(
                            (value) {}, "0.00", 25.0.w, prepay),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "How much is your Petty Cash on Hand?\n",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text:
                                      '(Our Rider Partner will prepare your change / "sukli" in advance.)',
                                  style: TextStyle(
                                      color: Pallete.kpGrey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                        enterAmountAllPaymentMethod(
                            (value) {}, "0.00", 25.0.w, pettyCash),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: Text(
                            "Your change:",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountAllPaymentMethod(
                              (value) {}, "0.00", 25.0.w, change),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Pallete.kpGrey,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
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
                        enterAmountAllPaymentMethod(
                            (value) {}, "0.00", 25.0.w, remainingbill),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Pallete.kpGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 40,
                        width: 40.0.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                          color: Pallete.kpNoticeYellow,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20),
                          child: Center(
                              child: Text("Notice",
                                  style: CustomTextStyle.textStyleRed20)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                      child: Text(
                        "Our C.O.D. with Abono service is up to ₱2,000",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                    ),
                  ),
                  Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                    child: Text(
                      "Please select an item that is lower than ₱2,000",
                      style: CustomTextStyle.textStyleBlack14,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: Text(
                            "Pabili Service fee:",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountAllPaymentMethod(
                              (value) {}, "0.00", 25.0.w, change),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: Text(
                            "30% Security Deposit",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountAllPaymentMethod(
                              (value) {}, "0.00", 25.0.w, change),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "If you wish to continue with this purchase, send the 30% of Pabili Service fee in advance as a security deposit \n(",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'non-refundable',
                              style: TextStyle(
                                  color: Pallete.kpRed,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: ') using ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: 'GCash, PayMaya',
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: ' or ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: 'KP Wallet',
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: ' balance.',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: Text(
                        "Your KP Rider will go to your desired merchants to check for your order's availability and price.",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: Text(
                        "If your order is not available, your KP Rider will offer an alternative, if any.",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: RichText(
                        text: TextSpan(
                          text: "If you wish to",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' cancel ',
                              style: TextStyle(
                                  color: Pallete.kpRed,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text:
                                  'the purchase, we will keep the 30% of Pabili Service fee.  ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: RichText(
                        text: TextSpan(
                          text: "If you wish to",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' proceed ',
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text:
                                  'with the purchase, you will be asked to send the item cost and the remaining 70% of Pabili Service fee to complete your order.',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: customButton(() {}, "Confirm", 5, double.infinity,
                        Pallete.kpBlue, Pallete.kpBlue),
                  ),
                  SafeArea(
                    maintainBottomViewPadding: true,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 20),
                        child: Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: 'By clicking "Confirm", you',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' agree ',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: 'with above terms.',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
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
        enterAmountAllPaymentMethod2((value) {}, gcashAmount, 25.0.w, gcash),
      ],
    ),
  );
}

Widget _otherMethodsPaymayaPayment(String gcashAmount) {
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
        enterAmountAllPaymentMethod2((value) {}, gcashAmount, 25.0.w, gcash),
      ],
    ),
  );
}
