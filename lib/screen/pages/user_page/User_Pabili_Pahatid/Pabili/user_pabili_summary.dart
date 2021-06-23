import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:scroll_date_picker/scroll_date_picker.dart';
import 'user_pabili_checkout.dart';

class UserPabiliSummary extends StatefulWidget {
  @override
  _UserPabiliSummary createState() => _UserPabiliSummary();
}

class _UserPabiliSummary extends State<UserPabiliSummary> {
  int _currentIntValue = 0;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final pabiliProvider = Provider.of<UserPabiliProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Order Summary",
            style: CustomTextStyle.textStyleBlue20,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Pallete.kpBlue),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text("2|3",
                        style: TextStyle(fontSize: 16, color: Pallete.kpWhite)),
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Pallete.kpWhite,
        // bottomNavigationBar: SafeArea(
        //   bottom: true,
        //   maintainBottomViewPadding: true,
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        //     child: Container(
        //       height: 50,
        //       width: 100.0.w,
        //       child: FlatButton(
        //         onPressed: () {
        //           pageRoute(context, UserPabiliCheckout());
        //         },
        //         color: Pallete.kpNoticeYellow,
        //         child: Text("Confirm | Continue",
        //             style: CustomTextStyle.textStyleBlack16),
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(5.0),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                oderSummaryTotalBill("Total Bill ", "184"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Are this details correct",
                    style: CustomTextStyle.textStyleBlackbold16,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order From:",
                      style: CustomTextStyle.textStyleBlack14,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Jollibee Ulo ng Apo",
                              style: CustomTextStyle.textStyleBlue18,
                            ),
                          ),
                          Container(
                            constraints: BoxConstraints(
                                maxHeight: 150, maxWidth: 90.0.w),
                            child: Text(
                              "#1770 Rizal Ave, cor E 18th St, Olongapo, Zambales",
                              style: CustomTextStyle.textStyleBlue14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                userProvider.addOrderPabili.isNotEmpty
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 15, bottom: 10, left: 5),
                            child: Text(
                              "${userProvider.addOrderPabili.length} Items",
                              style: CustomTextStyle.textStyleBlack14,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Pallete.kpGrey, width: 0.5),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            padding: EdgeInsets.only(
                                top: 10, left: 20, right: 25, bottom: 10),
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: userProvider.addOrderPabili.length,
                              itemBuilder: (context, index) {
                                final widget = userProvider.addOrderPabili
                                    .elementAt(index);
                                return widget;
                              },
                            ),
                          ),
                        ],
                      )
                    : SizedBox.shrink(),
                Divider(),
                oderSummarySubtotal("89"),
                oderSummaryDeliveryfee("8 km", "85"),
                oderSummaryDiscount("10"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Payment:",
                    style: CustomTextStyle.textStyleBlackbold16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      oderSummaryGCash("184.00"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: customTextNotesToRider((value) {}),
                ),
                pabiliProvider.orderLater == true
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Delivery Schedule:",
                            style: CustomTextStyle.textStyleBlackbold16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 20),
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              hint: Text("Deliver Asap",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Pallete.kpGrey,
                                  )),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(
                                      color: Pallete.kpGreyOkpGreypacity,
                                      width: 1.0),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                              value: userProvider.deliverySched,
                              items: userProvider.deliverySchedule
                                  .map((label) => DropdownMenuItem(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 6),
                                          child: Text(label,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Pallete.kpBlue,
                                              )),
                                        ),
                                        value: label,
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                if (value == "Pick Time") {
                                  showGeneralDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    barrierColor:
                                        Colors.black54, // space around dialog
                                    transitionDuration:
                                        Duration(milliseconds: 800),
                                    transitionBuilder:
                                        (context, a1, a2, child) {
                                      return ScaleTransition(
                                        scale: CurvedAnimation(
                                            parent: a1,
                                            curve: Curves.elasticOut,
                                            reverseCurve: Curves.easeOutCubic),
                                        child: ShowOrderDate(),
                                      );
                                    },
                                    pageBuilder: (BuildContext context,
                                        Animation animation,
                                        Animation secondaryAnimation) {
                                      return null;
                                    },
                                  );
                                }
                                setState(
                                    () => userProvider.deliverySched = value);
                              },
                            ),
                          )
                        ],
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Order Now",
                          style: CustomTextStyle.textStyleBlackbold16,
                        ),
                      ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver to:",
                      style: CustomTextStyle.textStyleBlackbold16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                                maxHeight: 150, maxWidth: 90.0.w),
                            child: Text(
                              "#1770 Rizal Ave, cor E 18th St, Olongapo, Zambales",
                              style: CustomTextStyle.textStyleBlue18,
                            ),
                          ),
                          Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleGrey14,
                          ),
                          Text(
                            "09122345578",
                            style: CustomTextStyle.textStyleGrey14,
                          ),
                          Text(
                            "Sa puting gate",
                            style: CustomTextStyle.textStyleGrey14,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Container(
                    height: 50,
                    width: 100.0.w,
                    child: FlatButton(
                      onPressed: () {
                        pageRoute(context, UserPabiliCheckout());
                      },
                      color: Pallete.kpNoticeYellow,
                      child: Text("Confirm | Continue",
                          style: CustomTextStyle.textStyleBlack16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class SelectedDeliveryTime extends StatefulWidget {
  @override
  _SelectedDeliveryTimeState createState() => _SelectedDeliveryTimeState();
}

class _SelectedDeliveryTimeState extends State<SelectedDeliveryTime> {
  DateTime _chosenDateTime;

  // Show the modal that contains the CupertinoDatePicker
  void _showDatePicker(ctx) {
    // showCupertinoModalPopup is a built-in function of the cupertino library
    showCupertinoDialog(
        context: ctx,
        builder: (_) => Container(
              height: 500,
              color: Pallete.kpWhite,
              child: Container(
                height: 400,
                child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (val) {
                      setState(() {
                        _chosenDateTime = val;
                      });
                    }),
              ),

              // Close the modal
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Kindacode.com'),
        // This button triggers the _showDatePicker function
        trailing: Container(
          child: CupertinoButton(
            padding: EdgeInsetsDirectional.zero,
            child: Text('Show Picker'),
            onPressed: () => _showDatePicker(context),
          ),
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Text(_chosenDateTime != null
              ? _chosenDateTime.toString()
              : 'No date time picked!'),
        ),
      ),
    );
  }
}
