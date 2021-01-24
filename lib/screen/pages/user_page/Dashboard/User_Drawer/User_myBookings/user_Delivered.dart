import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserDelivered extends StatelessWidget {
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
                customTimelineTile(
                  "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                  "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 20,
                      ),
                      child: customButton2(() {}, "Book Again", 5, 35.0.w, 50,
                          Pallete.kpBlue, Pallete.kpYellow),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: customButton2(() {
                        pageRoute(context, UserDeliveredReview());
                      }, "Review", 5, 35.0.w, 50, Pallete.kpYellow,
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
    );
  }
}

class UserDeliveredReview extends StatelessWidget {
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
                        customRichTextRecipment("Recipment:  ", "Maria Clara"),

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
                            customListTextBooking("Durations:   ", "55mins"),
                            customRichTextProof(
                                "Proof of Delivery:  ", "View", context),
                          ],
                        ),

                        // customRichText(
                        //     "Start of Delivery:  ", "08 july 2020, 5:30pm,"),
                        // customRichText("Delivered:  ", "08 july 2020, 8:30pm"),
                        // customRichText("Durations:  ", "55mins"),
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
                          selected: userCalculateProvider.communicationSelected,
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
