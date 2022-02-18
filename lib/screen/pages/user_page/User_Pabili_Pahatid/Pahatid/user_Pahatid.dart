import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
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
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_repositionpage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';
import 'COD_payment/userPahatid_CODPaymentOnly.dart';
import 'COP_payment/userPahatid_COPOtherPayment.dart';
import 'COP_payment/userPahatid_COPPaymentOnly.dart';
import 'Gcash_payment/userPahatid_GCASHOnly.dart';
import 'Gcash_payment/userPahatid_GcashSteps.dart';
import 'KpWallet_Payment/userPahatid_KPWalletOnly.dart';
import 'Paymaya_payment/userPahatid_PaymayaOnly.dart';
import 'Paymaya_payment/userPahatid_PaymayaSteps.dart';
import 'user_pahatidDropOffInfo .dart';
import 'user_pahatidPickUpInfo.dart';
import 'user_pahatid_Bookingsummary.dart';

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
    final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
    return WillPopScope(
      onWillPop: () => userPahatidProvider.saveAsDraftPahatid(context),
      child: GestureDetector(
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
              title: Text(
                "PAHATID",
                style: CustomTextStyle.textStyleBlue18,
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
                        child: Text("1|3",
                            style: TextStyle(
                                fontSize: 16, color: Pallete.kpWhite)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Pallete.kpWhite,
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
                                child: customListTextGrey(
                                    "Total Order: ", "138.00"),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: customListTextGrey(
                                    "Additional Stop: ", "N/A"),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:
                                    customListTextGrey("Queing Fee: ", "N/A"),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: customListTextGrey(
                                    "Afterhours Surcharge: ", "N/A"),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(8, 8, 8, 35),
                                child: customListTextGrey(
                                    "Holiday Surcharge: ", "N/A"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 100.0.w,
                          child: FlatButton(
                            onPressed: () {
                              pageRoute(context, UserPahatidBoookingSummary());
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
                                  print("ERASE");
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
            body: UserPahatid(
              gcashPaidAmount: widget.gcashPaidAmount,
              kpWalletPaidAmount: widget.kpWalletPaidAmount,
              payMayaPaidAmount: widget.payMayaPaidAmount,
            ),
          ),
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
    final pahatidProvider = Provider.of<UserPahatidProvider>(context);
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
                  child: orderNowOrderLaterButtonPahatid(context),
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
                          padding: const EdgeInsets.symmetric(horizontal: 4.5),
                          child: OutlinedDotIndicator(),
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
                        Widget widget =
                            pahatidProvider.addTextfields.elementAt(index);
                        return widget;
                      },
                      itemCount: pahatidProvider.addTextfields.length,
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
                        indicator: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: OutlinedDotIndicator(
                            color: Pallete.kpNoticeYellow,
                            child: Container(
                              height: 12,
                              width: 12,
                              child: Image.asset(
                                "assets/payment_icons/pesoicon.png",
                                filterQuality: FilterQuality.high,
                                color: Pallete.kpBlue,
                              ),
                            ),
                          ),
                        ),
                        startConnector: DashedLineConnector(
                          gap: 3,
                          color: Pallete.kpGrey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            pageRoute(context, ReorderableViewPage());
                            print("reposition clicked");
                          },
                          child: Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                child: Image.asset(
                                  "assets/pahatid_icons/reposition_icon.png",
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Text("Reposition",
                                  style: CustomTextStyle.textStyleBlue16),
                            ],
                          ),
                        ),
                        userProvider.addTextfields.length == 19
                            ? SizedBox.shrink()
                            : Align(
                                alignment: Alignment.centerRight,
                                child: customButtonAddDropOff(() {
                                  pahatidProvider.addTextfield(context);
                                  pahatidProvider.maxLocation(context);
                                },
                                    "Add Drop-off Location",
                                    5,
                                    35,
                                    Pallete.kpBlue,
                                    Pallete.kpBlue,
                                    Icons.add_circle_rounded),
                              ),
                      ],
                    ),
                  ],
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
    final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
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
                style: CustomTextStyle.textStyleBlue18,
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
                  _showAlertInsulatedBox(context);
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
                  _showAlertQueuingServices(
                    context,
                  );
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
                  _showAlertCashhandling(
                    context,
                  );
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
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Payment Options:",
                  style: CustomTextStyle.textStyleBlue18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: pahatidCOPpayment(
                (value) {},
                userProvider.ammount,
                userPahatidProvider.pahatidCOPpayment,
                "Cash on Pickup",
                () {
                  pageRoute(context, UserPahatidCOPPaymentOnly());
                },
                "",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: pahatidCODpayment(
                (value) {},
                userProvider.ammount,
                userPahatidProvider.pahatidCODpayment,
                "Cash on Delivery",
                () {
                  pageRoute(context, UserPahatidCODPaymentOnly());
                },
                "",
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardKPWalletpayment(
                  "KP Wallet",
                  "Up to ₱2,000",
                  widget.kpWalletPaidAmount == null
                      ? ""
                      : widget.kpWalletPaidAmount, () {
                pageRoute(context, UserPahatidKPWalletOnly());
              }, userPahatidProvider.pahatidKPWALLETpayment),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardGCASHpayment2(
                "GCash",
                "Gcash account ",
                widget.gcashPaidAmount == null ? "" : widget.gcashPaidAmount,
                () {
                  pageRoute(context, UserPahatidGCASHOnly());
                },
                userPahatidProvider.pahatidGCASHpayment,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: customCardPaymMayaPayment2(
                "PayMaya",
                "PayMaya account ",
                widget.payMayaPaidAmount == null
                    ? ""
                    : widget.payMayaPaidAmount,
                () {
                  pageRoute(context, UserPahatidPaymayaOnly());
                },
                userPahatidProvider.pahatidPAYMAYApayment,
              ),
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
              child: GestureDetector(
                onTap: () {
                  print("apply clicked");
                },
                child: Container(
                  height: 35,
                  width: 35.0.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Pallete.kpNoticeYellow,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Center(
                      child: Text("Apply",
                          style: CustomTextStyle.textStyleBlack16),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      style: TextStyle(color: Pallete.kpGrey, fontSize: 16),
                    ),
                    icon: Icon(
                      Icons.file_present,
                      color: Pallete.kpGrey,
                    ),
                  ),
                  FlatButton.icon(
                    onPressed: () {
                      print("ERASE");
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    label: Text(
                      'Erase',
                      style: TextStyle(color: Pallete.kpGrey, fontSize: 16),
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
      ],
    );
  }
}

showAlertDialog(BuildContext context, String title, String content) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(content),
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

_showAlertResposition(BuildContext context) {
  // Create button
  List<String> _item = [
    "Clients",
    "apple",
    "Designer",
    "Developer",
    "Director",
    "Employee",
    "Manager",
    "Worker",
    "Owner"
  ];


  
  void reorderData(int oldindex, int newindex) {
    if (newindex > oldindex) {
      newindex -= 2;
    }
    final items = _item.removeAt(oldindex);
    _item.insert(newindex, items);
    print(_item);
  }

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    scrollable: true,
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        ReorderableListView(
          children: <Widget>[
            for (final items in _item)
              Container(
                width: 50,
                height: 50,
                child: Card(
                  color: Colors.blueGrey,
                  key: ValueKey(items),
                  elevation: 2,
                  child: ListTile(
                    title: Text(items),
                    leading: Icon(
                      Icons.work,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
          ],
          onReorder: reorderData,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            height: 35,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Pallete.kpBlue,
              child:
                  Text("Apply Change", style: CustomTextStyle.textStyleWhite16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

_showAlertInsulatedBox(BuildContext context) {
  // Create button

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    scrollable: true,
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "assets/pahatid_icons/insulatedBox.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Secures and insulates your parcel - always FREE!",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            height: 35,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Pallete.kpBlue,
              child: Text("Close", style: CustomTextStyle.textStyleWhite16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );

}

_showAlertQueuingServices(BuildContext context) {
  // Create button

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    scrollable: true,
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "assets/pahatid_icons/queuingServices.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "We can fall in line to complete a delivery, bill or a payment service in your behalf.",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            height: 35,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Pallete.kpBlue,
              child: Text("Close", style: CustomTextStyle.textStyleWhite16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

_showAlertCashhandling(BuildContext context) {
  // Create button

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    scrollable: true,
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "assets/pahatid_icons/cashHandling.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "Let's you deliver payments and cash to a recipient up to ₱10,000",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            height: 35,
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              color: Pallete.kpBlue,
              child: Text("Close", style: CustomTextStyle.textStyleWhite16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
