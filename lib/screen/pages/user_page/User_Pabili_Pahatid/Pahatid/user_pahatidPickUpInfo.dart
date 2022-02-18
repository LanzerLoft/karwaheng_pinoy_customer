import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_prohibitedItems.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'user_pahatidSearchAddress.dart';
import 'package:sizer/sizer.dart';

class UserPahatidPickUpInfo extends StatefulWidget {
  @override
  _UserPahatidPickUpInfoState createState() => _UserPahatidPickUpInfoState();
}

class _UserPahatidPickUpInfoState extends State<UserPahatidPickUpInfo> {
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final pahatidProvider = Provider.of<UserProvider>(context);
    final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
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
              "Enter Pickup Information",
              style: TextStyle(color: Pallete.kpBlue),
            ),
            centerTitle: true,
            elevation: 0,
            // bottom: _tabBarPickupAddressMap(),
          ),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Column(
                  children: [
                    addressPickupLocation((value) {},
                        "House No./Unit/Suite/Room No./Building/Street Name",
                        () {
                      pageRoute(context, PahatidEnterPickupMAP());
                    }),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text("Google Map Search Bar",
                            style: CustomTextStyle.textStyleBlue10),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(
                    getValueForScreenType<double>(
                      context: context,
                      mobile: 16,
                    ),
                  ),
                  child: Column(
                    children: [
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        child: addressWithSkipbutton2(
                            (value) {},
                            "House No./Unit/Suite/Room No./Building/Street Name",
                            "Address:", () {
                          _showAlertAddress(context);
                        }, (value) {}, true),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: PopupMenuButton(
                            color: Pallete.bcGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Pallete.kpBlue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Save Address",
                                    style: CustomTextStyle.textStyleWhite14),
                              ),
                            ),
                            elevation: 20,
                            enabled: true,
                            onSelected: (value) {},
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                enabled: false,
                                height: 35,
                                child: Text(
                                  "Save address as",
                                  style: CustomTextStyle.textStyleWhite12,
                                ),
                              ),
                              PopupMenuItem(
                                height: 35,
                                child: Center(
                                  child: Text(
                                    "Home",
                                    style: CustomTextStyle.textStyleWhite12,
                                  ),
                                ),
                                value: "Home",
                              ),
                              PopupMenuItem(
                                height: 35,
                                child: Center(
                                  child: Text(
                                    "Work",
                                    style: CustomTextStyle.textStyleWhite12,
                                  ),
                                ),
                                value: "Work",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: landmarkWithSkipbutton2(
                            (value) {},
                            "e.g. 3rd House to the left of Lucky Charm Bakeshop po",
                            "Landmark:", () {
                          _showAlertLandmark(context);
                        }, (value) {}, true),
                      ),
                      itemDescriptionTextfield(
                        (value) {},
                        "e.g. Documents, Flowers, Grocery",
                      ),
                      TextFormField(
                        enableSuggestions: true,
                        // controller: userPahatidProvider.inputChipDescription,
                        initialValue:
                            userPahatidProvider.inputChipDescription.text ==
                                    null
                                ? "e.g. Documents, Flowers, Grocery"
                                : userPahatidProvider.inputChipDescription.text
                                    .toString(),
                        style: TextStyle(color: Pallete.kpBlue),
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          hintStyle: CustomTextStyle.textPickUpHint,
                          labelStyle: CustomTextStyle.textPickUpLabel,
                          contentPadding:
                              EdgeInsets.fromLTRB(0.0, 10.0, 40.0, 10.0),
                        ),
                      ),
                      _inputChipList(context),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "No. of Items/Parcel:",
                                  style: TextStyle(
                                      color: Pallete.kpBlue,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      _showAlertParcel(context);
                                    },
                                    child: Icon(
                                      Icons.help,
                                      size: 20,
                                      color: Pallete.kpBlack,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.remove,
                                        size: 15, color: Pallete.kpRed)),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("5"),
                                ),
                                GestureDetector(
                                    onTap: () {},
                                    child: Icon(Icons.add,
                                        size: 15, color: Pallete.kpBlue)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      textFieldPickupInstruction(
                          (value) {}, "e.g. Call me when you get here", () {}),
                      contactPersonWithIcon((value) {}, "First and Last Name",
                          "Contact Person", () {}),
                      phoneNumberWithIcon(
                        context,
                        (value) {},
                        "09978888880",
                        "Phone",
                      ),
                      customRadiobutton((value) {}, true,
                          "In charge of delivery payment", true),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                  child: Container(
                    height: 50,
                    width: 100.0.w,
                    child: FlatButton(
                      onPressed: () {},
                      color: Pallete.kpRed,
                      child: Text("Set Pickup Location",
                          style: CustomTextStyle.textStyleWhite16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PahatidEnterPickupMAP extends StatefulWidget {
  @override
  State<PahatidEnterPickupMAP> createState() => PahatidEnterPickupMAPState();
}

class PahatidEnterPickupMAPState extends State<PahatidEnterPickupMAP> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 11);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Search / Pin Address",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            addressPickupLocation((value) {},
                "House No./Unit/Suite/Room No./Building/Street Name", () {}),
            Container(
              height: 35,
            ),
            Container(
              height: 70.0.h,
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: GoogleMap(
                mapType: MapType.terrain,
                initialCameraPosition: _kGooglePlex,
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Container(
                height: 50,
                width: 100.0.w,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Pallete.kpBlue,
                  child:
                      Text("Confirm", style: CustomTextStyle.textStyleWhite16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    print("tapp");
  }
}

Widget _inputChipList(BuildContext context) {
  final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Wrap(
      spacing: 3.0,
      children: [
        InputChip(
          label: Text("Documents"),
          selectedColor: Pallete.kpYellow,
          onPressed: () {
            userPahatidProvider.inputChipDocument();
          },
        ),
        InputChip(
          label: Text("FoodBoxed"),
          selectedColor: Pallete.kpYellow,
          onSelected: (status) {},
        ),
        InputChip(
          label: Text("Fragile"),
          selectedColor: Pallete.kpYellow,
          onSelected: (status) {},
        ),
        InputChip(
          label: Text("Item Groceries"),
          selectedColor: Pallete.kpYellow,
          onSelected: (status) {},
        ),
        InputChip(
          label: Text("Pastries"),
          selectedColor: Pallete.kpYellow,
          onSelected: (status) {},
        ),
        InputChip(
          label: Text("Something"),
          selectedColor: Pallete.kpYellow,
          onSelected: (status) {},
        ),
      ],
    ),
  );
}

Widget _tabBarPickup() {
  return TabBar(
    tabs: [
      Tab(
        text: "Home",
      ),
      Tab(
        text: "Work",
      ),
      Tab(
        text: "Recent",
      ),
    ],
    labelColor: Colors.white,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpYellow,
      bottomLeftRadius: 25,
      bottomRightRadius: 25,
      topLeftRadius: 25,
      topRightRadius: 25,
    ),
  );
}

Widget _tabBarPickupAddressMap() {
  return TabBar(
    tabs: [
      Tab(
        text: "Home",
      ),
      Tab(
        text: "Work",
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

///
////
///
///
///

_showAlertLandmark(BuildContext context) {
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
            "assets/pickup_address_icon/address_map_icon.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "For Faster Delivery, Please include a notable physical feature thas is easily recognizable such as:",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "Bungalow house with blue gate",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "Beside XYZ gasoline Station",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "Next to Tita Nena's Carinderia",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "If a known establishment such as a mall, a school or a building, you may click",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
            children: <TextSpan>[
              TextSpan(
                text: ' "Skip" ',
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              TextSpan(
                text: 'box.',
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Container(
            height: 35,
            width: 50.0.w,
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

_showAlertAddress(BuildContext context) {
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
            "assets/pickup_address_icon/address_map_icon.png",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "For a seamless delivery, please enter specific address details such as: ",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "88 Lucky Charm Road",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "Suite 88",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        Row(
          children: [
            Icon(Icons.check_circle, color: Pallete.kpRed, size: 15),
            SizedBox(
              width: 10,
            ),
            Text(
              "3rd floor",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "We will compare the address you enter here and what appears in Google Map. Please keep your lines open as we may have to contact you to confirm.",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text:
                "If a known establishment such as a mall, a school or a building that can be easily identified, use Google Map's search result and click the",
            style: TextStyle(
                color: Pallete.kpBlack,
                fontWeight: FontWeight.normal,
                fontSize: 12),
            children: <TextSpan>[
              TextSpan(
                text: ' "Skip" ',
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              TextSpan(
                text: 'box.',
                style: TextStyle(
                    color: Pallete.kpBlack,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
          child: Container(
            height: 35,
            width: 50.0.w,
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

_showAlertParcel(BuildContext context) {
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
            "assets/pickup_address_icon/address_popupbox_icon.png",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Enter the number / pieces of parcel you would like delivered to each drop-off location.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Pallete.kpBlack,
              fontWeight: FontWeight.normal,
              fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Our Partner Rider is trained to inspect and confirm the items for accounting.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Pallete.kpBlack,
              fontWeight: FontWeight.normal,
              fontSize: 14),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "See ",
              style: TextStyle(
                  color: Pallete.kpBlack,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
              children: <TextSpan>[
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      pageRoute(context, UserProhibitedItems());
                    },
                  text: 'What We Deliver.',
                  style: TextStyle(
                      color: Pallete.kpBlue,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
          child: Container(
            height: 35,
            width: 50.0.w,
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
