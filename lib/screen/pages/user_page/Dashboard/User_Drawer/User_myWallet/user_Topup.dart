import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserTopUpWallet extends StatelessWidget {
  String ammount;
  TextEditingController finalAmmount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: Container(
        height: 100.0.h,
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: 12,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: Text(
                  "Available Balance",
                  style: CustomTextStyle.textStyleGrey18,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: customListTextPesoIcon("0.00"),
              ),
              customCardTopUp(
                Column(
                  children: [
                    Text(
                      "Ammount",
                      style: CustomTextStyle.textStyleGrey18,
                    ),
                    Container(
                      width: 40.0.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PHP",
                            style: CustomTextStyle.textStyleGrey18,
                          ),
                          Container(
                            width: 30.0.w,
                            child: customTextFieldAmmount(
                              (value) {},
                              "0.00",
                              finalAmmount,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              customCardAmmount(() {}, "50"),
                              customCardAmmount(() {}, "100"),
                              customCardAmmount(() {}, "300"),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              customCardAmmount(() {}, "500"),
                              customCardAmmount(() {}, "1000"),
                              customCardAmmount(() {}, "5000"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: customButton2(() {}, "Top up", 5, double.infinity, 55,
                    Pallete.kpBlue, Pallete.kpBlue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
