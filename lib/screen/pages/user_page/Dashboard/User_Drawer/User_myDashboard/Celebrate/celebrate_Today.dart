import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';

class UserCelebrateToday extends StatefulWidget {
  @override
  _UserCelebrateTodayState createState() => _UserCelebrateTodayState();
}

class _UserCelebrateTodayState extends State<UserCelebrateToday> {
  final items = List<String>.generate(100, (i) => "$i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: CustomPadding.padding8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCard(
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "What I’ve earned today",
                            style: CustomTextStyle.textStyleGrey16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: listTextPesoIconToday("1000"),
                        ),
                        Divider(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Bill",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("1000"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Cost",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("500"),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Fee",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                              listTextPesoIconToday16("500"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return expansionTileCelebrateToday(
                      context,
                      "KP12345",
                      "88",
                      "Rebates Received",
                      "10:40am",
                      "N/A",
                      "190",
                      "100",
                      "150",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
