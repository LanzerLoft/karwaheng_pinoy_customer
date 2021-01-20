import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserHistoryWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String selected;
    return Container(
      height: 100.0.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "History",
                    style: TextStyle(
                      fontSize: 14,
                      color: Pallete.kpGrey,
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      hint: Text("All",
                          style: TextStyle(
                            fontSize: 14,
                            color: Pallete.kpGrey,
                          )),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                      ),
                      value: selected,
                      items: ["All", "Months", "Week", "Month"]
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
                ],
              ),
            ),
            ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return customCardTopUp(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Pallete.kpBlue,
                            ),
                            child: Text(
                              "GCASH",
                              style: CustomTextStyle.textStyleWhite12,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "01-02-2020, 3:00pm",
                            style: CustomTextStyle.textStyleGrey14,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Ammount",
                              style: CustomTextStyle.textStyleGrey14),
                          Text(
                            "1000",
                            style: CustomTextStyle.textStyleBlue22,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: 20,
            ),
          ],
        ),
      ),
    );
  }
}
