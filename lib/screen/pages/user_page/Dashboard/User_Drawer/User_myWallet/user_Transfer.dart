import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserTransferWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String selected;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: customButton3(
            () {}, "Transfer Load", 5, 40, Pallete.kpBlue, Pallete.kpBlue),
      ),
      backgroundColor: Pallete.kpWhite,
      body: Container(
        height: 100.0.h,
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: 12,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "Available Balance",
                    style: CustomTextStyle.textStyleGrey18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: customListTextPesoIcon("0.00"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transfer History",
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
              // customCardTopUp(
              //   Container(
              //     height: 50.0.h,
              //     child: ListView(
              //       scrollDirection: Axis.vertical,
              //       children: <Widget>[
              //         SingleChildScrollView(
              //           scrollDirection: Axis.horizontal,
              //           child: DataTable(
              //             headingTextStyle: TextStyle(),
              //             horizontalMargin: 10,
              //             headingRowHeight: 20,
              //             columnSpacing: 10,
              //             columns: [
              //               DataColumn(
              //                   label: Text('Type',
              //                       style: CustomTextStyle.textStyleBlue12)),
              //               DataColumn(
              //                   label: Text('Ammount',
              //                       style: CustomTextStyle.textStyleBlue12)),
              //               DataColumn(
              //                   label: Text('Payment Method',
              //                       style: CustomTextStyle.textStyleBlue12)),
              //               DataColumn(
              //                   label: Text('Date & Time',
              //                       style: CustomTextStyle.textStyleBlue12)),
              //               DataColumn(
              //                   label: Text('Date & Time',
              //                       style: CustomTextStyle.textStyleBlue12)),
              //             ],
              //             rows: [
              //               DataRow(
              //                 cells: [
              //                   DataCell(Text('N/A')),
              //                   DataCell(Text(
              //                     '500',
              //                   )),
              //                   DataCell(Text(
              //                     'GCASH',
              //                   )),
              //                   DataCell(
              //                     Wrap(
              //                       children: [
              //                         Text('01-02-2020, 10:30 am',
              //                             style:
              //                                 CustomTextStyle.textfieldBlack13,
              //                             textAlign: TextAlign.center)
              //                       ],
              //                     ),
              //                   ),
              //                   DataCell(
              //                     Wrap(
              //                       children: [
              //                         Text('01-02-2020, 10:30 am',
              //                             style:
              //                                 CustomTextStyle.textfieldBlack13,
              //                             textAlign: TextAlign.center)
              //                       ],
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
