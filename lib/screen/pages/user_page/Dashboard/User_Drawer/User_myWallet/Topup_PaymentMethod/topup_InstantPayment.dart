import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/Topup_PaymentMethod/topup_viaPayMayaMethod.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'topup_viaGCashMethod.dart';

class TopupInstantPayment extends StatelessWidget {
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
            "Instant",
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
                child: customCardGCASHpayment("GCash", "GCash account ", () {
                  pageRoute(context, TopupGCashMethod());
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: customCardPaymMayaPayment("PayMaya", "PayMaya account ",
                    () {
                  pageRoute(context, TopupPayMayMethod());
                }),
              ),
            ],
          ),
        ));
  }
}
