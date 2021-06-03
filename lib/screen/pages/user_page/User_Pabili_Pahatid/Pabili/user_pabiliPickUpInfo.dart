import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:sizer/sizer.dart';
import 'user_pabiliSearchAddress.dart';

class UserPabiliPickUpInfo extends StatefulWidget {
  @override
  _UserPabiliPickUpInfoState createState() => _UserPabiliPickUpInfoState();
}

class _UserPabiliPickUpInfoState extends State<UserPabiliPickUpInfo> {
  TextEditingController pabiliAddress = TextEditingController();
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
        length: 3,
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: Pallete.kpWhite,
          appBar: AppBar(
            leading: BackButton(color: Pallete.kpBlue),
            automaticallyImplyLeading: true,
            backgroundColor: Pallete.kpWhite,
            title: Text(
              "Enter Merchant Location",
              style: TextStyle(color: Pallete.kpBlue),
            ),
            centerTitle: true,
            elevation: 0,
            // bottom: _tabBarPickupAddressMap(),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.all(
                getValueForScreenType<double>(
                  context: context,
                  mobile: 16,
                ),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      customTextFieldPabiliPickup(
                          pabiliAddress,
                          (value) {},
                          "House No./Unit/Suite/Room No./Building/Street Name",
                          "Address:",
                          () {}),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: FlatButton(
                          height: 25,
                          color: Pallete.kpGreyOkpGreypacity2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          onPressed: () {},
                          child: Text("Clear All"),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: customButtonHomeWorkRecent(
                      context,
                      () {
                        userProvider.homeColorOntap();
                      },
                      () {
                        userProvider.workColorOntap();
                      },
                      () {
                        userProvider.recentColorOntap();
                      },
                    ),
                  ),
                  customTextFieldPabiliPickupIcon(
                      pabiliAddress,
                      (value) {},
                      "House No./Unit/Suite/Room No./Building/Street Name",
                      "Address:",
                      GestureDetector(
                        onTap: () {
                          showAlertAddress(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.help,
                            size: 20,
                            color: Pallete.kpGrey,
                          ),
                        ),
                      ),
                      () {}),
                  customTextFieldPickupIcon(
                      (value) {},
                      "e.g. 3rd House to the left of Lucky Charm Bakeshop po",
                      "Landmark:",
                      GestureDetector(
                        onTap: () {
                          showAlertLandmark(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.help,
                            size: 20,
                            color: Pallete.kpGrey,
                          ),
                        ),
                      ),
                      () {}),
                  customTextFieldPickup(
                      (value) {},
                      "e.g. Documents,Flowers,Grocery",
                      "Item Description:",
                      () {}),
                  customTextFieldPickup(
                      (value) {},
                      "e.g. Call me when you get here",
                      "Instruction to Rider (Optional):",
                      () {}),
                  customTextFieldPickupIcon((value) {}, "First and Last Name",
                      "Contact Person", Icon(Icons.perm_contact_cal), () {}),
                  customTextFieldPickupPrefix(
                      (value) {},
                      "09978888880",
                      "Phone",
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/flag_ph.png",
                          fit: BoxFit.contain,
                          scale: 20,
                        ),
                      ),
                      () {}),
                  customRadiobutton(
                      (value) {}, true, "In charge of delivery payment", true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showAlertAddress(BuildContext context) {
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

showAlertLandmark(BuildContext context) {
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
            "assets/otp_image/KP_Icon2.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
            "For Faster Delivery, Please include a notable physical feature thas is easily recognizable such as:"),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Pallete.kpBlue,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Bungalow house with blue gate"),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Pallete.kpBlue,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Beside XYZ gasoline Station"),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Pallete.kpBlue,
            ),
            SizedBox(
              width: 10,
            ),
            Text("Next to Tita Nena's Carinderia"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
            "if the pickup-drop off location is a known establishment such as a mall, a school or a building, you may click 'Skip Landmark' box"),
      ],
    ),
    actions: [
      customButton2(
        () {},
        "Close",
        25,
        70,
        40,
        Pallete.kpBlue,
        Pallete.kpBlue,
      ),
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
