import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:slider_button/slider_button.dart';

class UserGcashConfirmation extends StatefulWidget {
  @override
  _UserGcashConfirmationState createState() => _UserGcashConfirmationState();
}

class _UserGcashConfirmationState extends State<UserGcashConfirmation> {
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
