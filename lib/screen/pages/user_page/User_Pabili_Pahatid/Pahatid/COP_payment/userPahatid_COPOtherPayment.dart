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

class UserPahatidCOPOtherPayment extends StatefulWidget {
  @override
  _UserPahatidCOPOtherPayment createState() => _UserPahatidCOPOtherPayment();
}

class _UserPahatidCOPOtherPayment extends State<UserPahatidCOPOtherPayment> {
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
            title: Text("Cash on Pick-up",
                style: CustomTextStyle.textStyleBlue16,
                textAlign: TextAlign.center),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    "assets/pahatid_icons/cop_icon.png",
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
                              text: "Remaining Bill:",
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16),
                              children: <TextSpan>[],
                            ),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountRemainingBill(
                              (value) {}, "300", remainingbill),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                    child: RichText(
                      text: TextSpan(
                        text: "Pay for your",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' delivery fee ',
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          TextSpan(
                            text: 'upon item / parcel pick-up at your (the ',
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                          TextSpan(
                            text: 'Sender',
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          TextSpan(
                            text: ') place.',
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        ],
                      ),
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
                              text: "How much will you pay through C.O.P.?",
                              style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        enterAmountPaythrough(
                            (value) {}, "250", 25.0.w, prepay),
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
                                  fontSize: 12),
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
                            (value) {}, "300", 25.0.w, pettyCash),
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
                              text: "Your change:",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        IgnorePointer(
                          ignoring: true,
                          child: enterAmountAllPaymentMethod(
                              (value) {}, "0", 25.0.w, change),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: customButton(() {}, "Confirm", 5, double.infinity,
                        Pallete.kpBlue, Pallete.kpBlue),
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
