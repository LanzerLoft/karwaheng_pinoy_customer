import 'dart:async';
import 'dart:io';
import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox_chat.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_merchantSearch.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/booking_status/user_pahatid_finding_rider.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_voiceCall.dart';
import 'package:device_apps/device_apps.dart';

import 'package:url_launcher/url_launcher.dart';

class UserPabiliProvider with ChangeNotifier {
  //
  //
  // PABILI ORDER NOW ORDER LATER
  bool _orderNow = true;
  bool _orderLater = false;

  // GET PABILI ORDER NOW ORDER LATER
  bool get orderNow => _orderNow;
  bool get orderLater => _orderLater;

  void selectedOrderlater() {
    _orderLater = true;
    _orderNow = false;
    print("ORDER LATER CLICKED");
    notifyListeners();
  }

  void selectedOrderNow() {
    _orderNow = true;
    _orderLater = false;
    print("ORDER NOW CLICKED");
    notifyListeners();
  }

  //  RESET PASSWORD
  bool _emailAddressResetPass = true;
  bool _cellphoneResetPass = false;

  // GET PABILI ORDER NOW ORDER LATER
  bool get emailAddressResetPass => _emailAddressResetPass;
  bool get cellphoneReserPass => _cellphoneResetPass;

  void selectedEmailAddressResetPass() {
    _cellphoneResetPass = false;
    _emailAddressResetPass = true;
    print("EMAIL ADDRESS  CLICKED");
    notifyListeners();
  }

  void selectedcellphoneReserPass() {
    _emailAddressResetPass = false;
    _cellphoneResetPass = true;
    print("CELLPHONE  CLICKED");
    notifyListeners();
  }

//
////
/////
/////
/////
  ///
  ///
  ///
  ///
  int _count = 1;
  List<Widget> _addMerchants = [];
  bool _totalBillExpand = true;

  bool get totalBillExpand => _totalBillExpand;
  void addMerchants(BuildContext context) {
    TextEditingController merchant = TextEditingController();
    _addMerchants = List.from(_addMerchants, growable: true)
      ..add(
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: customCardPabili(
            Theme(
              data:
                  Theme.of(context).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                initiallyExpanded: true,
                maintainState: true,
                onExpansionChanged: (value) {},
                subtitle: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Merchant",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                ),
                title: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Order",
                          style: CustomTextStyle.textStyleBlue16,
                          overflow: totalBillExpand == true
                              ? TextOverflow.visible
                              : TextOverflow.visible,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/payment_icons/pesoicon.png"),
                          color: Pallete.kpBlue,
                          size: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2),
                          child: Text(
                            "0.00",
                            style: CustomTextStyle.textStyleBlue16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: customTextFieldMerchant((value) {}, () {
                      pageRoute(context, UserPabiliMerchantSearch());
                    }, "Merchant", merchant),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: customTextFieldOrder(
                      context,
                      (value) {},
                      "Order",
                      () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: customTextFieldSpecNotes(
                        (value) {}, "Put specific notes here"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTextFieldPrice((value) {}, "Price"),
                        customButton2(() {}, "Add", 5, 30.0.w, 45,
                            Pallete.kpBlue, Pallete.kpBlue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }

  ///  //
  //
  //
  // UPLOAD IMAGE PROFILE
  String _path;
  String get path => _path;

  final picker = ImagePicker();
  PickedFile images;
  File imageFile;
  // Future getImgFromGallery() async {
  //   images = await picker.getImage(
  //     source: ImageSource.gallery,
  //   );

  //   if (images != null) {
  //     var imageUrl = images;
  //     print(imageUrl);
  //   } else {
  //     print("no path recieve");
  //   }
  //   notifyListeners();
  // }

  // Future getImgFromCamera() async {
  //   images = await picker.getImage(
  //     source: ImageSource.camera,
  //   );
  //   if (images != null) {
  //     var imageUrl = images;
  //     print(imageUrl);
  //   } else {
  //     print("no path recieve");
  //   }
  //   notifyListeners();
  // }

  getFromCamera() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    notifyListeners();
  }

  getFromGallery() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFile = File(pickedFile.path);
    }
    notifyListeners();
  }
//
//
//
//
//
//
//

  PickedFile imagesPabili;
  File imageFilePabili;

  getFromCameraPabili() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFilePabili = File(pickedFile.path);
    }

    notifyListeners();
  }

  getFromGalleryPabili() async {
    PickedFile pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      imageFilePabili = File(pickedFile.path);
    }

    notifyListeners();
  }

  clearimagePabili() async {
    imageFilePabili = null;
    notifyListeners();
  }

  clearimage() async {
    imageFile = null;
    notifyListeners();
  }
//
//
//
//
//
//
//
  //
  //
  //

  startTime(BuildContext context) async {
    var duration = new Duration(seconds: 5);
    return Timer(duration, () {
      pageRoute(context, UserPahatidFindingArider());
    });
  }

  _launchPhoneURL(String phoneNumber) async {
    String url = 'tel:' + phoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchSMSURL(String phoneNumber) async {
    String url = 'sms:' + phoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  makePhoneCalltoRider(BuildContext context, String phoneNumber) {
    // Create button
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: new Icon(Icons.call),
                title: new Text('In app call'),
                onTap: () {
                  _launchPhoneURL(phoneNumber);
                },
              ),
              ListTile(
                leading: new Icon(Icons.call),
                title: new Text('Phone call'),
                onTap: () {
                  _launchPhoneURL(phoneNumber);
                },
              ),
            ],
          );
        });
  }

  phoneCalltoRider(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      builder: (ctxt) => Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Pallete.kpGrey,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.call,
                      color: Pallete.kpWhite,
                      size: 15,
                    ),
                  ),
                ),
                title: Text(
                  "In-app Call",
                  style: CustomTextStyle.textStyleBlack14,
                ),
                onTap: () {
                  pageRoute(context, VoiceCallPage());
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.call,
                  color: Pallete.kpGrey,
                ),
                title: Text(
                  "Phone call",
                  style: CustomTextStyle.textStyleBlack14,
                ),
                onTap: () {
                  _launchPhoneURL(phoneNumber);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  makeChatMessagetoRider(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      builder: (ctxt) => Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                trailing: Icon(
                  Icons.chat_outlined,
                  color: Pallete.kpGrey,
                ),
                title: Text(
                  "In-app Chat",
                  style: CustomTextStyle.textStyleBlack14,
                ),
                onTap: () {
                  pageRoute(context, ChatPage());
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.message,
                  color: Pallete.kpGrey,
                ),
                title: Text(
                  "SMS",
                  style: CustomTextStyle.textStyleBlack14,
                ),
                onTap: () {
                  _launchSMSURL(phoneNumber);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
//
//
//
//

  editProfilePicture(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo),
                title: Text("Photos"),
                onTap: () {
                  Navigator.pop(context);
                  getFromGallery();
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  getFromCamera();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  pabiliRetakePhoto(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo),
                title: Text("Photos"),
                onTap: () {
                  Navigator.pop(context);
                  getFromGalleryPabili();
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                  getFromCameraPabili();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  pabiliImageViewer(BuildContext context) {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageFile != null
                      ? Image.file(
                          imageFile,
                          height: 300,
                          fit: BoxFit.contain,
                        )
                      : GestureDetector(
                          onTap: () {
                            getFromGallery();
                          },
                          child: Column(
                            children: [
                              Icon(Icons.photo,
                                  size: 70, color: Pallete.kpGrey),
                              Text(
                                "Select Photo",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                            ],
                          ),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.0.w,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Pallete.kpWhite,
                          backgroundColor: Pallete.kpRed,
                          textStyle: TextStyle(
                            color: Pallete.kpWhite,
                            fontSize: 14,
                          )),
                      onPressed: () {
                        getFromGallery();
                      },
                      child: Text("Retake Photo"),
                    ),
                  ),
                  Container(
                    width: 30.0.w,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Pallete.kpWhite,
                        backgroundColor: Pallete.kpBlue,
                        textStyle: TextStyle(
                          color: Pallete.kpWhite,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Cancel"),
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

//
//
//

  saveAddressPabiliPickup(BuildContext context) {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imageFile != null
                      ? Image.file(
                          imageFile,
                          height: 300,
                          fit: BoxFit.contain,
                        )
                      : GestureDetector(
                          onTap: () {
                            getFromGallery();
                          },
                          child: Column(
                            children: [
                              Icon(Icons.photo,
                                  size: 70, color: Pallete.kpGrey),
                              Text(
                                "Select Photo",
                                style: CustomTextStyle.textStyleGrey16,
                              ),
                            ],
                          ),
                        ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30.0.w,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          primary: Pallete.kpWhite,
                          backgroundColor: Pallete.kpRed,
                          textStyle: TextStyle(
                            color: Pallete.kpWhite,
                            fontSize: 14,
                          )),
                      onPressed: () {
                        getFromGallery();
                      },
                      child: Text("Retake Photo"),
                    ),
                  ),
                  Container(
                    width: 30.0.w,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Pallete.kpWhite,
                        backgroundColor: Pallete.kpBlue,
                        textStyle: TextStyle(
                          color: Pallete.kpWhite,
                          fontSize: 14,
                        ),
                      ),
                      onPressed: () {},
                      child: Text("Cancel"),
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

//
//
  void openGcashApp() async {
    bool isInstalledGCASH =
        await DeviceApps.isAppInstalled('com.globe.gcash.android');

    if (isInstalledGCASH == true) {
      await DeviceApps.openApp('com.globe.gcash.android');
    }

    print(isInstalledGCASH);
  }

  void openPaymayaApp() async {
    bool isInstalledGCASH = await DeviceApps.isAppInstalled('com.paymaya');

    if (isInstalledGCASH == true) {
      await DeviceApps.openApp('com.paymaya');
    }

    print(isInstalledGCASH);
  }

//
//
  ///
  ///
  ///

////
  ///
  bool _loudSpeakerSwitch = false;
  bool _muteSwitch = false;
  bool _recordvoicecallSwitch = false;

  bool get loudSpeaker => _loudSpeakerSwitch;
  bool get muteSwitch => _muteSwitch;
  bool get recordvoicecall => _recordvoicecallSwitch;

  void loudSpeakerSwitch() {
    _loudSpeakerSwitch = !_loudSpeakerSwitch;

    print(_loudSpeakerSwitch);
    notifyListeners();
  }

  void mutecallSwitch() {
    _muteSwitch = !_muteSwitch;

    print(_muteSwitch);
    notifyListeners();
  }

  void recordvoicecallSwitch() {
    _recordvoicecallSwitch = !_recordvoicecallSwitch;

    print(_recordvoicecallSwitch);
    notifyListeners();
  }
}
