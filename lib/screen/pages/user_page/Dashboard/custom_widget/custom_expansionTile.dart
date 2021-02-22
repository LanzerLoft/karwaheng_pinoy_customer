import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:sizer/sizer.dart';

import 'custom_card.dart';

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
