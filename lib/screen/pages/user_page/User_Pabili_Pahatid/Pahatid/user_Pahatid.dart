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
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/userPabili_GCASHpayment.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_pabiliPickUpInfo.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'Gcash_payment/userPahatid_GCASHpayment.dart';
import 'Gcash_payment/user_gcashPayment.dart';
import 'KpWallet_Payment/user_Pahatid_KPWallet.dart';
import 'Paymaya_payment/userPabili_PayMayaPayment.dart';
import 'Paymaya_payment/user_PaymayaPayment.dart';
import 'user_pahatidDropOffInfo .dart';
import 'user_pahatidPickUpInfo.dart';
import 'user_pahatid_summary.dart';

class UserPahatidResponsive extends StatefulWidget {
  @override
  _UserPahatidResponsiveState createState() => _UserPahatidResponsiveState();
}

class _UserPahatidResponsiveState extends State<UserPahatidResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Pahatid(),
            landscape: (context) => Pahatid(),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Pahatid(),
          landscape: (context) => Pahatid(),
        );
      },
    );
  }
}

class Pahatid extends StatefulWidget {
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
          bottom: customTabBarPahatid(
            "One-Way",
            "Round Trip",
          ),
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
        body: UserPahatid(),
      ),
    );
  }
}

class UserPahatid extends StatefulWidget {
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
                            child: customTextFieldiCon(
                              (value) {},
                              "Set Pick-up Location",
                              "Set Pick-up Location",
                              GestureDetector(
                                  child: Icon(Icons.keyboard_arrow_down),
                                  onTap: () {}),
                              () {
                                pageRoute(context, UserPahatidPickUpInfo());
                              },
                            ),
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
                            padding: EdgeInsets.only(top: 15, left: 10),
                            child: customTextFieldiCon(
                              (value) {},
                              "Drop Off Location",
                              "Drop Off Location",
                              IconButton(
                                icon: Icon(Icons.remove_circle),
                                onPressed: () {},
                              ),
                              () {
                                pageRoute(context, UserPahatidDropInfo());
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: customButton4icon(() {
                            userProvider.addTextfield(context);
                          }, "Add Drop Off location", 5, 35, Pallete.kpBlue,
                              Pallete.kpBlue, Icons.add_box),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: PahatidPayment(),
            ),
          ],
        ),
      ),
    );
  }
}

class PahatidPayment extends StatefulWidget {
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
                "Additional Services",
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
                  "Payment Options",
                  style: CustomTextStyle.textStyleGrey18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: customCardCODpaymentPahatid(
                (value) {
                  userProvider.checkboxPabiliCOD();
                },
                userProvider.pabiliCODPayment,
                "Cash on Pickup",
                "Cash on Pickup",
                () {
                  userProvider.checkboxPabiliCOD();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardCODpayment(
                (value) {
                  userProvider.checkboxPahatidCOD();
                },
                userProvider.pahatidCODPayment,
                "Cash on Delivery",
                "With abono (Up to 2,000) ",
                () {
                  userProvider.checkboxPahatidCOD();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child:
                  customCardKPWalletpayment("KP Wallet", "(Up to 2,000) ", () {
                pageRoute(context, UserPahatidKPWalletPayment());
              }, userProvider.pahatidkpWallet),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment2("GCash", "Gcash account ", () {
                pageRoute(context, UserPahatidGCASHPayment());
              }, userProvider.gCashPahatidPayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child:
                  customCardPaymMayaPayment2("PayMaya", "PayMaya account ", () {
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
