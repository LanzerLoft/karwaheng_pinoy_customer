import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'Gcash_payment/userPahatid_GCASHpayment.dart';
import 'KpWallet_Payment/user_Pahatid_KPWallet.dart';
import 'Paymaya_payment/userPahatid_PayMayaPayment.dart';
import 'user_pahatidDropOffInfo .dart';
import 'user_pahatidPickUpInfo.dart';
import 'user_pahatid_summary.dart';

class UserPahatidResponsive extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  UserPahatidResponsive({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _UserPahatidResponsiveState createState() => _UserPahatidResponsiveState();
}

class _UserPahatidResponsiveState extends State<UserPahatidResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Pahatid(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
            landscape: (context) => Pahatid(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Pahatid(
            gcashPaidAmount: widget.gcashPaidAmount,
            kpWalletPaidAmount: widget.kpWalletPaidAmount,
            payMayaPaidAmount: widget.payMayaPaidAmount,
          ),
          landscape: (context) => Pahatid(
            gcashPaidAmount: widget.gcashPaidAmount,
            kpWalletPaidAmount: widget.kpWalletPaidAmount,
            payMayaPaidAmount: widget.payMayaPaidAmount,
          ),
        );
      },
    );
  }
}

class Pahatid extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  Pahatid({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _PahatidState createState() => _PahatidState();
}

class _PahatidState extends State<Pahatid> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return DefaultTabController(
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
          title: Text(
            "Pahatid",
            style: CustomTextStyle.textStyleBlue18,
          ),
          // bottom:
          //  customTabBarPahatid(
          //   "One-Way",
          //   "Round Trip",
          //   () {
          //     print("oneway");
          //   },
          //   () {
          //     print("roundtrip");
          //   },
          // ),
        ),
        backgroundColor: Pallete.kpWhite,
        bottomNavigationBar: BottomAppBar(
          color: Pallete.kpWhite,
          child: SafeArea(
            bottom: true,
            maintainBottomViewPadding: true,
            child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
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
                                "Payment Options: ", " GCash"),
                          ),
                        ],
                      ),
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
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
                            width: 150,
                            child: FlatButton(
                              onPressed: () {
                                pageRoute(context, UserPahatidSummary());
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
        body: UserPahatid(
          gcashPaidAmount: widget.gcashPaidAmount,
          kpWalletPaidAmount: widget.kpWalletPaidAmount,
          payMayaPaidAmount: widget.payMayaPaidAmount,
        ),
      ),
    );
  }
}

class UserPahatid extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  UserPahatid({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _UserPahatidState createState() => _UserPahatidState();
}

class _UserPahatidState extends State<UserPahatid> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final addTextfields = Provider.of<UserProvider>(context).addTextfields;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: CustomConSize.mobile,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: oneWayRoundTripButton(context),
                ),
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
                              "Set Pickup Location",
                              "Set Pickup Location",
                              IconButton(
                                icon: Icon(
                                  Icons.location_on,
                                ),
                                onPressed: () {},
                              ),
                              () {
                                pageRoute(context, UserPahatidPickUpInfo());
                              },
                            ),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.5),
                            child: DotIndicator(
                              color: Pallete.kpBlue,
                            ),
                          ),
                          endConnector: DashedLineConnector(
                            gap: 3,
                            color: Pallete.kpGrey,
                          ),
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          Widget widget = addTextfields.elementAt(index);
                          return widget;
                        },
                        itemCount: addTextfields.length,
                      ),
                      TimelineTile(
                        nodeAlign: TimelineNodeAlign.start,
                        contents: Container(
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 15, left: 10, bottom: 15),
                            child: customlocationTextField(
                              (value) {},
                              "Set Drop-off Location",
                              "Set Drop-off Location",
                              () {
                                pageRoute(context, UserPahatidDropInfo());
                              },
                              () {
                                print("REMOVE");
                              },
                            ),
                          ),
                        ),
                        node: TimelineNode(
                          indicator: Icon(
                            Icons.location_on,
                            color: Pallete.kpRed,
                          ),
                          startConnector: DashedLineConnector(
                            gap: 3,
                            color: Pallete.kpGrey,
                          ),
                        ),
                      ),
                      userProvider.addTextfields.length == 19
                          ? SizedBox.shrink()
                          : Align(
                              alignment: Alignment.centerRight,
                              child: customButton4icon(() {
                                userProvider.addTextfield(context);
                                userProvider.maxLocation(context);
                              }, "Add Drop-off Location", 5, 35, Pallete.kpBlue,
                                  Pallete.kpBlue, Icons.add_box),
                            ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: PahatidPayment(
                gcashPaidAmount: widget.gcashPaidAmount,
                kpWalletPaidAmount: widget.kpWalletPaidAmount,
                payMayaPaidAmount: widget.payMayaPaidAmount,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PahatidPayment extends StatefulWidget {
  final String gcashPaidAmount;
  final String payMayaPaidAmount;
  final String kpWalletPaidAmount;

  PahatidPayment({
    Key key,
    this.gcashPaidAmount,
    this.payMayaPaidAmount,
    this.kpWalletPaidAmount,
  }) : super(key: key);
  @override
  _PahatidPaymentState createState() => _PahatidPaymentState();
}

class _PahatidPaymentState extends State<PahatidPayment> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    bool _checkedValue = false;

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
                  showAlertDialog(context);
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
                  showAlertDialog(context);
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
                  showAlertDialog(context);
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
              child: customCardCODpaymentPahatid(
                (value) {},
                userProvider.pahatidCOPPayment,
                "Cash on Pickup",
                "Cash on Pickup",
                userProvider.pahatidCOPPayment == true
                    ? () {
                        userProvider.checkBoxPahatidCOP();
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
                                title: "Cash On Pickup",
                                content: "You Choose Cash On Pickup",
                                btnText: "OK",
                                onPressed: () {
                                  pageRouteBack(context);
                                  userProvider.checkBoxPahatidCOP();
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
              child: customCardCODNEWpayment(
                (value) {},
                userProvider.ammount,
                userProvider.pabiliCODPayment,
                "C.O.D with Abono",
                "Petty cash on hand:",
                () {},
                "",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardKPWalletpayment(
                  "KP Wallet",
                  "With abono (Up to ₱2,000)",
                  widget.kpWalletPaidAmount == null
                      ? ""
                      : widget.kpWalletPaidAmount, () {
                pageRoute(context, UserPahatidKPWalletPayment());
              }, userProvider.pahatidkpWallet),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment2("GCash", "Gcash account ",
                  widget.gcashPaidAmount == null ? "" : widget.gcashPaidAmount,
                  () {
                pageRoute(context, UserPahatidGCASHPayment());
              }, userProvider.gCashPahatidPayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardPaymMayaPayment2(
                  "PayMaya",
                  "PayMaya account ",
                  widget.payMayaPaidAmount == null
                      ? ""
                      : widget.payMayaPaidAmount, () {
                pageRoute(context, UserPahatidPayMayaPayment());
              }, userProvider.payMayaPahatidPayment),
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

showAlertDialog(BuildContext context) {
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
