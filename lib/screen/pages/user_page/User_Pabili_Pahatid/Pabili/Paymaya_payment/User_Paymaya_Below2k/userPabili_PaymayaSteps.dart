import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserPabiliPaymayaSteps extends StatefulWidget {
  @override
  _UserPabiliPaymayaSteps createState() => _UserPabiliPaymayaSteps();
}

class _UserPabiliPaymayaSteps extends State<UserPabiliPaymayaSteps> {
  TextEditingController gcash = TextEditingController();
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    TextEditingController toPay = TextEditingController();
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "To pay through payMaya:",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      enterAmountAllPaymentMethod(
                          (value) {}, "250", 25.0.w, toPay),
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
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' 09171234567 ',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: '(',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: "Change",
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
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    constraints:
                        BoxConstraints(maxHeight: 40.0.h, maxWidth: 90.0.w),
                    child: RichText(
                      text: TextSpan(
                        text: "How to pay using ",
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'PayMaya:',
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
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 1.",
                          style: CustomTextStyle.textStyleBlackbold14),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "You'll need an",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' account ',
                                style: TextStyle(
                                    color: Pallete.kpBlue,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: 'with',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: ' balance ',
                                style: TextStyle(
                                    color: Pallete.kpBlue,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text:
                                    'Check and ensure there is enough balance in your PayMaya account to cover',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: ' Total Bill ',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: 'or desired amount.',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 2.",
                          style: CustomTextStyle.textStyleBlackbold14),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "Click",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    " Copy KP Rider's PayMaya Account Number ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: 'to the clipboard as shown on the',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: ' Assigned Partner Rider ',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text:
                                    'screen. Take note of the PayMaya account name.',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 3.",
                          style: CustomTextStyle.textStyleBlackbold14),
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
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Payment Initiated ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text:
                                    ' stamp in your Wallet History as part of payment tracking / proof of payment.',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 4.",
                          style: CustomTextStyle.textStyleBlackbold14),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "Click ",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: "Proceed to PayMaya app",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: '. Login to your PayMaya.',
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 5.",
                          style: CustomTextStyle.textStyleBlackbold14),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "Tap",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Send Money ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text:
                                    " from the list of icons on the upper left of the dashboard. Paste the Partner Rider's mobile/ PayMaya account number you copied in Step 2 on, Name, Mobile or Account Number.",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 6.",
                          style: CustomTextStyle.textStyleBlackbold14),
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
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Continue ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: "on the upper right",
                                style: TextStyle(
                                    color: Pallete.kpBlack, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 7.",
                          style: CustomTextStyle.textStyleBlackbold14),
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
                                fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 8.",
                          style: CustomTextStyle.textStyleBlackbold14),
                      Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "Seeing the in-app receipt means that your",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Send Money ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text:
                                    "was successful. You will receive a text confirmation once the transfer was successful. Save this screenshot to your phone by tapping the",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: " Save ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: "button on the upper right corner.",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 9.",
                          style: CustomTextStyle.textStyleBlackbold14),
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
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Upload Screenshot of Payment Receipt. ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Step 10.",
                          style: CustomTextStyle.textStyleBlackbold14),
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
                                fontSize: 12),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Payment Successful",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: ". All set",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12),
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
                            constraints: BoxConstraints(
                                maxHeight: 40.0.h, maxWidth: 90.0.w),
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
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 40.0.h, maxWidth: 55.0.w),
                      child: Text("Ready to pay?",
                          style: CustomTextStyle.textStyleBlue16),
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
                  child: customButtonGrey(
                      () {},
                      "Upload Screenshot of Payment Receipt",
                      5,
                      double.infinity,
                      Pallete.kpGrey,
                      Pallete.kpGrey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
