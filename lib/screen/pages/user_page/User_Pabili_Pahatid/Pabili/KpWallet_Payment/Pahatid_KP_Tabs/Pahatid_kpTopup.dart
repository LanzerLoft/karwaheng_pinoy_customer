import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:sizer/sizer.dart';

Widget pahatidTopUP() {
  String selected;
  return Container(
    height: 60.0.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              hint: Text("Payment Option",
                  style: TextStyle(
                    fontSize: 14,
                    color: Pallete.kpGrey,
                  )),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
              ),
              value: selected,
              items: ["Transactions", "Transactionss", "Transactionsss"]
                  .map((label) => DropdownMenuItem(
                        child: Text(label,
                            style: TextStyle(
                              fontSize: 14,
                              color: Pallete.kpBlue,
                            )),
                        value: label,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => selected = value);
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text("Summary", style: CustomTextStyle.textStyleBlue14),
        ),
        customCardToUp(
          20.0.h,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customListTextBlue("Ammount:", "P 100"),
              customListTextBlue("Pay To:", "Karwaheng Pinoy Inc."),
              customListTextBlue("Service Charge:", "P 0.00"),
              customListTextBlue("Booking ID", "KP12344566"),
              customListTextBlue("Payment Reference No. ", "KP2456"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customButton2(() {}, "Proceed", 20, 100, 35, Pallete.kpBlue,
                  Pallete.kpBlue),
              customButton2(
                  () {}, "Cancel", 20, 100, 35, Pallete.kpRed, Pallete.kpRed),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget pahatidTopUPGcash() {
  String selected;
  return Container(
    height: 60.0.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              hint: Text("Payment Option",
                  style: TextStyle(
                    fontSize: 14,
                    color: Pallete.kpGrey,
                  )),
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
              ),
              value: selected,
              items: ["Transactions", "Transactionss", "Transactionsss"]
                  .map((label) => DropdownMenuItem(
                        child: Text(label,
                            style: TextStyle(
                              fontSize: 14,
                              color: Pallete.kpBlue,
                            )),
                        value: label,
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() => selected = value);
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Text("Summary", style: CustomTextStyle.textStyleBlue14),
        ),
        customCardToUp(
          20.0.h,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              customListTextBlue("Ammount:", "P 100"),
              customListTextBlue("Pay To:", "Karwaheng Pinoy Inc."),
              customListTextBlue("GCASH No.", "63999745622"),
              customListTextBlue("Booking ID", "KP12344566"),
              customListTextBlue("Payment Reference No. ", "KP2456"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customButton2(() {}, "Proceed", 20, 100, 35, Pallete.kpBlue,
                  Pallete.kpBlue),
              customButton2(
                  () {}, "Cancel", 20, 100, 35, Pallete.kpRed, Pallete.kpRed),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget topUpList() {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: [
        customButtonTopUp(() {}, "P100", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P300", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P500", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P1,000", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P1,500", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P2,000", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P3,000", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P4,000", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        customButtonTopUp(() {}, "P5,000", 20, double.infinity, 40,
            Pallete.kpYellow, Pallete.kpYellow),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "I agree to Karwaheng Pinoy's Privacy Policy and Terms of User.",
              style: CustomTextStyle.textStyleBlue12,
            ),
          ),
        ),
        customButton2(
            () {}, "TOP UP", 20, 100, 40, Pallete.kpRed, Pallete.kpRed),
      ],
    ),
  );
}
