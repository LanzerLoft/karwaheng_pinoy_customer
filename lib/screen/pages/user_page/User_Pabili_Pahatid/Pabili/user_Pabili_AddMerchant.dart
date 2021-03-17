import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'user_PabiliDropOffInfo.dart';
import 'user_merchantSearch.dart';

class AddMerchant extends StatefulWidget {
  // final String gcashPaidAmount;
  // final String payMayaPaidAmount;
  // final String kpWalletPaidAmount;

  // AddMerchant({
  //   Key key,
  //   this.gcashPaidAmount,
  //   this.payMayaPaidAmount,
  //   this.kpWalletPaidAmount,
  // }) : super(key: key);
  @override
  _AddMerchantState createState() => _AddMerchantState();
}

class _AddMerchantState extends State<AddMerchant> {
  TextEditingController merchant = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userProvider.addOrder.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10, left: 5),
                        child: Text(
                          "Items to buy",
                          style: CustomTextStyle.textStyleGrey20,
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: userProvider.addOrder.length,
                        itemBuilder: (context, index) {
                          final widget = userProvider.addOrder.elementAt(index);
                          return widget;
                        },
                      ),
                      Divider(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Total:N/A",
                            style: CustomTextStyle.textStyleGrey18,
                          )),
                    ],
                  )
                : SizedBox.shrink(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10, left: 5),
                  child: Text(
                    "Add Order",
                    style: CustomTextStyle.textStyleGrey20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: customTextFieldMerchant(
                    (value) {
                      userProvider.setMerchant(value);
                    },
                    () {},
                    "Merchant",
                    merchant,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: customTextFieldOrder((value) {
                    userProvider.setOrder(value);
                  }, "Order"),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextFieldPrice((value) {
                        userProvider.setPrice(value);
                      }, "Price"),
                      customTextFieldItemCount((value) {
                        userProvider.setItemCount(value);
                      }, "Count", userProvider.itemCountPabili),
                      customButton2(() {
                        userProvider.addOrderNow(context);
                      }, "Add", 5, 25.0.w, 45, Pallete.kpBlue, Pallete.kpBlue),
                    ],
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: customButton2(() {
                //     userProvider.expansionTileLocation1();
                //   }, "Add", 5, 30.0.w, 45, Pallete.kpBlue,
                //       Pallete.kpBlue),
                // ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AddMerchant2 extends StatefulWidget {
  @override
  _AddMerchant2State createState() => _AddMerchant2State();
}

class _AddMerchant2State extends State<AddMerchant2> {
  TextEditingController merchant = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userProvider.addOrder2.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10, left: 5),
                        child: Text(
                          "Items to buy",
                          style: CustomTextStyle.textStyleGrey20,
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: userProvider.addOrder2.length,
                        itemBuilder: (context, index) {
                          final widget =
                              userProvider.addOrder2.elementAt(index);
                          return widget;
                        },
                      ),
                      Divider(),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Total:N/A",
                            style: CustomTextStyle.textStyleGrey18,
                          )),
                    ],
                  )
                : SizedBox.shrink(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10, left: 5),
                  child: Text(
                    "Add Order",
                    style: CustomTextStyle.textStyleGrey20,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: customTextFieldMerchant(
                    (value) {
                      userProvider.setMerchant2(value);
                    },
                    () {},
                    "Merchant",
                    merchant,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: customTextFieldOrder((value) {
                    userProvider.setOrder2(value);
                  }, "Order"),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextFieldPrice((value) {
                        userProvider.setPrice2(value);
                      }, "Price"),
                      customTextFieldItemCount((value) {
                        userProvider.setItemCount2(value);
                      }, "Item Count", userProvider.itemCountPabili),
                      customButton2(() {
                        userProvider.addOrderNow2(context);
                      }, "Add", 5, 25.0.w, 45, Pallete.kpBlue, Pallete.kpBlue),
                    ],
                  ),
                ),
                // Align(
                //   alignment: Alignment.centerRight,
                //   child: customButton2(() {
                //     userProvider.expansionTileLocation1();
                //   }, "Add", 5, 30.0.w, 45, Pallete.kpBlue,
                //       Pallete.kpBlue),
                // ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
