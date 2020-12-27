import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget userDelivered(BuildContext context) {
  return customCardToUp(
    50.0.h,
    ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        DataTable(
          headingRowHeight: 35,
          horizontalMargin: 5,
          dataRowHeight: 70,
          columnSpacing: 45,
          columns: [
            DataColumn(
                label: Center(
                    child: Text('Booking ID',
                        style: CustomTextStyle.textStyleBlue12))),
            DataColumn(
                label: Text('Date & Time of Delivery',
                    style: CustomTextStyle.textStyleBlue12)),
            DataColumn(
                label: Text(
              'Action',
              style: CustomTextStyle.textStyleBlue12,
            )),
          ],
          rows: [
            DataRow(
              cells: [
                DataCell(Text('KPDELIVERED')),
                DataCell(Text(
                  '08 July 2020, 5:30 PM',
                )),
                DataCell(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Delete',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          pageRoute(context, DeliveryBooking());
                        },
                        child: Text(
                          'View',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Pallete.kpBlue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

class DeliveryBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCalculateProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpWhite,
          ),
          backgroundColor: Pallete.kpBlue,
          elevation: 0,
          centerTitle: true,
          title: customRichTextAppbar("08 Jul 2020,", " 5:30PM"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customListTextBlack("Booking ID:", "KPDELIVERED"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: customListTextImage("Juan dela cruz"),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Pallete.kpBlue,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customRichTextWhite("Final Delivery Fee:  ", "P152"),
                        customRichTextWhite("Payment Method:  ", "GCASH"),
                      ],
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TimelineTile(
                        alignment: TimelineAlign.start,
                        afterLineStyle:
                            LineStyle(color: Pallete.kpGrey, thickness: 2),
                        lineXY: 0.06,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: Pallete.kpBlue,
                          iconStyle: IconStyle(
                            fontSize: 20,
                            color: Pallete.kpBlue,
                            iconData: Icons.circle,
                          ),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 25),
                          child: Text(
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                            style: CustomTextStyle.textStyleBlack18,
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.start,
                        beforeLineStyle:
                            LineStyle(color: Pallete.kpGrey, thickness: 2),
                        lineXY: 0.06,
                        isLast: true,
                        indicatorStyle: IndicatorStyle(
                          width: 20,
                          color: Colors.white,
                          iconStyle: IconStyle(
                            fontSize: 25,
                            color: Pallete.kpRed,
                            iconData: Icons.location_on,
                          ),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            " 1004 Metro Manila 1004 Metro Manila 1004 Metro Manila 1004 Metro Manila",
                            style: CustomTextStyle.textStyleBlack18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                customCard(
                  Container(
                    width: 80.0.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customRichText(
                            "Start of Delivery:  ", "08 july 2020, 5:30pm,"),
                        customRichText("Delivered:  ", "08 july 2020, 8:30pm"),
                        customRichText("Durations:  ", "55mins"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            customRichText("Recipment:  ", "Maria Clara"),
                            customRichTextProof(
                                "Proof of Delivery:  ", "View", context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Text(
                          "Please Rate This booking",
                          style: CustomTextStyle.textStyleBlack18,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: RatingBar.builder(
                          itemSize: 30,
                          glow: false,
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "What can we do better?",
                  style: CustomTextStyle.textStyleBlack18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 5.0,
                    children: [
                      InputChip(
                        label: Text("Delivery Time"),
                        selected: userCalculateProvider.deliverySelected,
                        selectedColor: Pallete.kpYellow,
                        onSelected: (status) {
                          userCalculateProvider.selectedDeliveryTime();
                        },
                      ),
                      InputChip(
                        label: Text("Professionalism"),
                        selected: userCalculateProvider.professionalismSelected,
                        selectedColor: Pallete.kpYellow,
                        onSelected: (status) {
                          userCalculateProvider.selectedProfessionalism();
                        },
                      ),
                      InputChip(
                        label: Text("Hygiene"),
                        selected: userCalculateProvider.hygieneSelected,
                        selectedColor: Pallete.kpYellow,
                        onSelected: (status) {
                          userCalculateProvider.selectedhygiene();
                        },
                      ),
                      InputChip(
                        label: Text("Communication"),
                        selected: userCalculateProvider.communicationSelected,
                        selectedColor: Pallete.kpYellow,
                        onSelected: (status) {
                          userCalculateProvider.selectedCommunication();
                        },
                      ),
                    ],
                  ),
                ),
                Text(
                  "Tell us how we can improve",
                  style: CustomTextStyle.textStyleBlack18,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customTextField((value) {}, ""),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          child: customButton2(() {}, "Take Order Now", 20, 150,
                              40, Pallete.kpRed, Pallete.kpRed),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 5.0,
                    children: [
                      InputChip(
                        isEnabled:
                            userCalculateProvider.preferredSelected == true
                                ? false
                                : true,
                        label: Text(
                          "Add to Unwanted Riders",
                          style: CustomTextStyle.textStyleBlack12,
                        ),
                        selected: userCalculateProvider.unwantedSelected,
                        selectedColor: Pallete.kpRed,
                        onSelected: (status) {
                          userCalculateProvider.selecteUnwanted();
                        },
                      ),
                      InputChip(
                        isEnabled:
                            userCalculateProvider.unwantedSelected == true
                                ? false
                                : true,
                        label: Text(
                          "Add to preferred partner riders",
                          style: CustomTextStyle.textStyleBlack12,
                        ),
                        selected: userCalculateProvider.preferredSelected,
                        selectedColor: Pallete.kpYellow,
                        onSelected: (status) {
                          userCalculateProvider.selectedPreferred();
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
