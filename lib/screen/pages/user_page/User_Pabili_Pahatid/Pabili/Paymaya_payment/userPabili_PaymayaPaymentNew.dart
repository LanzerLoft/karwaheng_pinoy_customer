import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
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

import '../user_Pabili.dart';

class UserPabiliPaymayaPaymentNew extends StatefulWidget {
  @override
  _UserPabiliPaymayaPaymentNew createState() => _UserPabiliPaymayaPaymentNew();
}

class _UserPabiliPaymayaPaymentNew extends State<UserPabiliPaymayaPaymentNew> {
  TextEditingController gcash = TextEditingController();
  String selected;
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
                children: <Widget>[
                  PabiliPaymayaOnly(),
                  // PabiliPaymayaOtherPaymentMethod(),
                  // PabiliPaymayaOnlySteps(),
                ],
              ),
            ),
          )),
    );
  }
}

class PabiliPaymayaOnly extends StatelessWidget {
  const PabiliPaymayaOnly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController remainingbill = TextEditingController();

    final userProvider = Provider.of<UserProvider>(context);
    return Column(
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
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
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
                child: customTextFieldAmmount((value) {}, userProvider.minimun,
                    "0.00", userProvider.ammount, () {
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
            child: customButton3(
                () {}, "Use Default", 5, 30, Pallete.kpBlue, Pallete.kpBlue),
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
                                userProvider.makeDefaultGcashAccount();
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notes:",
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: RichText(
                    text: TextSpan(
                      text: "Your payment request is",
                      style: TextStyle(
                          color: Pallete.kpBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' pending ',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              'until a Partner Rider is assigned to your booking/order.',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: RichText(
                    text: TextSpan(
                      text:
                          "Once assigned, you will be prompted with our rider's",
                      style: TextStyle(
                          color: Pallete.kpBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' PayMaya account number  ',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                          text: 'which you can use to send your payment to.',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
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
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: Text(
                    "Your Wallet History will be stamped as your payment progresses:",
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
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
    );
  }
}

//
////
///
//////
///
/////

class PabiliPaymayaOtherPaymentMethod extends StatelessWidget {
  const PabiliPaymayaOtherPaymentMethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController remainingbill = TextEditingController();

    final userProvider = Provider.of<UserProvider>(context);
    return Column(
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
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                child: Text(
                  "Transfer PayMaya money to our Partner Rider's PayMaya account to pay for your delivery fee / Pabili amount within the visibility of our app, free of charge.",
                  style: CustomTextStyle.textStyleBlack14,
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 2,
          color: Pallete.kpGrey,
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
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
            constraints: BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
            child: RichText(
              text: TextSpan(
                text: "To pay through other ",
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Payment Methods:',
                    style: TextStyle(
                        color: Pallete.kpBlue,
                        fontWeight: FontWeight.normal,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
        Column(
          children: [
            _otherMethodsCODPayment("200"),
          ],
        ),
        Divider(
          thickness: 2,
          color: Pallete.kpGrey,
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
                child: customTextFieldAmmount((value) {}, userProvider.minimun,
                    "0.00", userProvider.ammount, () {
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
            child: customButton3(
                () {}, "Use Default", 5, 30, Pallete.kpBlue, Pallete.kpBlue),
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
                                userProvider.makeDefaultGcashAccount();
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notes:",
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: RichText(
                    text: TextSpan(
                      text: "Your payment request is",
                      style: TextStyle(
                          color: Pallete.kpBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' pending ',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                          text:
                              'until a Partner Rider is assigned to your booking/order.',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  constraints:
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: RichText(
                    text: TextSpan(
                      text:
                          "Once assigned, you will be prompted with our rider's",
                      style: TextStyle(
                          color: Pallete.kpBlack,
                          fontWeight: FontWeight.normal,
                          fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' PayMaya account number  ',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                          text: 'which you can use to send your payment to.',
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 15),
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
                      BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                  child: Text(
                    "Your Wallet History will be stamped as your payment progresses:",
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
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
    );
  }
}

//
////
///
//////
///
/////

Widget _otherMethodsCODPayment(String gcashAmount) {
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
                "assets/payment_icons/cod_abono.png",
                filterQuality: FilterQuality.high,
              ),
            ),
            Text(
              " C.O.D with Abono",
              style: CustomTextStyle.textStyleBlack14,
            ),
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

//
/////
/////
//////
//////
/////
/////
/////
///
class PabiliPaymayaOnlySteps extends StatelessWidget {
  const PabiliPaymayaOnlySteps({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController remainingbill = TextEditingController();
    TextEditingController toPay = TextEditingController();
    final userProvider = Provider.of<UserProvider>(context);
    return Column(
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
                child: Text("To pay through PayMaya:",
                    style: CustomTextStyle.textStyleBlack14),
              ),
              enterAmountAllPaymentMethod((value) {}, "0.00", 25.0.w, toPay),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "From PayMaya:",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' 09171234567 ',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: '(',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        text: "Change",
                        style: TextStyle(
                            color: Pallete.kpBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: ').',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            constraints: BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
            child: RichText(
              text: TextSpan(
                text: "How to pay using ",
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                    text: 'PayMaya:',
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
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 1.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "You'll need an",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' account ',
                        style: TextStyle(
                            color: Pallete.kpBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: 'with',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: ' balance ',
                        style: TextStyle(
                            color: Pallete.kpBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text:
                            'Check and ensure there is enough balance in your PayMaya account to cover',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: ' Total Bill ',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: 'or desired amount.',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 2.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "Click",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Copy KP Rider's PayMaya Account Number ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: 'to the clipboard as shown on the',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: ' Assigned Partner Rider ',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: 'screen. Take note of the PayMaya account name.',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 3.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Type your PayMaya account number on the box provided. This will be used for the system generated",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Payment Initiated ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text:
                            ' stamp in your Wallet History as part of payment tracking / proof of payment.',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 4.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "Click ",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Proceed to PayMaya app",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: '. Login to your PayMaya.',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 5.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "Tap",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Send Money ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text:
                            " from the list of icons on the upper left of the dashboard. Paste the Partner Rider's mobile/ PayMaya account number you copied in Step 2 on, Name, Mobile or Account Number.",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 6.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Input the amount listed on the Total Bill and type a short, optional message. Tap",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Continue ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: "on the upper right",
                        style: TextStyle(color: Pallete.kpBlack, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 7.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Review the confirmation page to double check the Partner Rider's PayMaya name, mobile number, and amount.",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 8.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text: "Seeing the in-app receipt means that your",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Send Money ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text:
                            "was successful. You will receive a text confirmation once the transfer was successful. Save this screenshot to your phone by tapping the",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: " Save ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: "button on the upper right corner.",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 9.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Go back to the KP app and upload the image by clickin",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Upload Screenshot of Payment Receipt. ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Step 10.", style: CustomTextStyle.textStyleBlackbold14),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                child: RichText(
                  text: TextSpan(
                    text:
                        "Our Partner Rider will confirm payment receipt from his/her Rider app and your Wallet History will stamp ",
                    style: TextStyle(
                        color: Pallete.kpBlack,
                        fontWeight: FontWeight.normal,
                        fontSize: 15),
                    children: <TextSpan>[
                      TextSpan(
                        text: " Payment Successful",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      TextSpan(
                        text: ". All set",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: customCard(Container(
            width: 100.0.w,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                    child: Text(
                      "Partner Rider's PayMaya Information",
                      style: CustomTextStyle.textStyleBlackbold16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Account Name:",
                        style: CustomTextStyle.textStyleBlack16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 40.0.w),
                          child: Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleBlack16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        "Account Number:",
                        style: CustomTextStyle.textStyleBlack16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Container(
                          constraints: BoxConstraints(
                              maxHeight: 40.0.h, maxWidth: 40.0.w),
                          child: Text(
                            "09171234567",
                            style: CustomTextStyle.textStyleBlack16,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Container(
              constraints: BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
              child:
                  Text("Ready to pay?", style: CustomTextStyle.textStyleBlue16),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: customButtonGrey(
              () {},
              "Copy KP Rider's PayMaya Account Number",
              5,
              double.infinity,
              Pallete.kpGrey,
              Pallete.kpGrey),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: customButtonYT(() {}, "Go to PayMaya App Now", 5,
              double.infinity, Pallete.kpRed, Pallete.kpRed),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: customButtonGrey(() {}, "Upload Screenshot of Payment Receipt",
              5, double.infinity, Pallete.kpGrey, Pallete.kpGrey),
        ),
      ],
    );
  }
}
