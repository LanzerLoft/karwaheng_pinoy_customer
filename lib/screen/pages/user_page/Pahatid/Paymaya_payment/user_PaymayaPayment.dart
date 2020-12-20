import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/Gcash_payment/user_gcashConfirmation.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/Paymaya_payment/user_PaymayaConfirmation.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UserPaymayaPayment extends StatefulWidget {
  @override
  _UserPaymayaPaymentState createState() => _UserPaymayaPaymentState();
}

class _UserPaymayaPaymentState extends State<UserPaymayaPayment> {
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
          "Paymaya Payment",
          style: CustomTextStyle.textStyleWhite18,
        ),
      ),
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
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 10),
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
                    "* Upon PayMaya payment confirmation, your partner Rider will proceed with the purchase and deliver the item(s) to you."),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customListTextField("Item(s) Price:", (value) {}),
                      customListTextFieldIcon("Address 1", (value) {}),
                      customListTextFieldIcon("Address 2", (value) {}),
                      customListTextFieldIconBlue(
                          "Promo code/Rebates", (value) {}, (value) {}),
                      customListTextFieldIcon("Gratuity (Tip)", (value) {}),
                      customListTextFieldIcon("Pabili Service Fee", (value) {}),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total Order Amount"),
                            Text(
                              "P 300.00",
                              style: TextStyle(fontSize: 25),
                            ),
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
                                text: ' PayMaya ',
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
                padding: EdgeInsets.only(top: 20),
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
              customButton(() {
                pageRoute(
                  context,
                  UserPaymayaConfirmation(),
                );
              }, "Confirm", 5, double.infinity, Pallete.kpRed, Pallete.kpRed)
            ],
          ),
        ),
      ),
    );
  }
}
