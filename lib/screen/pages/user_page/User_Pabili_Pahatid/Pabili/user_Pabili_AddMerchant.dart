import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_prohibitedItems.dart';
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
            userProvider.addOrderPabili.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 10, left: 5),
                        child: Text(
                          "${userProvider.addOrderPabili.length} Items",
                          style: CustomTextStyle.textStyleBlack14,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Pallete.kpGrey, width: 0.5),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        padding: EdgeInsets.only(
                            top: 10, left: 20, right: 25, bottom: 10),
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: userProvider.addOrderPabili.length,
                          itemBuilder: (context, index) {
                            final widget =
                                userProvider.addOrderPabili.elementAt(index);
                            return widget;
                          },
                        ),
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
                    "Add Order:",
                    style: CustomTextStyle.textStyleBlue18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: customTextFieldMerchant(
                    (value) {
                      userProvider.setMerchant(value);
                    },
                    () {},
                    "Order from...",
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customTextFieldPrice((value) {
                        userProvider.setPrice(value);
                      }, "Price"),
                      customTextFieldItemCount((value) {
                        userProvider.setItemCount(value);
                      }, "Count", userProvider.itemCountPabili),
                      customButton2(() {
                        userProvider.addOrderNowPabili(context);
                      }, "ADD", 5, 30.0.w, 35, Pallete.kpBlue, Pallete.kpBlue),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    "Search from the list of merchants, or manually type it in.",
                    style: CustomTextStyle.textStyleGrey13,
                  ),
                ),
                NotesForPabili(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: customTextNotesToRider((value) {}),
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
                    "Add Order:",
                    style: CustomTextStyle.textStyleBlue18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: customTextFieldMerchant(
                    (value) {
                      userProvider.setMerchant2(value);
                    },
                    () {},
                    "Order from....",
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
                      }, "Add", 5, 30.0.w, 45, Pallete.kpBlue, Pallete.kpBlue),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 5),
                  child: Text(
                    "Search from the list of merchants, or manually type it in.",
                    style: CustomTextStyle.textStyleGrey13,
                  ),
                ),
                NotesForPabili(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: customTextFieldNotes((value) {}, "Notes here"),
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

class NotesForPabili extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.check,
                    color: Pallete.kpYellow,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 30.0.h, maxWidth: 80.0.w),
                      child: RichText(
                        text: TextSpan(
                          text:
                              "Check the merchants/store website and/or social media page for",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                          children: <TextSpan>[
                            TextSpan(
                              text: " store hours, item availability",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: " and ",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14),
                            ),
                            TextSpan(
                              text: "price.",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.check,
                      color: Pallete.kpYellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 80.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "Only order atleast",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: " 20 minutes ",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                              TextSpan(
                                text:
                                    "before the merchant/store closes to allow our rider's travel time.",
                                style: TextStyle(
                                    color: Pallete.kpBlack,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.check,
                      color: Pallete.kpYellow,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        constraints:
                            BoxConstraints(maxHeight: 40.0.h, maxWidth: 85.0.w),
                        child: RichText(
                          text: TextSpan(
                            text: "See allowable delivery dimensions in",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                fontWeight: FontWeight.normal,
                                fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    pageRoute(context, UserProhibitedItems());
                                  },
                                text: " What We Deliver",
                                style: TextStyle(
                                    color: Pallete.kpBlue,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   constraints: BoxConstraints(
                    //       maxHeight: 40.0.h, maxWidth: 80.0.w),
                    //   child: whatWeDeliverText(
                    //     'See allowable delivery dimensions in',
                    //     ' What We Deliver',
                    //     () {
                    //       pageRoute(context, UserProhibitedItems());
                    //     },
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
