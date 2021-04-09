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

import '../user_Pabili.dart';

class UserPabiliCODPayment extends StatefulWidget {
  @override
  _UserPabiliCODPayment createState() => _UserPabiliCODPayment();
}

class _UserPabiliCODPayment extends State<UserPabiliCODPayment> {
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
            centerTitle: true,
            title: Text("Cash on Delivery with Abono \n Up to ₱2,000",
                style: CustomTextStyle.textStyleBlue16,
                textAlign: TextAlign.center),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset(
                    "assets/payment_icons/cod_abono.png",
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Pallete.kpWhite,
          // bottomNavigationBar: SafeArea(
          //   maintainBottomViewPadding: true,
          //   child: userProvider.confirmGcashOrder == true
          //       ? userProvider.gCashPabiliPayment == false
          //           ? Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: customButton(
          //                   () => showGeneralDialog(
          //                         barrierDismissible: false,
          //                         context: context,
          //                         barrierColor:
          //                             Colors.black54, // space around dialog
          //                         transitionDuration:
          //                             Duration(milliseconds: 800),
          //                         transitionBuilder: (context, a1, a2, child) {
          //                           return ScaleTransition(
          //                             scale: CurvedAnimation(
          //                                 parent: a1,
          //                                 curve: Curves.elasticOut,
          //                                 reverseCurve: Curves.easeOutCubic),
          //                             child: PabiliPaymentSuccessful(
          //                               title: "Payment Successful",
          //                               content:
          //                                   "You Paid ${gcash.text.toString()} Via Gcash",
          //                               btnText: "OK",
          //                               onPressed: () {
          //                                 pageRoute(
          //                                     context,
          //                                     UserPabiliResponsive(
          //                                       gcashPaidAmount:
          //                                           gcash.text.toString(),
          //                                     ));
          //                                 userProvider
          //                                     .selectedGCashPabiliPayment();
          //                               },
          //                             ),
          //                           );
          //                         },
          //                         pageBuilder: (BuildContext context,
          //                             Animation animation,
          //                             Animation secondaryAnimation) {
          //                           return null;
          //                         },
          //                       ),
          //                   "Confirm",
          //                   5,
          //                   double.infinity,
          //                   Pallete.kpBlue,
          //                   Pallete.kpBlue),
          //             )
          //           : Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: customButton(() {
          //                 pageRoute(
          //                     context,
          //                     UserPabiliResponsive(
          //                       gcashPaidAmount: "",
          //                     ));
          //                 userProvider.selectedGCashPabiliPayment();
          //               }, "Cancel", 5, double.infinity, Pallete.kpRed,
          //                   Pallete.kpRed),
          //             )
          //       : Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: IgnorePointer(
          //             child: customButton(() {}, "Confirm", 5, double.infinity,
          //                 Pallete.kpGrey, Pallete.kpGrey),
          //           ),
          //         ),
          // ),
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
                  CodwithOtherPaymentmethod(),
                ],
              ),
            ),
          )),
    );
  }
}

class CodPaymentOnly extends StatelessWidget {
  const CodPaymentOnly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController prepay = TextEditingController();
    TextEditingController pettyCash = TextEditingController();
    TextEditingController change = TextEditingController();
    TextEditingController remainingbill = TextEditingController();
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
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
                child: Text(
                  "Pay for your delivery right at your doorstep. Our Partner Rider will prepay (abono) your Pabili item(s) first.",
                  style: CustomTextStyle.textStyleBlack14,
                ),
              ),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
                child: Text(
                  "You'll just have to reimburse our rider upon delivery.",
                  style: CustomTextStyle.textStyleBlack14,
                ),
              ),
            ],
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
                child: Text(
                  "How much do we need to prepay (make abono) for you?",
                  style: CustomTextStyle.textStyleBlue14,
                ),
              ),
              enterAmountAllPaymentMethod((value) {}, "0.00", 25.0.w, prepay),
            ],
          ),
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
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
                        text: '(Pay through other Payment Methods.)',
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
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: customButton(() {}, "Confirm", 5, double.infinity,
              Pallete.kpBlue, Pallete.kpBlue),
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

class CodwithOtherPaymentmethod extends StatelessWidget {
  const CodwithOtherPaymentmethod({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController prepay = TextEditingController();
    TextEditingController pettyCash = TextEditingController();
    TextEditingController change = TextEditingController();
    TextEditingController remainingbill = TextEditingController();
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
            _otherMethodsGCashPayment("200"),
            _otherMethodsPaymayaPayment("200"),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
              enterAmountAllPaymentMethod(
                  (value) {}, "0.00", 25.0.w, remainingbill),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
                child: Text(
                  "Pay for your delivery right at your doorstep. Our Partner Rider will prepay (abono) your Pabili item(s) first.",
                  style: CustomTextStyle.textStyleBlack14,
                ),
              ),
              Container(
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
                child: Text(
                  "How much do we need to prepay (make abono) for you?",
                  style: CustomTextStyle.textStyleBlue14,
                ),
              ),
              enterAmountAllPaymentMethod((value) {}, "0.00", 25.0.w, prepay),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
                constraints:
                    BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
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
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: customButton(() {}, "Confirm", 5, double.infinity,
              Pallete.kpBlue, Pallete.kpBlue),
        ),
      ],
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
