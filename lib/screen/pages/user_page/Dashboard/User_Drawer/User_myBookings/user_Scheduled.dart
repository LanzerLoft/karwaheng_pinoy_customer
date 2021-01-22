import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return customCardBooking(
          Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  child: customRichTextBookingCard(
                      "Date & Time of the delivery:  ",
                      "08 july 2020, 5:30pm,"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customRichTextBooking("Booking ID:", "\nKP12345"),
                    customListTextBookingPesoIcon("Delivery Fee:", "999"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customTimelineTile(
                    "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                    "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: customButton2(() {
                    pageRoute(
                        context,
                        UserScheduledViewPage(
                          pickUp:
                              "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          dropOff:
                              "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          dateTimeDelivery: "08 july 2020, 5:30pm,",
                          deliveryFee: "99999",
                          bookingID: "KP12345",
                          itemDescription: "Blue jansport bag",
                          notesToRider: "Lorem ipsum",
                          paymentMethod: "GCASH",
                          riderName: "Juan Dela Cruz",
                          employeeID: "KP24235",
                        ));
                  }, "View Schedule", 5, double.infinity, 40, Pallete.kpBlue,
                      Pallete.kpBlue),
                )
              ],
            ),
          ),
          Pallete.kpBlue,
        );
      },
      itemCount: 20,
    );
  }
}

class UserScheduledViewPage extends StatelessWidget {
  String pickUp;
  String dropOff;
  String dateTimeDelivery;
  String bookingID;
  String deliveryFee;
  String itemDescription;
  String notesToRider;
  String paymentMethod;
  String riderName;
  String employeeID;

  UserScheduledViewPage({
    Key key,
    @required this.pickUp,
    @required this.dropOff,
    @required this.dateTimeDelivery,
    @required this.bookingID,
    @required this.deliveryFee,
    @required this.itemDescription,
    @required this.notesToRider,
    @required this.paymentMethod,
    @required this.riderName,
    @required this.employeeID,
  }) : super(key: key);
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
          title: customRichTextAppbar("Booking ID:  ", bookingID),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 20, top: 10),
                        child: customRichTextBookingCard(
                            "Date & Time of the delivery:  ", dateTimeDelivery),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customRichTextBooking("Booking ID:", "\n$bookingID"),
                          customListTextBookingPesoIcon(
                              "Delivery Fee:", deliveryFee),
                        ],
                      ),
                      timelineTileEdit(
                        TextFormField(
                          controller: TextEditingController(
                            text: pickUp,
                          ),
                          onTap: () {},
                          style: TextStyle(color: Pallete.kpBlue),
                          onChanged: (value) {},
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          maxLines: 3,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Pallete.kpGreyOkpGreypacity2,
                                  width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Pallete.kpYellow, width: 1.0),
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: TextEditingController(
                            text: dropOff,
                          ),
                          onTap: () {},
                          style: TextStyle(color: Pallete.kpBlue),
                          onChanged: (value) {},
                          autofocus: false,
                          keyboardType: TextInputType.text,
                          maxLines: 3,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Pallete.kpGreyOkpGreypacity2,
                                  width: 1.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                  color: Pallete.kpYellow, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customListTextBooking(
                              "Item Description:  ", itemDescription),
                          customListTextBooking(
                              "Notes to Rider:  ", notesToRider),
                          customListTextBooking(
                              "Payment Method:  ", paymentMethod),
                          customListTextBooking("Name of rider:  ", riderName),
                          customListTextBooking(
                              "Employee ID no.:  ", employeeID),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customButton2(
                    () {},
                    "Edit",
                    5,
                    double.infinity,
                    50,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
