import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_kpWallet.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'Paymaya_payment/user_PaymayaPayment.dart';
import 'seller_PabiliDropOffInfo.dart';
import 'seller_pabiliPickUpInfo.dart';
import 'seller_pabili_summary.dart';

class SellerPabiliResponsive extends StatefulWidget {
  @override
  _SellerPabiliResponsiveState createState() => _SellerPabiliResponsiveState();
}

class _SellerPabiliResponsiveState extends State<SellerPabiliResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => SellerPabili(),
            landscape: (context) => SellerPabili(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => SellerPabili(),
          landscape: (context) => SellerPabili(),
        );
      },
    );
  }
}

class SellerPabili extends StatefulWidget {
  @override
  _SellerPabiliState createState() => _SellerPabiliState();
}

class _SellerPabiliState extends State<SellerPabili> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Pallete.kpBlue,
            ),
            backgroundColor: Pallete.kpWhite,
            elevation: 0,
            centerTitle: true,
            title: Text("Pabili", style: CustomTextStyle.textStyleBlue18),
          ),
          backgroundColor: Pallete.kpWhite,
          body: SellerPabiliLocation(),
          bottomNavigationBar: BottomAppBar(
            color: Pallete.kpWhite,
            child: SafeArea(
              bottom: true,
              maintainBottomViewPadding: true,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ExpansionTile(
                          tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Bill",
                                style: CustomTextStyle.textStyleBlue22,
                              ),
                              customListTextPesoBalance("188"),
                            ],
                          ),
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: customListTextGrey("Total Order: ", "138"),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 25),
                              child: customListTextGrey("Delivery Fee: ", "50"),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                              child: customListTextGrey2(
                                  "Additional Service: ", "N/A"),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                              child: customListTextGrey2(
                                  "Payment method: ", " GCash"),
                            ),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 40.0.w,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  userProvider.totalBillExpanded();
                                  print("heyy");
                                },
                                color: Pallete.kpYellow,
                                child: Text(
                                  "Order Later",
                                  style: CustomTextStyle.textStyleWhitebold16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            Container(
                              width: 40.0.w,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  pageRoute(context, SellerPabiliSummary());
                                },
                                color: Pallete.kpRed,
                                child: Text(
                                  "Order Now",
                                  style: CustomTextStyle.textStyleWhitebold16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SellerPabiliLocation extends StatefulWidget {
  @override
  _SellerPabiliLocationState createState() => _SellerPabiliLocationState();
}

class _SellerPabiliLocationState extends State<SellerPabiliLocation> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final addMerchants = Provider.of<UserProvider>(context).addMerchant;
    final addNotes = Provider.of<UserProvider>(context).addNote;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
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
            customCard(
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimelineTile(
                    alignment: TimelineAlign.start,
                    afterLineStyle:
                        LineStyle(color: Pallete.kpGrey, thickness: 2),
                    lineXY: 0.06,
                    isFirst: true,
                    indicatorStyle: IndicatorStyle(
                      width: 20,
                      color: Pallete.kpBlue,
                    ),
                    endChild: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: customTextFieldNOicon(
                          (value) {},
                          "Set Drop-off Location",
                          "Set Drop-off Location",
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SellerPabaliDropOffInfo()));
                          },
                        ),
                      ),
                    ),
                  ),
                  TimelineTile(
                    alignment: TimelineAlign.start,
                    beforeLineStyle:
                        LineStyle(color: Pallete.kpGrey, thickness: 2),
                    lineXY: 0.06,
                    isLast: true,
                    indicatorStyle: IndicatorStyle(
                      width: 20,
                      color: Colors.white,
                      iconStyle: IconStyle(
                        fontSize: 30,
                        color: Pallete.kpRed,
                        iconData: Icons.location_on,
                      ),
                    ),
                    endChild: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
                        child: customTextFieldNOicon(
                          (value) {},
                          "Search Merchant Location",
                          "Search Merchant Location",
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SellerPabiliPickUpInfo()));
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: customButton4icon(() {
                      userProvider.addMerchants(context);
                    }, "Add Another Location", 5, 35, Pallete.kpBlue,
                        Pallete.kpBlue, Icons.add_box),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            customCardPabili(
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  maintainState: true,
                  tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  onExpansionChanged: (value) {},
                  subtitle: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      userProvider.pabiliMerchant == null
                          ? "Merchant"
                          : userProvider.pabiliMerchant,
                      style: CustomTextStyle.textStyleGrey14,
                    ),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            userProvider.pabiliOrder == null
                                ? "Order"
                                : userProvider.pabiliOrder,
                            style: CustomTextStyle.textStyleBlue16,
                            overflow: userProvider.totalBillExpand == true
                                ? TextOverflow.visible
                                : TextOverflow.visible,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/payment_icons/pesoicon.png"),
                            color: Pallete.kpBlue,
                            size: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                            child: Text(
                              userProvider.pabiliPrice == null
                                  ? "0.00"
                                  : userProvider.pabiliPrice,
                              style: CustomTextStyle.textStyleBlue16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: customTextFieldOrder((value) {
                        userProvider.setOrder(value);
                      }, "Order"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: customTextFieldMerchant((value) {
                        userProvider.setMerchant(value);
                      }, "Merchant"),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: customTextFieldPrice((value) {
                          userProvider.setPrice(value);
                        }, "Price")),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: customTextFieldSpecNotes(
                          (value) {}, "Put specific notes here"),
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                Widget widget = addMerchants.elementAt(index);
                return Dismissible(
                  // Show a red background as the item is swiped away.
                  background: Container(color: Colors.red),
                  key: Key(addMerchants.toString()),
                  onDismissed: (direction) {
                    setState(() {
                      addMerchants.removeAt(index);
                    });

                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("${addMerchants.length} dismissed")));
                  },
                  child: widget,
                );
              },
              itemCount: addMerchants.length,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: customButton4icon(() {
                  userProvider.addMerchants(context);
                }, "Add Merchant", 5, 35, Pallete.kpBlue, Pallete.kpBlue,
                    Icons.add_box),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: customTextFieldNotes((value) {}, "Notes here"),
            ),
            SellerPabiliPayment(),
          ],
        ),
      ),
    );
  }
}

class SellerPabiliPayment extends StatefulWidget {
  @override
  _SellerPabiliPaymentState createState() => _SellerPabiliPaymentState();
}

class _SellerPabiliPaymentState extends State<SellerPabiliPayment> {
  @override
  Widget build(BuildContext context) {
    bool _checkedValue = false;

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Additional Services",
                style: CustomTextStyle.textStyleGrey18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardAdditionalServices(
                (value) {},
                _checkedValue,
                "Insulated Box",
                context,
                () {
                  _showAlertDialog(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: customCardAdditionalServices(
                (value) {
                  setState(() {
                    _checkedValue = !_checkedValue;
                  });
                },
                _checkedValue,
                "Queuing Services",
                context,
                () {
                  _showAlertDialog(context);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardAdditionalServices(
                (value) {
                  setState(() {
                    _checkedValue = _checkedValue;
                  });
                },
                _checkedValue,
                "Cash Handling",
                context,
                () {
                  _showAlertDialog(context);
                },
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Payment Options",
                  style: CustomTextStyle.textStyleGrey18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardCODpayment(
                  "Cash on Delivery", "With abono (Up to 2,000) ", () {}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardCODpayment(
                  "Cash on Delivery", "With abono (Up to 2,000) ", () {}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardKPWalletpayment(
                  "KP Wallet", "(Up to 2,000) ", () {}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment("GCash", "Gcash account ", () {}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardPaymMayaPayment(
                  "PayMaya", "PayMaya account ", () {}),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 55.0.w,
                    child: customTextFieldPromoCodePabili(
                        (value) {}, Pallete.kpBlue),
                  ),
                  customButton2(() {}, "Apply", 5, 35.0.w, 40, Pallete.kpBlue,
                      Pallete.kpBlue),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

_showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget _tabBar() {
  return TabBar(
    indicatorColor: Colors.red,
    tabs: [
      Tab(
        text: "One-Way",
      ),
      Tab(
        text: "Round Trip",
      ),
    ],
    labelColor: Colors.white,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpBlue,
      bottomLeftRadius: 25,
      bottomRightRadius: 25,
      topLeftRadius: 25,
      topRightRadius: 25,
    ),
  );
}
