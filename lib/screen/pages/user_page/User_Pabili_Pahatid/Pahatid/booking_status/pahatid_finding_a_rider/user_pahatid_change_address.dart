import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserPahatidChangeAddress extends StatefulWidget {
  @override
  State<UserPahatidChangeAddress> createState() =>
      UserPahatidChangeAddressState();
}

class UserPahatidChangeAddressState extends State<UserPahatidChangeAddress> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Change Address",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Container(
          height: 50,
          width: 100.0.w,
          child: FlatButton(
            onPressed: () {
              _changeAddressApply(context);
            },
            color: Pallete.kpBlue,
            child:
                Text("Apply Changes", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: CustomConSize.mobile,
            ),
          ),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return customCardChangeAddressPahatid(
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("SM City North EDSA"),
                          Text(
                            "SNorth Avenue corner EDSA, Quezon City, 1100 Metro Manila",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Pallete.kpBlue,
                "Pickup",
                () {
                  pageRoute(context, UserPahatidCAEditAddress());
                },
              );
            },
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}

///
///
///
///



///
///
///
///

class UserPahatidCAEditAddress extends StatefulWidget {
  @override
  State<UserPahatidCAEditAddress> createState() =>
      UserPahatidCAEditAddressState();
}

class UserPahatidCAEditAddressState extends State<UserPahatidCAEditAddress> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: BackButton(color: Pallete.kpBlue),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Change Address",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 0,
        // bottom: _tabBarPickupAddressMap(),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
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
                changeAddressTextFieldOntap(
                  (value) {},
                  "Enter pickup address",
                  "Enter pickup address",
                  () {
                    pageRoute(context, UserPahatidCAEditAddressMAP());
                  },
                ),
                changeAddressTextField(
                  (value) {},
                  "House Number, Building and Floor",
                  "House Number, Building and Floor",
                ),
                changeAddressTextFieldPhoneNumber(
                  (value) {},
                  "Phone Number",
                  "Phone Number",
                ),
                changeAddressTextFieldContactPerson(
                  (value) {},
                  "Contact Person",
                  "Contact Person",
                ),
                changeAddressTextFieldNotestoRider(
                  (value) {},
                  "Note to Rider",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 12),
                  child: Container(
                    height: 50,
                    width: 100.0.w,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Pallete.kpBlue,
                      child: Text("Confirm",
                          style: CustomTextStyle.textStyleWhite16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class UserPahatidCAEditAddressMAP extends StatefulWidget {
  @override
  State<UserPahatidCAEditAddressMAP> createState() =>
      UserPahatidCAEditAddressMAPState();
}

class UserPahatidCAEditAddressMAPState
    extends State<UserPahatidCAEditAddressMAP> {
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
          "Change Address",
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
                mapType: MapType.satellite,
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
}


_changeAddressApply(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctxt) => Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(8), // spacing inside the box
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              child: Text("Would you like to apply the changes?",
                  style: CustomTextStyle.textStyleBlack18,
                  textAlign: TextAlign.center),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Container(
                    height: 30,
                    width: 25.0.w,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Pallete.kpRed,
                      child: Text("Cancel",
                          style: CustomTextStyle.textStyleWhite16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Container(
                    height: 30,
                    width: 25.0.w,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      color: Pallete.kpBlue,
                      child: Text("Apply",
                          style: CustomTextStyle.textStyleWhite16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
