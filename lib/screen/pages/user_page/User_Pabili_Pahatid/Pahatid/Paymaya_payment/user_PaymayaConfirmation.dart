import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';

import 'package:responsive_builder/responsive_builder.dart';
import 'package:slider_button/slider_button.dart';

class UserPaymayaConfirmation extends StatefulWidget {
  @override
  _UserPaymayaConfirmationState createState() =>
      _UserPaymayaConfirmationState();
}

class _UserPaymayaConfirmationState extends State<UserPaymayaConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "PayMaya Payment",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
      // floatingActionButton: sliderButton(() {
      //   pageRoute(context, UserPaymayaConfirmation());
      // }),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "KP RIDER'S PAYMAYA INFORMATION",
                  style: CustomTextStyle.textblue16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customListText("Account Name", "JUAN DELA CRUZ"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customListText("Account Number", "09171234567"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: customButton(
                    () {},
                    "Copy KP Rider's PayMaya Account Number",
                    5,
                    double.infinity,
                    Pallete.kpGrey,
                    Pallete.kpGrey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 50,
                ),
                child: customListText2("Please Pay", "P 300.00"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: customListTextFieldColumn(
                    "Enter your PayMaya Account No.",
                    (value) {},
                    "09123456789"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Reminder:\nTake a screentshot and upload your PayMaya payment receipt as proof payment",
                  style: CustomTextStyle.textStyleGrey13,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: 'Go to',
                    style: CustomTextStyle.textStyleGrey13,
                    children: <TextSpan>[
                      TextSpan(
                        text: ' PayMaya Website',
                        style: CustomTextStyle.textStyleBlue12,
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customButton(
                      () {},
                      "Copy KP Rider's PayMaya Account Number",
                      5,
                      double.infinity,
                      Pallete.kpGrey,
                      Pallete.kpGrey,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "IMG-123455 - 2MB",
                      style: CustomTextStyle.textStyleGrey13,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: customButton2(() {}, "Call KP Rider", 5, 150, 40,
                        Pallete.kpBlue, Pallete.kpBlue),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: customButton2(() {}, "Chat with KP Rider", 5, 150,
                        40, Pallete.kpGrey, Pallete.kpGrey),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customButton2(() {}, "Message KP Admin", 5, 150, 40,
                      Pallete.kpYellow, Pallete.kpYellow),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: sliderButton(() {
                  pageRoute(context, UserPahatidResponsive());
                }),
              ),
              // SizedBox(
              //   height: 60,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
