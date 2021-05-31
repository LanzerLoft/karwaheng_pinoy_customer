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
import 'user_pahatidSearchAddress.dart';

class UserPahatidDropInfo extends StatefulWidget {
  @override
  _UserPahatidDropInfoState createState() => _UserPahatidDropInfoState();
}

class _UserPahatidDropInfoState extends State<UserPahatidDropInfo> {
  TextEditingController address = TextEditingController();
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
              "Enter Drop-off Information",
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
                      customTextFieldPickup(
                          (value) {},
                          "House No./Unit/Suite/Room No./Building/Street Name",
                          "Address:", () {
                        pageRoute(context, UserPahatidDropOffSearchAddress());
                      }),
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
                  customTextFieldPickupIcon(
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
                  textFieldPickupInstruction(
                      (value) {}, "e.g. Call me when you get here", () {}),
                  customTextFieldPickupIcon((value) {}, "First and Last Name",
                      "Contact Person", Icon(Icons.perm_contact_cal), () {}),
                  customTextFieldPickupPrefix(
                      (value) {},
                      "0998-888-8888",
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

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
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
      body: GoogleMap(
        mapType: MapType.satellite,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('To the lake!'),
        icon: Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    print("tapp");
  }
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
        () {
          pageRouteBack(context);
        },
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
