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

class SellerPahatidCODWithEremitPaymentOnly extends StatefulWidget {
  @override
  _SellerPahatidCODWithEremitPaymentOnly createState() =>
      _SellerPahatidCODWithEremitPaymentOnly();
}

class _SellerPahatidCODWithEremitPaymentOnly
    extends State<SellerPahatidCODWithEremitPaymentOnly> {
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
            title: Text("Cash on Delivery\n with e-Remit",
                style: CustomTextStyle.textStyleBlue16,
                textAlign: TextAlign.center),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 70,
                  height: 70,
                  child: Image.asset(
                    "assets/payment_icons/cod_eremit.png",
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
                            text: " Total Collectible",
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
                            text: "₱1,000.",
                            style: TextStyle(
                                color: Pallete.kpBlue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                    child: RichText(
                      text: TextSpan(
                        text: "We will collect all payments from your ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'recipients / buyer',
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          TextSpan(
                            text:
                                ' and will go to 7-eleven / Ministop, etc. to e-remit the proceeds to your GCash / PayMaya account, less delivery fee.',
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
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "How much is the",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Total Amount ',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                TextSpan(
                                  text: 'we need to collect for you?',
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
                            (value) {}, "0.00", 25.0.w, prepay),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "Your e-Remit / delivery fee",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
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
                      children: [
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 55.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "You will receive:",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
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
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "GCASH Account number:",
                                  style: CustomTextStyle.textStyleBlack14,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 40.0.w,
                                    child: gcashAccountNumberField(
                                      (value) {},
                                      userProvider.userPhoneValidation,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "GCASH Account name:",
                                  style: CustomTextStyle.textStyleBlack14,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 40.0.w,
                                    child: gcashAccountNumberField(
                                      (value) {},
                                      userProvider.userPhoneValidation,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 95.0.w),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text:
                              'By clicking the "Confirm" button, I affirm that I will',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' not  ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: 'hold',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: ' \nKarwaheng Pinoy ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: 'and/or the',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text: ' Partner Rider ',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            TextSpan(
                              text:
                                  'liable for any loss of money due to an inaccurate deposit account number / name entry.',
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
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
