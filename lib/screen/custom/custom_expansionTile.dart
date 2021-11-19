import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';


import 'package:sizer/sizer.dart';

import 'custom_ListText.dart';
import 'custom_TextField.dart';

import 'hexcolor.dart';

Widget expansionTile(
  Widget text,
) {
  return ExpansionTile(
    title: Wrap(
      spacing: 15.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.kpBlue, width: 1.0),
              color: Pallete.kpBlue,
              shape: BoxShape.circle),
        ),
        text,
      ],
    ),
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
          left: 30,
        ),
        child: Column(
          children: [
            customTextField(
              (value) {},
              "Address",
            ),
            SizedBox(
              height: 15,
            ),
            customTextField((value) {}, "Phone"),
            SizedBox(
              height: 15,
            ),
            customTextField((value) {}, "Put Specific Instruction Here"),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget expansionTileRecognizedWeekly(
  BuildContext context,
  String dateToday,
  String dailyIncome,
  String serviceType,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String rebatesPromo,
  String location,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Text(
            "Completed Delivery",
            style: CustomTextStyle.textStyleGrey14,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  dateToday,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    dailyIncome,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Service Type"),
                      Text(
                        serviceType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Type"),
                      Text(
                        paymentType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rebates/Promo"),
                      Text(
                        rebatesPromo,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location"),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        constraints:
                            BoxConstraints(maxHeight: 300, maxWidth: 180),
                        child: Text(location,
                            style: CustomTextStyle.textStyleBlue16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileCelebrateToday(
  BuildContext context,
  String bookingID,
  String rebatePoints,
  String rebateReceieved,
  String time,
  String serviceType,
  String totalBill,
  String orderCost,
  String deliveryFee,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Text(
            rebateReceieved,
            style: CustomTextStyle.textStyleGrey14,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  bookingID,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    rebatePoints,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Time"),
                      Text(
                        time,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Service Type"),
                      Text(
                        serviceType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileCelebrateMonth(
  BuildContext context,
  String date,
  String rebatePoints,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Text(
            "Delivery Count: $deliveryCount",
            style: CustomTextStyle.textStyleGrey14,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  date,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    rebatePoints,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileRecognizedQuarter(
  BuildContext context,
  String quarter,
  String dailyIncome,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String rebatesPromo,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Text(
            "Delivery Count: $deliveryCount",
            style: CustomTextStyle.textStyleGrey14,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  quarter,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    dailyIncome,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Type"),
                      Text(
                        paymentType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rebates/Promo"),
                      Text(
                        rebatesPromo,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileCelebrateQuarter(
  BuildContext context,
  String quarter,
  String quarterRebates,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Count: $deliveryCount",
                style: CustomTextStyle.textStyleGrey14,
              ),
              Text(
                "Delivery Fee: $deliveryFee",
                style: CustomTextStyle.textStyleGrey14,
              ),
            ],
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  quarter,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    quarterRebates,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileRecognizedToday(
  BuildContext context,
  String bookingID,
  String dateTimeToday,
  String incomeToday,
  String serviceType,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String rebatesPromo,
  String location,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: customCard(
      Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          initiallyExpanded: false,
          maintainState: true,
          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          onExpansionChanged: (value) {},
          subtitle: Text(
            bookingID,
            style: CustomTextStyle.textStyleGrey14,
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  dateTimeToday,
                  style: CustomTextStyle.textStyleBluebold16,
                  overflow: TextOverflow.visible,
                ),
              ),
              Row(
                children: [
                  ImageIcon(
                    AssetImage("assets/payment_icons/pesoicon.png"),
                    color: Pallete.kpBlue,
                    size: 12,
                  ),
                  Text(
                    incomeToday,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
            ],
          ),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Service Type"),
                      Text(
                        serviceType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Bill"),
                      listTextPesoIconMonthBS16(totalBill),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Cost"),
                      listTextPesoIconMonthBS16(orderCost),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Fee"),
                      listTextPesoIconMonthBS16(deliveryFee),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment Type"),
                      Text(
                        paymentType,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Rebates/Promo"),
                      Text(
                        rebatesPromo,
                        style: CustomTextStyle.textStyleBlue16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Location"),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        constraints:
                            BoxConstraints(maxHeight: 300, maxWidth: 180),
                        child: Text(location,
                            style: CustomTextStyle.textStyleBlue16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget expansionTileIncomeToday(
  BuildContext context,
  String date,
  String time,
  String income,
  String kpShare,
  String rebatesPromo,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String completedDelivery,
  String cancelledDelivery,
  String distance,
  String minutestoDeliver,
  String location,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            subtitle: Text(
              date,
              style: CustomTextStyle.textStyleBlackbold16,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    time,
                    style: CustomTextStyle.textStyleBlackbold16,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  "₱$income",
                  style: CustomTextStyle.textStyleBlue24,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("KP Share",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          "$kpShare",
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rebates/Promo",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          rebatesPromo,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Count",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryCount,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          totalBill,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Cost",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          orderCost,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryFee,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Type",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          paymentType,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          completedDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cancelled Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          cancelledDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minutes to Deliver",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          minutestoDeliver,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          location,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileIncomeMonthly(
  BuildContext context,
  String date,
  String jobs,
  String income,
  String kpShare,
  String rebatesPromo,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String completedDelivery,
  String cancelledDelivery,
  String distance,
  String minutestoDeliver,
  String location,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold16,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text("₱$income", style: CustomTextStyle.textStyleBluebold22),
              ],
            ),
            subtitle: Text(
              jobs,
              style: CustomTextStyle.textStyleBlackbold16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("KP Share",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          "$kpShare",
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rebates/Promo",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          rebatesPromo,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Count",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryCount,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          totalBill,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Cost",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          orderCost,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryFee,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Type",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          paymentType,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          completedDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cancelled Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          cancelledDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minutes to Deliver",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          minutestoDeliver,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          location,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileIncomeMonthlyWeekView(
  BuildContext context,
  String date,
  String jobs,
  String income,
  String kpShare,
  String rebatesPromo,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String completedDelivery,
  String cancelledDelivery,
  String distance,
  String minutestoDeliver,
  String location,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold18,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text("₱$income", style: CustomTextStyle.textStyleBluebold22),
              ],
            ),
            subtitle: Text(
              "$jobs Jobs Completed",
              style: CustomTextStyle.textStyleBlack16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("KP Share",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          "$kpShare",
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rebates/Promo",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          rebatesPromo,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Count",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryCount,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          totalBill,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Cost",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          orderCost,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryFee,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Type",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          paymentType,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          completedDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cancelled Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          cancelledDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minutes to Deliver",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          minutestoDeliver,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          location,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileIncomeYear(
  BuildContext context,
  String date,
  String jobs,
  String income,
  String kpShare,
  String rebatesPromo,
  String deliveryCount,
  String totalBill,
  String orderCost,
  String deliveryFee,
  String paymentType,
  String completedDelivery,
  String cancelledDelivery,
  String distance,
  String minutestoDeliver,
  String location,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold16,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  "₱$income",
                  style: CustomTextStyle.textStyleBlue24,
                ),
              ],
            ),
            subtitle: Text(
              jobs,
              style: CustomTextStyle.textStyleBlackbold16,
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("KP Share",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          "$kpShare",
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rebates/Promo",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          rebatesPromo,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Count",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryCount,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          totalBill,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Cost",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          orderCost,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          deliveryFee,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Type",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          paymentType,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Completed Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          completedDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Cancelled Delivery",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          cancelledDelivery,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minutes to Deliver",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          minutestoDeliver,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          location,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileEfficiencyToday(
  BuildContext context,
  String time,
  String id,
  String minutes,
  String serviceType,
  String location,
  String distance,
  String minutestoDeliver,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            subtitle: Text(
              id,
              style: CustomTextStyle.textStyleBlack14,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    time,
                    style: CustomTextStyle.textStyleBlackbold18,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Services Type",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          serviceType,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          location,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minutes to Deliver",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          minutestoDeliver,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileEfficiencyMontly(
  BuildContext context,
  String date,
  String minutes,
  String pabili,
  String pahatid,
  String distance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold18,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileIncomeMonthlyWeek(
  BuildContext context,
  String date,
  String minutes,
  String pabili,
  String pahatid,
  String distance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold18,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileEfficiencyMontlyWeekView(
  BuildContext context,
  String dateWeek,
  String dateToday,
  String minutes,
  String pabili,
  String pahatid,
  String distance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "$dateWeek, ",
                        style: CustomTextStyle.textStyleBlackbold16,
                      ),
                      Text(
                        dateToday,
                        style: CustomTextStyle.textStyleBlack16,
                      ),
                    ],
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileIncomeMontlyWeekView(
  BuildContext context,
  String dateWeek,
  String dateToday,
  String minutes,
  String pabili,
  String pahatid,
  String distance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            title: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        "$dateWeek, ",
                        style: CustomTextStyle.textStyleBlackbold16,
                      ),
                      Text(
                        dateToday,
                        style: CustomTextStyle.textStyleBlack16,
                      ),
                    ],
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileEfficiencyYear(
  BuildContext context,
  String date,
  String minutes,
  String pabili,
  String pahatid,
  String distance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            subtitle: Text(
              "Average Delivery Time",
              style: CustomTextStyle.textStyleBlack14,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    date,
                    style: CustomTextStyle.textStyleBlackbold18,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBluebold22,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          distance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

Widget expansionTileEfficiencyQuarter(
  BuildContext context,
  String quarter,
  String minutes,
  String pabili,
  String pahatid,
  String totalDistance,
  String averageDistance,
) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            initiallyExpanded: false,
            maintainState: true,
            tilePadding: EdgeInsets.zero,
            onExpansionChanged: (value) {},
            subtitle: Text(
              "Average Delivery Time",
              style: CustomTextStyle.textStyleBlack14,
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    quarter,
                    style: CustomTextStyle.textStyleBlackbold16,
                    overflow: TextOverflow.visible,
                  ),
                ),
                Text(
                  minutes,
                  style: CustomTextStyle.textStyleBlue24,
                ),
              ],
            ),
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pabili", style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pabili,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pahatid",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          pahatid,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Distance",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          totalDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Average Distance (km)",
                            style: CustomTextStyle.textStyleBlack16),
                        Text(
                          averageDistance,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Divider(),
    ],
  );
}

//
//
//
//
//
//
