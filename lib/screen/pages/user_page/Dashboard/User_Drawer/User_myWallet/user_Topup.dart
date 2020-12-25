import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:sizer/sizer.dart';

Widget topUP() {
  String selected;
  return Container(
    height: 60.0.h,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Wallet Balance",
            style: CustomTextStyle.textStyleGrey18,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "P 100",
            style: CustomTextStyle.textStyleBlue45,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 150,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButtonFormField<String>(
              isExpanded: true,
              hint: Text("View Transactions",
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
        customCardToUp(
          50.0.h,
          Container(),
        ),
      ],
    ),
  );
}
