import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserFAQs extends StatefulWidget {
  @override
  _UserFAQsState createState() => _UserFAQsState();
}

class _UserFAQsState extends State<UserFAQs> {
  String selected;
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
        ),
        backgroundColor: Pallete.kpWhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text("FAQS",
                      style: TextStyle(
                          fontSize: 40,
                          color: Pallete.kpBlue,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  "Frequently Asked Questions (FAQs)",
                  style: CustomTextStyle.textStyleBluebold18,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text("Where does Karwaheng Pinoy deliver?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              "Karwaheng Pinoy delivers within Metro Manila.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text("What are your operating hours?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              "Karwaheng Pinoy operates from 7AM to 10PM daily.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text("Can I track my parcel?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              "You and your parcel’s recipient can track your booking real-time on the website or through our app. We will also upload a photo of the proof of delivery on your app.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text("Can I cancel a booking?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              "Yes. Cancellation is free of charge if done before our rider arrives at the pick-up location. We will collect the 40% of total delivery fee, however, if the booking is cancelled upon arrival of our Partner Rider at pick-up location, and 100% of the delivery fee if cancelled upon arrival at drop-off location.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text("Can I cancel a booking?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              "Yes. Cancellation is free of charge if done before our rider arrives at the pick-up location. We will collect the 40% of total delivery fee, however, if the booking is cancelled upon arrival of our Partner Rider at pick-up location, and 100% of the delivery fee if cancelled upon arrival at drop-off location.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customListTileFAQS(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        initiallyExpanded: true,
                        title: Text(
                            "What if my parcel is lost or damaged during delivery?",
                            style: CustomTextStyle.textStyleBluebold18),
                        children: [
                          Padding(
                            padding: CustomPadding.padding16,
                            child: Text(
                              " Our Partner Riders are trained to handle your parcel with care. If proven lost or damaged while in transit, please Contact Us within 48 hours and we may indemnify your parcel up to ₱3,000.",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }
}
