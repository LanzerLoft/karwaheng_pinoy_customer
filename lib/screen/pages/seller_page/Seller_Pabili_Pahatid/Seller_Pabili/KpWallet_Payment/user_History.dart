import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:sizer/sizer.dart';

Widget userHistory() {
  String selected;
  return Container(
    height: 60.0.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Available Balance",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 80,
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
                items: ["all", "alls", "allss"]
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
            Container(
              width: 100,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButtonFormField<String>(
                isExpanded: true,
                hint: Text("Months",
                    style: TextStyle(
                      fontSize: 14,
                      color: Pallete.kpGrey,
                    )),
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                ),
                value: selected,
                items: ["Months", "Week", "Month"]
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
        customCardToUp(
            50.0.h,
            ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SingleChildScrollView(
                    child: DataTable(
                      headingTextStyle: TextStyle(),
                      horizontalMargin: 10,
                      headingRowHeight: 20,
                      columnSpacing: 10,
                      columns: [
                        DataColumn(
                            label: Text('Type',
                                style: CustomTextStyle.textStyleBlue12)),
                        DataColumn(
                            label: Text('Ammount',
                                style: CustomTextStyle.textStyleBlue12)),
                        DataColumn(
                            label: Text('Payment Method',
                                style: CustomTextStyle.textStyleBlue12)),
                        DataColumn(
                            label: Text('Date & Time',
                                style: CustomTextStyle.textStyleBlue12)),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text('N/A')),
                          DataCell(Text(
                            '500',
                          )),
                          DataCell(Text(
                            'GCASH',
                          )),
                          DataCell(
                            Wrap(
                              children: [
                                Text('01-02-2020, 10:30 am',
                                    style: CustomTextStyle.textfieldBlack13,
                                    textAlign: TextAlign.center)
                              ],
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ])),
      ],
    ),
  );
}
