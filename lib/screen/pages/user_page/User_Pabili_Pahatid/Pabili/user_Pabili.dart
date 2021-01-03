import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
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
import 'Gcash_payment/user_PabiliGcashPayment.dart';
import 'Paymaya_payment/user_PaymayaPayment.dart';
import 'user_pabiliPickUpInfo.dart';

class UserPabiliResponsive extends StatefulWidget {
  @override
  _UserPabiliResponsiveState createState() => _UserPabiliResponsiveState();
}

class _UserPabiliResponsiveState extends State<UserPabiliResponsive> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 10.0.h),
                  child: UserPabili(),
                ),
              ),
            ),
            landscape: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: UserPabili(),
                ),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Pabili(),
          landscape: (context) => Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
                child: UserPabili(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Pabili extends StatefulWidget {
  @override
  _PabiliState createState() => _PabiliState();
}

class _PabiliState extends State<Pabili> {
  @override
  int _cIndex = 0;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Pallete.kpBlue,
          child: SafeArea(
            bottom: true,
            maintainBottomViewPadding: true,
            child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TOTAL BILL",
                          style: CustomTextStyle.textStyleWhite20,
                        ),
                        Text(
                          "P 150",
                          style: CustomTextStyle.textStyleWhite24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: FlatButton(
                              onPressed: () {
                                print("heyy");
                              },
                              color: Pallete.kpYellow,
                              child: Text(
                                "Order Later",
                                style: CustomTextStyle.textStyleBlack14,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: FlatButton(
                              onPressed: () {},
                              color: Pallete.kpRed,
                              child: Text(
                                "Order Now",
                                style: CustomTextStyle.textStyleWhite14,
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpWhite,
          ),
          backgroundColor: Pallete.kpBlue,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Pabili",
            style: CustomTextStyle.textStyleWhite18,
          ),
          // bottom: _tabBar(),
        ),
        body: UserPabili(),
      ),
    );
  }
}

class UserPabili extends StatefulWidget {
  @override
  _UserPabiliState createState() => _UserPabiliState();
}

class _UserPabiliState extends State<UserPabili> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: 16,
          ),
        ),
        child: Samples(),
      ),
    );
  }
}

class Samples extends StatefulWidget {
  @override
  _SamplesState createState() => _SamplesState();
}

class _SamplesState extends State<Samples> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final addMerchants = Provider.of<UserProvider>(context).addMerchant;
    final addNotes = Provider.of<UserProvider>(context).addNote;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        customCard(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TimelineTile(
                alignment: TimelineAlign.start,
                afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
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
                      "Set Drop Off Location",
                      "Set Drop Off Location",
                      () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UserPabiliPickUpInfo()));
                      },
                    ),
                  ),
                ),
              ),
              TimelineTile(
                alignment: TimelineAlign.start,
                beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
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
                    child: customTextFieldNOicon(
                      (value) {},
                      "Search Merchant Location",
                      "Search Merchant Location",
                      () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => UserPabiliPickUpInfo()));
                      },
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            child: Text("Order"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                                color: Pallete.kpYellow,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 85,
                            height: 35,
                            child: TextFormField(
                              enableSuggestions: true,
                              style: TextStyle(color: Pallete.kpBlue),
                              onChanged: (value) {},
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text("Merchant"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                                color: Pallete.kpYellow,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 85,
                            height: 35,
                            child: TextFormField(
                              enableSuggestions: true,
                              style: TextStyle(color: Pallete.kpBlue),
                              onChanged: (value) {},
                              autofocus: false,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Text("Price"),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                                color: Pallete.kpYellow,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          Container(
                            width: 85,
                            height: 35,
                            child: TextFormField(
                              enableSuggestions: true,
                              style: TextStyle(color: Pallete.kpBlue),
                              onChanged: (value) {},
                              autofocus: false,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.grey),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                              ),
                            ),
                          ),
                        ],
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
                  return widget;
                },
                itemCount: addMerchants.length,
              ),
              Row(
                children: [
                  flatButtonIcon(
                    Icon(
                      Icons.add_circle,
                      color: Pallete.kpBlue,
                    ),
                    "Add Note",
                    () {
                      userProvider.addNotes();
                      print("Add Notes");
                    },
                  ),
                  flatButtonIcon(
                    Icon(
                      Icons.add_circle,
                      color: Pallete.kpBlue,
                    ),
                    "Add Merchant",
                    () {
                      userProvider.addMerchants();
                      print("Add merchant");
                    },
                  ),
                ],
              ),
              customTextField((value) {}, "Notes Here"),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Widget widget = addNotes.elementAt(index);
                  return widget;
                },
                itemCount: addNotes.length,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: flatButtondotIcon(
            Icon(
              Icons.add_circle,
              color: Pallete.kpYellow,
            ),
            Text("Add Another Location"),
            () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 60),
          child: Checkboxed(),
        ),
      ],
    );
  }
}

class Checkboxed extends StatefulWidget {
  @override
  _CheckboxedState createState() => _CheckboxedState();
}

class _CheckboxedState extends State<Checkboxed> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    bool _checkedValue = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "ADDITIONAL SERVICES",
              style: CustomTextStyle.textStyleBlue13,
            ),
            customChecbox(
              (value) {},
              _checkedValue,
              "Insulated Box",
              context,
              () {
                showAlertDialog(context);
              },
            ),
            customChecbox(
              (value) {
                setState(() {
                  _checkedValue = !_checkedValue;
                });
              },
              _checkedValue,
              "Queuing Services",
              context,
              () {
                showAlertDialog(context);
              },
            ),
            customChecbox(
              (value) {
                setState(() {
                  _checkedValue = _checkedValue;
                });
              },
              _checkedValue,
              "Cash Handling",
              context,
              () {
                showAlertDialog(context);
              },
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PAYMENT OPTIONS",
              style: CustomTextStyle.textStyleBlue13,
            ),
            customChecboxNoIcon((value) {
              setState(() {
                _checkedValue = !_checkedValue;
              });
            }, _checkedValue, "Cash on Pick-up", () {}),
            customChecboxNoIcon((value) {
              setState(() {
                _checkedValue = _checkedValue;
              });
            }, _checkedValue, "Cash on Delivery", () {}),
            customChecboxNoIcon((value) {
              pageRoute(context, UserKpWallet());
            }, _checkedValue, "KP Wallet (Up to P2,000)", () {}),
            customChecboxNoIcon(
              (value) {
                userProvider.checkboxGCASH();
                pageRoute(context, UserPabiliGcashPayment());
              },
              userProvider.gcashCheckbox,
              "Gcash",
              () {},
            ),
            customChecboxNoIcon(
              (value) {
                userProvider.checkboxPAYMAYA();
                pageRoute(context, UserPabiliPaymayaPayment());
              },
              userProvider.payMayaCheckbox,
              "PayMaya",
              () {},
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
