import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/booking_status/pahatid_finding_a_rider/user_pahatid_finding_rider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';

class UserMyBookingsHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return ListView(
      children: [
        //
        //

        //
        historyDeliveredCanceled(context),
        userProvider.historyDelivered == true
            ? ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return customCardBooking(
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 10),
                            child: customRichTextBookingCard(
                                "Date & Time of delivery:",
                                "08 july 2020, 5:30 PM,"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customRichTextBooking("Booking ID:", "\nKP12345"),
                              customListTextBookingPesoIcon(
                                  "Delivery Fee:", "999"),
                            ],
                          ),
                          customTimelineTile(
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                ),
                                child: customButton2(
                                    () {},
                                    "Book Again",
                                    5,
                                    40.0.w,
                                    40,
                                    Pallete.kpBlue,
                                    Pallete.kpYellow),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: customButton2black(() {
                                  //
                                  //
                                  pageRoute(
                                      context, UserPabiliDeliveredReview());
                                  //
                                  //
                                }, "Review", 5, 40.0.w, 40, Pallete.kpYellow,
                                    Pallete.kpYellow),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Pallete.kpBlue,
                  );
                },
                itemCount: 20,
              )
            : ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return customCardBooking(
                    Padding(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 10, left: 16, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20, top: 10),
                            child: customRichTextBookingCard(
                                "Date & Time of delivery:  ",
                                "08 july 2020, 5:30 PM,"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customRichTextBooking("Booking ID:", "\nKP12345"),
                              customListTextBookingPesoIcon(
                                  "Delivery Fee:", "999"),
                            ],
                          ),
                          customTimelineTile(
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20,
                                ),
                                child: customButton2(
                                    () {},
                                    "Book Again",
                                    5,
                                    40.0.w,
                                    40,
                                    Pallete.kpBlue,
                                    Pallete.kpYellow),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: customButton2black(() {
                                  //
                                  //
                                  pageRoute(context,
                                      UserPabiliBookingOrderCanceledWithRider());
                                  // pageRoute(context,
                                  //     UserPahatidBookingOrderCanceledWithRider());
                                  //
                                  //
                                }, "Review", 5, 40.0.w, 40, Pallete.kpYellow,
                                    Pallete.kpYellow),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Pallete.kpBlue,
                  );
                },
                itemCount: 20,
              ),
      ],
    );
  }
}

//
//
//
//
//
//
//
//

class UserPabiliDeliveredReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCalculateProvider = Provider.of<UserProvider>(context);
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: customRichTextAppbarBlue("Booking ID:  ", "KP12345ss"),
        ),
        backgroundColor: Pallete.kpWhite,
        body: SafeArea(
          maintainBottomViewPadding: true,
          child: SingleChildScrollView(
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
                  customCardRiderInfoNoPadding(
                    customListTextImage(
                      "Juan dela cruz",
                      Image.asset(
                        "assets/login_images/KP_profile.png",
                        height: 5,
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  customCardBooking(
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customRichTextBooking(
                                  "Payment Method:  ", "\nGCASH"),
                              customListTextBookingPesoIcon(
                                  "Final Delivery Fee:", "999"),
                            ],
                          ),
                          customTimelineTile(
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          ),
                        ],
                      ),
                    ),
                    Pallete.kpBlue,
                  ),
                  customCard(
                    Container(
                      width: 80.0.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: customRichTextRecipment(
                                "Recipient:  ", "Maria Clara"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBooking("Start of Delivery:   ",
                                  "08 july 2020, 5:30pm,"),
                              customListTextBooking(
                                  "Delivered:   ", "08 july 2020, 8:30pm"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBooking("Durations:   ", "55 mins"),
                              customTextViewProof(
                                  "Proof of Delivery:  ", "View", () {
                                print("HEY");
                                pageRoute(context, UserProofofDelivery());
                              }),
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
                            "Please Rate this Booking",
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
                              color: Pallete.kpNoticeYellow,
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
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
                            selected:
                                userCalculateProvider.professionalismSelected,
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
                            selected:
                                userCalculateProvider.communicationSelected,
                            selectedColor: Pallete.kpYellow,
                            onSelected: (status) {
                              userCalculateProvider.selectedCommunication();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Tell us how we can improve,",
                    style: CustomTextStyle.textStyleBlack18,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customTextFieldFeedbackdelivered((value) {}),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: customButton2(
                                () {},
                                "Submit",
                                5,
                                double.infinity,
                                50,
                                Pallete.kpBlue,
                                Pallete.kpBlue),
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
                            "Add to Preferred Partner Riders",
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
                  ),
                  InputChip(
                    isEnabled: true,
                    label: Text(
                      "Report Rider",
                      style: userPabiliProvider.reportRider == false
                          ? CustomTextStyle.textStyleBlack12
                          : CustomTextStyle.textStyleWhite12,
                    ),
                    selected: userPabiliProvider.reportRider,
                    selectedColor: Pallete.kpRed,
                    onSelected: (status) {
                      userPabiliProvider.selectedPabilireportRider(
                          context, "Kp12345");
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

//
//
//
//

class PahatidBookingCanceled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCalculateProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: customRichTextAppbarBlue("Booking ID:  ", "KP12345"),
        ),
        backgroundColor: Pallete.kpWhite,
        body: SafeArea(
          maintainBottomViewPadding: true,
          child: SingleChildScrollView(
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: customListTextImage(
                      "Juan dela cruz",
                      Image.asset(
                        "assets/login_images/KP_profile.png",
                      ),
                    ),
                  ),
                  customCardBooking(
                    Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customRichTextBooking(
                                  "Payment Method:  ", "\nGCASH"),
                              customListTextBookingPesoIcon(
                                  "Final Delivery Fee:", "999"),
                            ],
                          ),
                          customTimelineTile(
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                            "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                          ),
                        ],
                      ),
                    ),
                    Pallete.kpBlue,
                  ),
                  customCard(
                    Container(
                      width: 80.0.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: customRichTextRecipment(
                                "Recipient:  ", "Maria Clara"),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBooking("Start of Delivery:   ",
                                  "08 july 2020, 5:30pm,"),
                              customListTextBooking(
                                  "Delivered:   ", "08 july 2020, 8:30pm"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customListTextBooking("Durations:   ", "55 mins"),
                              customTextViewProof(
                                  "Proof of Delivery:  ", "View", () {
                                print("HEY");
                                pageRoute(context, UserProofofDelivery());
                              }),
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
                            "Please Rate this Booking",
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
                              color: Pallete.kpNoticeYellow,
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
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: SingleChildScrollView(
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
                            selected:
                                userCalculateProvider.professionalismSelected,
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
                            selected:
                                userCalculateProvider.communicationSelected,
                            selectedColor: Pallete.kpYellow,
                            onSelected: (status) {
                              userCalculateProvider.selectedCommunication();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    "Tell us how we can improve,",
                    style: CustomTextStyle.textStyleBlack18,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          customTextFieldFeedbackdelivered((value) {}),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: customButton2(
                                () {},
                                "Submit",
                                5,
                                double.infinity,
                                50,
                                Pallete.kpBlue,
                                Pallete.kpBlue),
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
                            "Add to Preferred Partner Riders",
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
          ),
        ));
  }
}
//
//
//

class UserProofofDelivery extends StatelessWidget {
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
        title: Text(
          "Proof of Delivery",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          height: 100.0.h,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: CustomConSize.mobile,
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.hide_image,
                  size: 50,
                  color: Pallete.kpGreyOkpGreypacity,
                ),
                Text(
                  "No Proof of Delivery Image",
                  style: CustomTextStyle.textStyleGrey14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//
//
//

class UserPabiliBookingOrderCanceledWithRider extends StatefulWidget {
  @override
  State<UserPabiliBookingOrderCanceledWithRider> createState() =>
      UserPabiliBookingOrderCanceledWithRiderState();
}

class UserPabiliBookingOrderCanceledWithRiderState
    extends State<UserPabiliBookingOrderCanceledWithRider> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Order Canceled",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        child: Container(
          height: 50,
          width: 100.0.w,
          child: FlatButton(
            onPressed: () {
              pageRouteBack(context);
            },
            color: Pallete.kpBlue,
            child: Text("Order Again", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: 90.0.h,
            decoration: BoxDecoration(
              color: Pallete.kpWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: customCardRiderInfo(
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Pallete.kpBlue,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              "assets/login_images/KP_profile.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleBlack18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customCard(
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "April 25, 11:30 AM",
                                  style: CustomTextStyle.textStyleBlack12,
                                ),
                                Text(
                                  "Order number 110000-00077",
                                  style: CustomTextStyle.textStyleBlack12,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "BDO Katipunan Avenue",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Loyola Heights Branch, Katipunan Avenue, Quezon City, Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Juana Dela Cruz",
                                      style: CustomTextStyle.textStyleGrey10,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "  09177777777",
                                          style:
                                              CustomTextStyle.textStyleGrey10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.5),
                                child: OutlinedDotIndicator(
                                  borderWidth: 3,
                                ),
                              ),
                              indicatorPosition: 0,
                              endConnector: SolidLineConnector(
                                thickness: 2,
                                color: Pallete.kpGrey,
                              ),
                            ),
                          ),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "SM City North EDSA",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "North Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  // RichText(
                                  //   text: TextSpan(
                                  //     text: "Juana Dela Cruz",
                                  //     style: CustomTextStyle.textStyleGrey10,
                                  //     children: <TextSpan>[
                                  //       TextSpan(
                                  //         text: "09177777777",
                                  //         style: CustomTextStyle.textStyleGrey10,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicatorPosition: 0,
                              indicator: Icon(
                                Icons.location_on,
                                color: Pallete.kpRed,
                              ),
                              startConnector: SolidLineConnector(
                                thickness: 5,
                                color: Pallete.kpNoticeYellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: customCard(
                    Container(
                      width: 100.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Service Type:",
                              style: CustomTextStyle.textStyleBlack14,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "      ",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                                TextSpan(
                                  text: "Pabili",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Unpaid",
                                style: CustomTextStyle.textStyleBlackbold16),
                            Text("₱500.00",
                                style: CustomTextStyle.textStyleBlackbold16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              // pageRoute(
                              //     context, UserPabiliFeeBreakdownCanceled());
                            },
                            child: Text("Fee Breakdown",
                                style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserPahatidBookingOrderCanceledWithRider extends StatefulWidget {
  @override
  State<UserPahatidBookingOrderCanceledWithRider> createState() =>
      UserPahatidBookingOrderCanceledWithRiderState();
}

class UserPahatidBookingOrderCanceledWithRiderState
    extends State<UserPahatidBookingOrderCanceledWithRider> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Booking Canceled",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
        child: Container(
          height: 50,
          width: 100.0.w,
          child: FlatButton(
            onPressed: () {
              pageRouteBack(context);
            },
            color: Pallete.kpBlue,
            child: Text("Book Again", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Container(
            height: 90.0.h,
            decoration: BoxDecoration(
              color: Pallete.kpWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: customCardRiderInfo(
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Pallete.kpBlue,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(
                              "assets/login_images/KP_profile.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleBlack18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: customCard(
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "April 25, 11:30 AM",
                                  style: CustomTextStyle.textStyleBlack12,
                                ),
                                Text(
                                  "Order number 110000-00077",
                                  style: CustomTextStyle.textStyleBlack12,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 25),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(left: 10, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "BDO Katipunan Avenue",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "Loyola Heights Branch, Katipunan Avenue, Quezon City, Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Juana Dela Cruz",
                                      style: CustomTextStyle.textStyleGrey10,
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: "  09177777777",
                                          style:
                                              CustomTextStyle.textStyleGrey10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicator: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.5),
                                child: OutlinedDotIndicator(
                                  borderWidth: 3,
                                ),
                              ),
                              indicatorPosition: 0,
                              endConnector: SolidLineConnector(
                                thickness: 2,
                                color: Pallete.kpGrey,
                              ),
                            ),
                          ),
                          TimelineTile(
                            nodeAlign: TimelineNodeAlign.start,
                            contents: Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "SM City North EDSA",
                                      style: CustomTextStyle.textStyleBlack12,
                                    ),
                                  ),
                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            "North Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                                        style: CustomTextStyle.textStyleGrey10,
                                      ),
                                    ),
                                  ),
                                  // RichText(
                                  //   text: TextSpan(
                                  //     text: "Juana Dela Cruz",
                                  //     style: CustomTextStyle.textStyleGrey10,
                                  //     children: <TextSpan>[
                                  //       TextSpan(
                                  //         text: "09177777777",
                                  //         style: CustomTextStyle.textStyleGrey10,
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            node: TimelineNode(
                              indicatorPosition: 0,
                              indicator: Icon(
                                Icons.location_on,
                                color: Pallete.kpRed,
                              ),
                              startConnector: SolidLineConnector(
                                thickness: 5,
                                color: Pallete.kpNoticeYellow,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: customCard(
                    Container(
                      width: 100.0.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Service Type:",
                              style: CustomTextStyle.textStyleBlack14,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "      ",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                                TextSpan(
                                  text: "Pahatid",
                                  style: CustomTextStyle.textStyleBlue14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Unpaid",
                                style: CustomTextStyle.textStyleBlackbold16),
                            Text("₱500.00",
                                style: CustomTextStyle.textStyleBlackbold16),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              pageRoute(
                                  context, UserPahatidFeeBreakdownCanceled());
                            },
                            child: Text("Fee Breakdown",
                                style: TextStyle(
                                  color: Pallete.kpBlue,
                                  fontSize: 16,
                                  decoration: TextDecoration.underline,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReportUploadImage extends StatelessWidget {
  const ReportUploadImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus.unfocus();
          }
        },
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Pallete.kpBlue,
              ),
              backgroundColor: Pallete.kpWhite,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Upload your image here",
                style: CustomTextStyle.textStyleBluebold16,
              ),
            ),
            backgroundColor: Pallete.kpWhite,
            bottomNavigationBar: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                height: 50,
                width: 100.0.w,
                child: FlatButton(
                  onPressed: () {
                    pageRouteBack(context);
                  },
                  color: Pallete.kpBlue,
                  child: Text(
                    "Save",
                    style: CustomTextStyle.textStyleWhitebold16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            body: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: 16,
                ),
              ),
              child: ListView(
                children: [
                  customCard(Container(
                    height: 310,
                    width: 100.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        userPabiliProvider.imageFilePabili != null
                            ? Image.file(
                                userPabiliProvider.imageFilePabili,
                                height: 300,
                                fit: BoxFit.contain,
                              )
                            : GestureDetector(
                                onTap: () {
                                  userPabiliProvider.getFromGalleryPabili();
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.photo,
                                        size: 70, color: Pallete.kpGrey),
                                    Text(
                                      "Select Photo",
                                      style: CustomTextStyle.textStyleGrey16,
                                    ),
                                  ],
                                ),
                              ),
                      ],
                    ),
                  )),
                  userPabiliProvider.imageFilePabili == null
                      ? SizedBox.shrink()
                      : Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  userPabiliProvider.pabiliRetakePhoto(context);
                                },
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.photo,
                                      size: 20,
                                      color: Pallete.kpGrey,
                                    ),
                                    Text(
                                      "Retake Photo",
                                      style: CustomTextStyle.textStyleGrey14,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              child: GestureDetector(
                                onTap: () {
                                  userPabiliProvider.clearimagePabili()();
                                },
                                child: Column(
                                  children: [
                                    Icon(Icons.remove_circle_sharp,
                                        size: 20, color: Pallete.kpGrey),
                                    Text(
                                      "Remove",
                                      style: CustomTextStyle.textStyleGrey14,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                  // userPabiliProvider.imageFile != null
                  //     ? Image.file(
                  //         userPabiliProvider.imageFile,
                  //         width: 100.w,
                  //         height: 50.h,
                  //         fit: BoxFit.fitHeight,
                  //       )
                  //     : SizedBox(
                  //         height: 150,
                  //       ),
                ],
              ),
            )));
  }
}
