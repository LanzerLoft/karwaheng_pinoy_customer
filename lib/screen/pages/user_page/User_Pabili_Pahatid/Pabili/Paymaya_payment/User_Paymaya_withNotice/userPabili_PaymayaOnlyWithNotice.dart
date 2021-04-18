import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserPabiliPaymayaOnlyWithNotice extends StatefulWidget {
  @override
  _UserPabiliPaymayaOnlyWithNotice createState() =>
      _UserPabiliPaymayaOnlyWithNotice();
}

class _UserPabiliPaymayaOnlyWithNotice
    extends State<UserPabiliPaymayaOnlyWithNotice> {
  TextEditingController gcash = TextEditingController();
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
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
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  style: CustomTextStyle.textStylePaymaya,
                ),
              ],
            ),
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
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            constraints: BoxConstraints(
                                maxHeight: 40.0.h, maxWidth: 85.0.w),
                            child: RichText(
                              text: TextSpan(
                                text: "Pay Cashless through ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 15),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'PayMaya.',
                                    style: TextStyle(
                                        color: Pallete.kpBlue,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 90.0.w),
                          child: Text(
                            "Transfer PayMaya money to our Partner Rider's PayMaya account to pay for your delivery fee / Pabili amount within the visibility of our app, free of charge.",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "How much will you pay?",
                        style: CustomTextStyle.textStyleGrey18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "PHP ",
                          style: CustomTextStyle.textStyleGrey18,
                        ),
                        Container(
                          width: 30.0.w,
                          child: customTextFieldAmmount(
                              (value) {},
                              userProvider.minimun,
                              "0.00",
                              userProvider.ammount, () {
                            userProvider.phpOntap();
                          }),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: customButton3(() {}, "Use Default", 5, 30,
                          Pallete.kpBlue, Pallete.kpBlue),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "PayMaya account number:",
                              style: CustomTextStyle.textStyleBlack14,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Container(
                                width: 35.0.w,
                                child: gcashAccountNumberField(
                                  (value) {},
                                  userProvider.userPhoneValidation,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "Name on PayMaya:",
                                style: CustomTextStyle.textStyleBlack14,
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Container(
                                    width: 35.0.w,
                                    child: gcashAccountNameField(
                                      (value) {},
                                      userProvider.userPhoneValidation,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                        value: userProvider.makeDefaultGcash,
                                        onChanged: (value) {
                                          userProvider
                                              .makeDefaultGcashAccount();
                                        }),
                                    Text(
                                      "Make default",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: RichText(
                            text: TextSpan(
                              text: "1. Your payment request is",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' pending ',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text:
                                      "until a Partner Rider is assigned to your booking/order. Once assigned, you will be prompted with our rider's",
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text: ' PayMaya account number',
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                TextSpan(
                                  text:
                                      " which you can use to send your payment to.",
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
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  "2. Your Total Bill is ₱2,000. You will be asked to send 30% of Pabili Service fee in advance as a security deposit (",
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
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 95.0.w),
                          child: Text(
                            "3. Your Wallet History will be stamped as your payment progresses:",
                            style: CustomTextStyle.textStyleBlack14,
                          ),
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            constraints: BoxConstraints(
                                maxHeight: 40.0.h, maxWidth: 90.0.w),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                "Payment of ₱1,000 from 09171234567 to 09177654321 Successful.",
                                style: CustomTextStyle.textStyleBlack12,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
                        enterAmountAllPaymentMethod(
                            (value) {}, "0.00", 25.0.w, remainingbill),
                      ],
                    ),
                  ),
                  SafeArea(
                    maintainBottomViewPadding: true,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: customButtonYT(() {}, "Submit Payment Request", 5,
                          double.infinity, Pallete.kpBlue, Pallete.kpBlue),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
