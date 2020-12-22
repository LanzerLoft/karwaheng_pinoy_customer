import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/Gcash_payment/user_gcashPayment.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/Paymaya_payment/user_PaymayaPayment.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/user_pickUpInfo.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
            portrait: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 10.0.h),
                  child: UserPahatid(),
                ),
              ),
            ),
            landscape: (context) => Scaffold(
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: UserPahatid(),
                ),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Pahatid(),
          landscape: (context) => Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
                child: UserPahatid(),
              ),
            ),
          ),
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
                              onPressed: () {
                                // _settingModalBottomSheet(context);
                                pageRoute(context, UserGcashPayment());
                              },
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
            "Pahatid",
            style: CustomTextStyle.textStyleWhite18,
          ),
          // bottom: _tabBar(),
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
    final addTextfields = Provider.of<UserProvider>(context).addTextfields;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 45,
              ),
              child: Container(
                child: _tabBar(),
                height: 30,
              ),
            ),
            TimelineTile(
              alignment: TimelineAlign.start,
              afterLineStyle: LineStyle(color: Pallete.kpBlue),
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
                        onTap: () {
                          userProvider.addTextfield();
                        }),
                    () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserPickUpInfo()));
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
              beforeLineStyle: LineStyle(color: Pallete.kpBlue),
              lineXY: 0.06,
              isLast: true,
              indicatorStyle: IndicatorStyle(
                width: 20,
                color: Colors.white,
                iconStyle: IconStyle(
                  fontSize: 35,
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => UserPickUpInfo()));
                    },
                  ),
                ),
              ),
            ),
          ],
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
    final providerCOD = Provider.of<UserProvider>(context).cashOnDelivery;
    bool _checkedValue = false;
    bool _throwShotAway = false;
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
              (value) {
                userProvider.cashOnDeliverys();
              },
              providerCOD,
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
              setState(() {
                _checkedValue = _checkedValue;
              });
            }, _checkedValue, "KP Wallet (Up to P2,000)", () {}),
            customChecboxNoIcon((value) {
              setState(() {
                _checkedValue = _checkedValue;
              });
              pageRoute(context, UserGcashPayment());
            }, _checkedValue, "Gcash", () {}),
            customChecboxNoIcon((value) {
              setState(() {
                _checkedValue = _checkedValue;
              });
              pageRoute(context, UserPaymayaPayment());
            }, _checkedValue, "PayMaya", () {}),
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
