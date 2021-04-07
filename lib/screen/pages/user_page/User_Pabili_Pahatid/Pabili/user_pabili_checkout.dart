import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_termsOfuse.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_prohibitedItems.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:numberpicker/numberpicker.dart';

class UserPabiliCheckout extends StatefulWidget {
  @override
  _UserPabiliCheckout createState() => _UserPabiliCheckout();
}

class _UserPabiliCheckout extends State<UserPabiliCheckout> {
  int _currentIntValue = 0;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Check Out",
            style: CustomTextStyle.textStyleBlue20,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Pallete.kpBlue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("3|3",
                        style: TextStyle(fontSize: 16, color: Pallete.kpWhite)),
                  ),
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
                mobile: 16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.check,
                      color: Pallete.kpYellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        constraints:
                            BoxConstraints(maxHeight: 30.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text:
                                "Partner Rider will go to your desired merchant(s) and inform you of your orders availability and price.",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.check,
                        color: Pallete.kpYellow,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          constraints: BoxConstraints(
                              maxHeight: 30.0.h, maxWidth: 80.0.w),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  "If your order is not available, our Partner Rider will try to offer an alternative, if any.",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                              children: <TextSpan>[],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 10, left: 5),
                  child: Text(
                    "Payment Method(s):",
                    style: CustomTextStyle.textStyleBlack16,
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: checkOutCODAbonoPaymentPabili("200.00"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: checkOutGCashPaymentPabili("900.00"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SafeArea(
                    bottom: true,
                    maintainBottomViewPadding: true,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: checkOutTermsOfUse(context),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Container(
                            height: 50,
                            width: 100.0.w,
                            child: FlatButton(
                              onPressed: () => showGeneralDialog(
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
                                    child: PabiliBookingSuccessful(),
                                  );
                                },
                                pageBuilder: (BuildContext context,
                                    Animation animation,
                                    Animation secondaryAnimation) {
                                  return null;
                                },
                              ),
                              color: Pallete.kpRed,
                              child: Text(
                                "Place Order",
                                style: CustomTextStyle.textStyleWhitebold16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

Widget checkOutCODAbonoPaymentPabili(String codAbonoAmount) {
  return Row(
    children: [
      Container(
        width: 40,
        height: 40,
        child: Image.asset(
          "assets/payment_icons/cod_abono.png",
          filterQuality: FilterQuality.high,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          constraints: BoxConstraints(maxHeight: 200, maxWidth: 70.0.w),
          child: RichText(
            text: TextSpan(
              text: "Partner Rider will prepay (abono) ",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                  text: codAbonoAmount,
                  style: TextStyle(
                      color: Pallete.kpBlue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                TextSpan(
                  text:
                      " of your Total Bill. Reimburse the full amount upon order delivey.",
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
    ],
  );
}

Widget checkOutGCashPaymentPabili(String codAbonoAmount) {
  return Row(
    children: [
      Container(
        width: 40,
        height: 40,
        child: Image.asset(
          "assets/payment_icons/gcash_logo.png",
          filterQuality: FilterQuality.high,
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          constraints: BoxConstraints(maxHeight: 200, maxWidth: 70.0.w),
          child: RichText(
            text: TextSpan(
              text:
                  "Our Partner Rider's Gcash account number will be shown once Rider is assigned. ",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                  text: "Send ",
                  style: TextStyle(
                      color: Pallete.kpBlack,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                TextSpan(
                  text: codAbonoAmount,
                  style: TextStyle(
                      color: Pallete.kpBlue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                TextSpan(
                  text: " to his Gcash account.",
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
    ],
  );
}

Widget checkOutTermsOfUse(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Container(
      constraints: BoxConstraints(maxHeight: 200, maxWidth: 100.0.w),
      child: RichText(
        text: TextSpan(
          text: "By placing this order, you",
          style: TextStyle(
              color: Pallete.kpBlack,
              fontWeight: FontWeight.normal,
              fontSize: 14),
          children: <TextSpan>[
            TextSpan(
              text: " Agree ",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            TextSpan(
              text: "to all our ",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  pageRoute(context, UserTermsOfUse());
                },
              text: "Terms of Use.",
              style: TextStyle(
                  color: Pallete.kpBlue,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    ),
  );
}
