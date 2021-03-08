import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/User_wallet.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/timelinetile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'Gcash_payment/userPabili_GCASHpayment.dart';
import 'Gcash_payment/user_PabiliGcashPayment.dart';
import 'KpWallet_Payment/user_Pabili_KPWallet.dart';
import 'Paymaya_payment/userPabili_PayMayaPayment.dart';
import 'Paymaya_payment/user_PaymayaPayment.dart';
import 'user_PabiliDropOffInfo.dart';
import 'user_merchantSearch.dart';
import 'user_pabiliPickUpInfo.dart';
import 'user_pabili_summary.dart';

class UserPabiliResponsive extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  UserPabiliResponsive({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _UserPabiliResponsiveState createState() => _UserPabiliResponsiveState();
}

class _UserPabiliResponsiveState extends State<UserPabiliResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Pabili(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
            landscape: (context) => Pabili(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Pabili(
            gcashPaidAmount: widget.gcashPaidAmount,
            kpWalletPaidAmount: widget.kpWalletPaidAmount,
            payMayaPaidAmount: widget.payMayaPaidAmount,
          ),
          landscape: (context) => Pabili(
            gcashPaidAmount: widget.gcashPaidAmount,
            kpWalletPaidAmount: widget.kpWalletPaidAmount,
            payMayaPaidAmount: widget.payMayaPaidAmount,
          ),
        );
      },
    );
  }
}

class Pabili extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  Pabili({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _PabiliState createState() => _PabiliState();
}

class _PabiliState extends State<Pabili> {
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
          body: UserPabili(
            gcashPaidAmount: widget.gcashPaidAmount,
            kpWalletPaidAmount: widget.kpWalletPaidAmount,
            payMayaPaidAmount: widget.payMayaPaidAmount,
          ),
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
                              child:
                                  customListTextGrey("Total Order: ", "138.00"),
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Payment Options:",
                                          style:
                                              CustomTextStyle.textStyleGrey16),
                                    ),
                                    userProvider.pabilikpWallet == true
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: customListTextGrey2(
                                                "KPWallet:",
                                                widget.kpWalletPaidAmount ==
                                                        null
                                                    ? ""
                                                    : widget
                                                        .kpWalletPaidAmount),
                                          )
                                        : SizedBox.shrink(),
                                    userProvider.gCashPabiliPayment == true
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: customListTextGrey2(
                                                "GCash:",
                                                widget.gcashPaidAmount == null
                                                    ? ""
                                                    : widget.gcashPaidAmount),
                                          )
                                        : SizedBox.shrink(),
                                    userProvider.payMayaPabiliPayment == true
                                        ? Padding(
                                            padding: EdgeInsets.only(
                                                top: 10, left: 10),
                                            child: customListTextGrey2(
                                                "PayMaya:",
                                                widget.payMayaPaidAmount == null
                                                    ? ""
                                                    : widget.payMayaPaidAmount),
                                          )
                                        : SizedBox.shrink(),
                                  ],
                                )),
                            // Padding(
                            //   padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                            //   child: customListTextGrey2(
                            //       "Payment method: ", " GCash"),
                            // ),
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
                                  pageRoute(context, UserPabiliSummary());
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

class UserPabili extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  UserPabili({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _UserPabiliState createState() => _UserPabiliState();
}

class _UserPabiliState extends State<UserPabili> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final addMerchants = Provider.of<UserProvider>(context).addMerchant;
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
                    nodeAlign: TimelineNodeAlign.start,
                    contents: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: customTextFieldiCon(
                          (value) {},
                          "Set Drop-off Location",
                          "Set Drop-off Location",
                          GestureDetector(
                            child: Icon(
                              Icons.location_on,
                            ),
                            onTap: () {},
                          ),
                          () {
                            pageRoute(context, UserPabaliDropOffInfo());
                          },
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      indicator: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.5),
                        child: DotIndicator(
                          color: Pallete.kpBlue,
                        ),
                      ),
                      endConnector: DashedLineConnector(
                        color: Pallete.kpGrey,
                      ),
                    ),
                  ),
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    contents: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
                        child: customTextFieldNOicon(
                          (value) {},
                          "Search Merchant Location",
                          "Search Merchant Location",
                          () {},
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      indicator: Icon(
                        Icons.location_on,
                        color: Pallete.kpRed,
                      ),
                      startConnector:
                          DashedLineConnector(color: Pallete.kpGrey),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: customButton4icon(() {}, "Add Another Location", 5,
                        35, Pallete.kpBlue, Pallete.kpBlue, Icons.add_box),
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
                            size: 10,
                          ),
                          Text(
                            userProvider.pabiliPrice == null
                                ? "0.00"
                                : userProvider.pabiliPrice,
                            style: CustomTextStyle.textStyleBlue16,
                          ),
                        ],
                      ),
                    ],
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: customTextFieldMerchant((value) {
                        userProvider.setMerchant(value);
                      }, () {
                        pageRoute(context, UserPabiliMerchantSearch());
                      }, "Merchant"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: customTextFieldOrder((value) {
                        userProvider.setOrder(value);
                      }, "Order"),
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
            PabiliPayment(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
          ],
        ),
      ),
    );
  }
}

class PabiliPayment extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  PabiliPayment({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _PabiliPaymentState createState() => _PabiliPaymentState();
}

class _PabiliPaymentState extends State<PabiliPayment> {
  @override
  Widget build(BuildContext context) {
    bool _checkedValue = false;
    final userProvider = Provider.of<UserProvider>(context);
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Additional Services:",
                style: CustomTextStyle.textStyleGrey18,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardAdditionalServices(
                (value) {
                  userProvider.checkBoxinsulatedBox();
                },
                userProvider.insulatedBox,
                "Insulated Box",
                context,
                () {
                  _showAlertDialog(context);
                },
                () {
                  userProvider.checkBoxinsulatedBox();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardAdditionalServices(
                (value) {
                  userProvider.checkBoxqueingService();
                },
                userProvider.queingService,
                "Queuing Services",
                context,
                () {
                  _showAlertDialog(context);
                },
                () {
                  userProvider.checkBoxqueingService();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardAdditionalServices(
                (value) {
                  userProvider.checkBoxcashHandling();
                },
                userProvider.cashHandling,
                "Cash Handling",
                context,
                () {
                  _showAlertDialog(context);
                },
                () {
                  userProvider.checkBoxcashHandling();
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
                  "Payment Options:",
                  style: CustomTextStyle.textStyleGrey18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardCODpayment(
                (value) {
                  userProvider.checkboxPabiliCOD();
                },
                userProvider.pabiliCODPayment,
                "Cash on Delivery",
                "With abono (Up to 2,000) ",
                userProvider.pabiliCODPayment == true
                    ? () {
                        userProvider.checkboxPabiliCOD();
                      }
                    : () => showGeneralDialog(
                          barrierDismissible: false,
                          context: context,
                          barrierColor: Colors.black54, // space around dialog
                          transitionDuration: Duration(milliseconds: 800),
                          transitionBuilder: (context, a1, a2, child) {
                            return ScaleTransition(
                              scale: CurvedAnimation(
                                  parent: a1,
                                  curve: Curves.elasticOut,
                                  reverseCurve: Curves.easeOutCubic),
                              child: PabiliPaymentSuccessful(
                                title: "Cash On Delivery",
                                content:
                                    "You Choose Cash On Delivery Payment with abono (Up to 2,000)",
                                btnText: "OK",
                                onPressed: () {
                                  pageRouteBack(context);
                                  userProvider.checkboxPabiliCOD();
                                },
                              ),
                            );
                          },
                          pageBuilder: (BuildContext context,
                              Animation animation,
                              Animation secondaryAnimation) {
                            return null;
                          },
                        ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardKPWalletpayment(
                  "KP Wallet",
                  "(Up to 2,000) ",
                  widget.kpWalletPaidAmount == null
                      ? ""
                      : widget.kpWalletPaidAmount, () {
                pageRoute(context, UserPabiliKPWalletPayment());
              }, userProvider.pabilikpWallet),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment2("GCash", "Gcash account ",
                  widget.gcashPaidAmount == null ? "" : widget.gcashPaidAmount,
                  () {
                pageRoute(context, UserPabiliGCASHPayment());
              }, userProvider.gCashPabiliPayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardPaymMayaPayment2(
                  "PayMaya",
                  "PayMaya account ",
                  widget.payMayaPaidAmount == null
                      ? ""
                      : widget.payMayaPaidAmount, () {
                pageRoute(context, UserPabiliPayMayaPayment());
              }, userProvider.payMayaPabiliPayment),
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
