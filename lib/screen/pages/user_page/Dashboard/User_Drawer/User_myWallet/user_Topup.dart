import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserTopUpWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Container(
      height: 100.0.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Amount",
                style: CustomTextStyle.textStyleGrey18,
              ),
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
                        (value) {}, "0.00", userProvider.ammount, () {
                      userProvider.phpOntap();
                    }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCardAmmount(
                        () {
                          userProvider.php50();
                        },
                        "50",
                        userProvider.btnphp50
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp50
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp50
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                      customCardAmmount(
                        () {
                          userProvider.php100();
                        },
                        "100",
                        userProvider.btnphp100
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp100
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp100
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                      customCardAmmount(
                        () {
                          userProvider.php300();
                        },
                        "300",
                        userProvider.btnphp300
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp300
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp300
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCardAmmount(
                        () {
                          userProvider.php500();
                        },
                        "500",
                        userProvider.btnphp500
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp500
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp500
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                      customCardAmmount(
                        () {
                          userProvider.php1000();
                        },
                        "1000",
                        userProvider.btnphp1000
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp1000
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp1000
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                      customCardAmmount(
                        () {
                          userProvider.php5000();
                        },
                        "5000",
                        userProvider.btnphp5000
                            ? Pallete.kpWhite
                            : Pallete.kpBlack,
                        userProvider.btnphp5000
                            ? CustomTextStyle.textStyleWhitebold16
                            : CustomTextStyle.textStyleBluebold16,
                        userProvider.btnphp5000
                            ? Pallete.kpBlue
                            : Pallete.kpWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: customCardTopUpPayment("Payment", " GCash", () {}),
            ),
            customButton2(() {}, "Top up", 5, double.infinity, 60,
                Pallete.kpBlue, Pallete.kpBlue)
          ],
        ),
      ),
    );
  }
}
