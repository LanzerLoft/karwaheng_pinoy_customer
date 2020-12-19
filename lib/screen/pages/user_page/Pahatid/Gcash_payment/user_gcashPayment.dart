import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/Gcash_payment/user_gcashConfirmation.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:slider_button/slider_button.dart';

class UserGcashPayment extends StatefulWidget {
  @override
  _UserGcashPaymentState createState() => _UserGcashPaymentState();
}

class _UserGcashPaymentState extends State<UserGcashPayment> {
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
          "Gcash Payment",
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
              customCard(
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customListTextField("Item(s) Price:", (value) {}),
                    customListTextFieldIcon("Address 1", (value) {}),
                    customListTextFieldIcon("Address 2", (value) {}),
                    customListTextFieldIconBlue(
                        "Promo code/Rebates", (value) {}),
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
                    Text(
                        "Status \n (Amount will be debited from your GCASH Balance)"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: customChecboxConfirm((value) {}, true,
                    "I confirm that my order are not prohibited by law and does not weigh more than 25kg. See Our Delivery Exceptions."),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  "Do you wish to proceed?",
                  style: CustomTextStyle.textStyleGrey20,
                ),
              ),
              sliderButton(() {
                pageRoute(context, UserGcashConfirmation());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
