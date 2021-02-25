import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
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
                      "Date & Time of delivery:  ", "08 july 2020, 5:30 PM,"),
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
                  }, "Edit Schedule", 5, double.infinity, 50, Pallete.kpYellow,
                      Pallete.kpYellow),
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
                        textFieldScheduledTimelineTile(
                            pickUp, () {}, (value) {}),
                        textFieldScheduledTimelineTile(
                            dropOff, () {}, (value) {}),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          customScheduledEditField(
                            "Item Description:  ",
                            textFieldScheduledEdit(itemDescription, (value) {}),
                          ),
                          customScheduledEditField(
                            "Notes to Rider:  ",
                            textFieldScheduledEdit(notesToRider, (value) {}),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBooking(
                                  "Employee ID no. ", employeeID),
                              customListTextBooking(
                                  "Payment Method:  ", paymentMethod),
                            ],
                          ),
                          customCardBookingRider(
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: customRichTextBooking(
                                  "Name of rider:", "\n$riderName"),
                            ),
                            'assets/login_images/KP_profile.png',
                            () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customButton2(
                    () => showGeneralDialog(
                      barrierDismissible: false,
                      context: context,
                      barrierColor: Colors.black54, // space around dialog
                      transitionDuration: Duration(milliseconds: 800),
                      transitionBuilder: (context, a1, a2, child) {
                        return ScaleTransition(
                          scale: CurvedAnimation(
                              parent: a1,
                              curve: Curves.elasticOut,
                              reverseCurve: Curves.easeOutCubic),
                          child: ScheduledEditSuccessful(),
                        );
                      },
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return null;
                      },
                    ),
                    "Save",
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
