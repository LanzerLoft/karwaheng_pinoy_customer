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
import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_Pabili_Pahatid.dart';
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
import 'user_Pabili_AddMerchant.dart';
import 'user_merchantSearch.dart';
import 'user_pabiliPickUpInfo.dart';
import 'user_pabiliSearchAddress.dart';
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
            // leading: IconButton(
            //   icon: Icon(Icons.arrow_back), // change this size and style
            //   onPressed: () {
            //     pageRoute(context, UserMainDashboard());
            //   },
            // ),
            elevation: 0,
            centerTitle: true,
            title: Text("PABILI", style: CustomTextStyle.textStyleBlue20),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Pallete.kpBlue),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text("1|3",
                          style:
                              TextStyle(fontSize: 16, color: Pallete.kpWhite)),
                    ),
                  ),
                ),
              ),
            ],
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
                              child: customListTextGrey(
                                  "Purchase Service/Pabili Fee: ", "50"),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: customListTextGrey(
                                  "Additional Stop: ", "N/A"),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: customListTextGrey(
                                  "Additional Service: ", "N/A"),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: customListTextGrey(
                                  "Holiday Surcharge: ", "N/A"),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                              child: customListTextGrey("Abono Amount: ", "50"),
                            ),
                            // Padding(
                            //     padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                            //     child: Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         Align(
                            //           alignment: Alignment.centerLeft,
                            //           child: Text("Payment Options:",
                            //               style:
                            //                   CustomTextStyle.textStyleGrey16),
                            //         ),
                            //         userProvider.pabilikpWallet == true
                            //             ? Padding(
                            //                 padding: EdgeInsets.only(
                            //                     top: 10, left: 10),
                            //                 child: customListTextGrey2(
                            //                     "KPWallet:",
                            //                     widget.kpWalletPaidAmount ==
                            //                             null
                            //                         ? ""
                            //                         : widget
                            //                             .kpWalletPaidAmount),
                            //               )
                            //             : SizedBox.shrink(),
                            //         userProvider.gCashPabiliPayment == true
                            //             ? Padding(
                            //                 padding: EdgeInsets.only(
                            //                     top: 10, left: 10),
                            //                 child: customListTextGrey2(
                            //                     "GCash:",
                            //                     widget.gcashPaidAmount == null
                            //                         ? ""
                            //                         : widget.gcashPaidAmount),
                            //               )
                            //             : SizedBox.shrink(),
                            //         userProvider.payMayaPabiliPayment == true
                            //             ? Padding(
                            //                 padding: EdgeInsets.only(
                            //                     top: 10, left: 10),
                            //                 child: customListTextGrey2(
                            //                     "PayMaya:",
                            //                     widget.payMayaPaidAmount == null
                            //                         ? ""
                            //                         : widget.payMayaPaidAmount),
                            //               )
                            //             : SizedBox.shrink(),
                            //       ],
                            //     )),
                            // Padding(
                            //   padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                            //   child: customListTextGrey2(
                            //       "Payment method: ", " GCash"),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 100.0.w,
                        child: FlatButton(
                          onPressed: () {
                            userProvider.pabiliContinue(
                              context,
                            );
                          },
                          color: Pallete.kpBlue,
                          child: Text(
                            "${userProvider.addOrderPabili.length} Items Added | Continue",
                            style: CustomTextStyle.textStyleWhitebold16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            FlatButton.icon(
                              onPressed: () {
                                print("SAVE AS DRAFT");
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              label: Text(
                                'Save as Draft',
                                style: TextStyle(
                                    color: Pallete.kpGrey, fontSize: 16),
                              ),
                              icon: Icon(
                                Icons.file_present,
                                color: Pallete.kpGrey,
                              ),
                            ),
                            FlatButton.icon(
                              onPressed: () {
                                print("SAVE AS DRAFT");
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5.0),
                                ),
                              ),
                              label: Text(
                                'Erase',
                                style: TextStyle(
                                    color: Pallete.kpGrey, fontSize: 16),
                              ),
                              icon: Icon(
                                Icons.remove_circle_outline,
                                color: Pallete.kpGrey,
                              ),
                            ),
                          ],
                        ),
                      ),
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
  TextEditingController merchant = TextEditingController();
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
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: orderNowOrderLaterButton(context),
            ),
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
                        () {
                          // pageRoute(context, UserPabiliSearchAddress());
                        },
                      ),
                    ),
                  ),
                  node: TimelineNode(
                    indicator: Icon(
                      Icons.location_on,
                      color: Pallete.kpRed,
                    ),
                    startConnector: DashedLineConnector(color: Pallete.kpGrey),
                  ),
                ),
                AddMerchant(),
              ],
            ),
            userProvider.anotherLocation == true
                ? Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: customButtonAnotherLoc(() {
                        userProvider.addAnotherLocation();
                      }, "Cancel Another Location", 5, 35, Pallete.kpRed,
                          Pallete.kpRed, Icons.add_circle),
                    ),
                  )
                : Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: customButtonAnotherLoc(() {
                        userProvider.addAnotherLocation();
                      }, "Add Another Location", 5, 35, Pallete.kpYellow,
                          Pallete.kpYellow, Icons.add_circle),
                    ),
                  ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Divider(),
            ),
            userProvider.anotherLocation == true
                ? Column(
                    children: [
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4.5),
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
                                padding: EdgeInsets.only(
                                    top: 15, left: 10, bottom: 15),
                                child: customTextFieldNOicon(
                                  (value) {},
                                  "Search Merchant Location",
                                  "Search Merchant Location",
                                  () {
                                    // pageRoute(
                                    //     context, UserPabiliSearchAddress());
                                  },
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
                          AddMerchant2(),
                        ],
                      ),
                    ],
                  )
                : SizedBox.shrink(),
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
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Align(
        //       alignment: Alignment.centerLeft,
        //       child: Text(
        //         "Additional Services:",
        //         style: CustomTextStyle.textStyleGrey18,
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(top: 15),
        //       child: customCardAdditionalServices(
        //         (value) {
        //           userProvider.checkBoxinsulatedBox();
        //         },
        //         userProvider.insulatedBox,
        //         "Insulated Box",
        //         context,
        //         () {
        //           _showAlertDialog(context);
        //         },
        //         () {
        //           userProvider.checkBoxinsulatedBox();
        //         },
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(top: 5),
        //       child: customCardAdditionalServices(
        //         (value) {
        //           userProvider.checkBoxqueingService();
        //         },
        //         userProvider.queingService,
        //         "Queuing Services",
        //         context,
        //         () {
        //           _showAlertDialog(context);
        //         },
        //         () {
        //           userProvider.checkBoxqueingService();
        //         },
        //       ),
        //     ),
        //     Padding(
        //       padding: EdgeInsets.only(top: 5),
        //       child: customCardAdditionalServices(
        //         (value) {
        //           userProvider.checkBoxcashHandling();
        //         },
        //         userProvider.cashHandling,
        //         "Cash Handling",
        //         context,
        //         () {
        //           _showAlertDialog(context);
        //         },
        //         () {
        //           userProvider.checkBoxcashHandling();
        //         },
        //       ),
        //     ),
        //   ],
        // ),
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
              child: customCardCODNEWpayment(
                  (value) {},
                  userProvider.ammount,
                  userProvider.pabiliCODPayment,
                  "C.O.D with Abono",
                  "Up to ₱2,000",
                  () {},
                  ""),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardKPWalletpayment(
                  "KP Wallet",
                  "Up to ₱2,000",
                  widget.kpWalletPaidAmount == null
                      ? ""
                      : widget.kpWalletPaidAmount, () {
                pageRoute(context, UserPabiliKPWalletPayment());
              }, userProvider.pabilikpWallet),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment2("GCash", "",
                  widget.gcashPaidAmount == null ? "" : widget.gcashPaidAmount,
                  () {
                pageRoute(context, UserPabiliGCASHPayment());
              }, userProvider.gCashPabiliPayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardPaymMayaPayment2(
                  "PayMaya",
                  "",
                  widget.payMayaPaidAmount == null
                      ? ""
                      : widget.payMayaPaidAmount, () {
                pageRoute(context, UserPabiliPayMayaPayment());
              }, userProvider.payMayaPabiliPayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.0.w,
                    child: customTextFieldReferralCodePabili(
                        (value) {}, Pallete.kpBlue),
                  ),
                  Container(
                    width: 45.0.w,
                    child: customTextFieldPromoCodePabili(
                        (value) {}, Pallete.kpBlue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customButtonApply(() {}, "Apply", 5, 35.0.w, 35,
                  Pallete.kpYellow, Pallete.kpYellow),
            ),
          ],
        ),
      ],
    );
  }
}
