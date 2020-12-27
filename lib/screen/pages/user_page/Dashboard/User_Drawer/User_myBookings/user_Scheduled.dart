import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget userSchedule(BuildContext context) {
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
            DataRow(cells: [
              DataCell(Text('KP23123')),
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
                        pageRoute(context, scheduledBooking(context));
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
            ]),
          ],
        ),
      ],
    ),
  );
}

Widget scheduledBooking(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpWhite,
        ),
        backgroundColor: Pallete.kpBlue,
        elevation: 0,
        centerTitle: true,
        title: customRichTextAppbar("Booking ID:  ", "KP12354"),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 25),
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
                    customCard(
                      Container(
                        width: 80.0.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customRichText("Date & Time of the delivery:  ",
                                "08 july 2020, 5:30pm,"),
                            customRichText(
                                "Item Description:  ", "Blue jansport Bag"),
                            customRichText("Notes to Rider:  ",
                                "Call me when you get here po"),
                            customRichText("Payment Method:  ", "GCASH"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: customRichTextColor(
                  "Delivery Fee",
                  "\nP172",
                  CustomTextStyle.textStyleBlue28,
                ),
              ),
              customButton2(() {}, "Save Changes", 20, 200, 40, Pallete.kpRed,
                  Pallete.kpRed)
            ],
          ),
        ),
      ));
}
