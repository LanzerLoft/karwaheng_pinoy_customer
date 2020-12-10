import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_expansionTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:sizer/sizer.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

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
                padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "TOTAL AMOUNT",
                          style: CustomTextStyle.textStyleWhite20,
                        ),
                        Text(
                          "P 150",
                          style: CustomTextStyle.textStyleWhite24,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: FlatButton(
                              onPressed: () {
                                _incrementTab(1);
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
                                _incrementTab(1);
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
            color: Pallete.kpBlue,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Pahatid",
            style: CustomTextStyle.textStyleBlue14,
          ),
          // bottom: _tabBar(),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            UserPahatid(),
            UserPahatid(),
          ],
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Samples(),
            Checkboxed(),
          ],
        ),
      ),
    );
  }
}

class Samples extends StatefulWidget {
  @override
  _SamplesState createState() => _SamplesState();
}

List<Widget> list = new List();

class _SamplesState extends State<Samples> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabBar(),
        TextFormField(),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          addAutomaticKeepAlives: true,
          addSemanticIndexes: true,
          dragStartBehavior: DragStartBehavior.start,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            Widget widget = list.elementAt(index);
            return widget;
          },
          itemCount: list.length,
        ),
        Container(
          height: 50,
          child: FlatButton(
            onPressed: () {
              list.add(
                expansionTile(
                  Text("Search Location"),
                ),
              );
              setState(() {});
            },
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
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
  bool checkedValue = true;
  Widget build(BuildContext context) {
    return Column(
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
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "Insulated Box",
              context,
              () {
                showAlertDialog(context);
              },
            ),
            customChecbox(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "Queuing Services",
              context,
              () {
                showAlertDialog(context);
              },
            ),
            customChecbox(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
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
            customChecboxNoIcon(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "Cash on Pick-up",
              context,
            ),
            customChecboxNoIcon(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "Cash on Delivery",
              context,
            ),
            customChecboxNoIcon(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "KP Wallet (Up to P2,000)",
              context,
            ),
            customChecboxNoIcon(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "Gcash",
              context,
            ),
            customChecboxNoIcon(
              (value) {
                setState(() {
                  checkedValue = !checkedValue;
                });
              },
              checkedValue,
              "PayMaya",
              context,
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
      bottomLeftRadius: 5,
      bottomRightRadius: 5,
      topLeftRadius: 5,
      topRightRadius: 5,
    ),
  );
}
