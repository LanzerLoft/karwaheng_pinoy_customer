import 'dart:ui';

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
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class SellerPahatidGCASHPayment extends StatefulWidget {
  @override
  _SellerPahatidGCASHPayment createState() => _SellerPahatidGCASHPayment();
}

class _SellerPahatidGCASHPayment extends State<SellerPahatidGCASHPayment> {
  String selected;
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
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 0),
            child: Text("GCash",
                style: TextStyle(
                    fontSize: 40,
                    color: Pallete.kpBlue,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        bottomNavigationBar: SafeArea(
            maintainBottomViewPadding: true,
            child: userProvider.gCashPabiliPayment == false
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customButton(() {
                      pageRouteBack(context);
                      userProvider.selectedGCashPabiliPayment();
                    }, "Confirm", 5, double.infinity, Pallete.kpBlue,
                        Pallete.kpBlue),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customButton(() {
                      pageRouteBack(context);
                      userProvider.selectedGCashPabiliPayment();
                    }, "Cancel", 5, double.infinity, Pallete.kpBlue,
                        Pallete.kpBlue),
                  )),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(vertical: 0),
                //     child: Text("GCash",
                //         style: TextStyle(
                //             fontSize: 40,
                //             color: Pallete.kpBlue,
                //             fontWeight: FontWeight.bold)),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Pallete.kpBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Please Read",
                        style: TextStyle(color: Pallete.kpWhite),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                      "* Your partner Rider will go to your desired merchant(s) and inform you of the item(s) availability and price."),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                      "* If your order is not available,your KP Rider partner will offer alternatives."),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                      "* Upon GCASH payment confirmation, your partner Rider will proceed with the purchase and deliver the item(s) to you."),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 15),
                  child: customCard(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: customListTextGreyGcash("Address:",
                              "Office of the President of the Philippines"),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Order Amount",
                                style: CustomTextStyle.textStyleGrey15,
                              ),
                              listTextPesoIconTransfer("1000"),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                              text:
                                  'Status: \n (Amount will be debited from your',
                              style: CustomTextStyle.textStyleGrey10,
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' GCASH ',
                                  style: CustomTextStyle.textStyleBlue10,
                                ),
                                TextSpan(
                                  text: 'Balance)',
                                  style: CustomTextStyle.textStyleGrey10,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: customChecboxConfirm(
                    (value) {},
                    true,
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text:
                              'I confirm that my order are not prohibited by law and does not weigh more than 20kg. See Our',
                          style: CustomTextStyle.textStyleGrey10,
                          children: <TextSpan>[
                            TextSpan(
                              text: ' Delivery Exceptions.',
                              style: CustomTextStyle.textStyleBlue10,
                            ),
                          ]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Do you wish to proceed?",
                    style: CustomTextStyle.textStyleGrey20,
                  ),
                ),
                // sliderButton(() {
                //   pageRoute(context, UserGcashConfirmation());
                // }),
              ],
            ),
          ),
        ));
  }
}
