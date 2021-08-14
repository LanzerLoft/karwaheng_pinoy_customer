import 'dart:async';
import 'dart:io';
import 'package:android_intent_plus/android_intent.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';

import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/rider_icon_nav_bar_icons.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_chatWithUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox_chat.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Pabili_finding_a_rider/user_pabili_change_address.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Pabili_finding_a_rider/user_pabili_finding_rider.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_merchantSearch.dart';
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
  //

  // GET PABILI ORDER NOW ORDER LATER

  bool _reportRider = false;
  bool get reportRider => _reportRider;

  void selectedPabilireportRider(BuildContext context, String bookingID) {
    _reportRider = !_reportRider;

    print(_reportRider);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctxt) => orderShowDialogReportRider(context, "KP12345"),
    );

    notifyListeners();
  }

  reportRiderUploadImage(BuildContext context, String value) async {
    if (value == "Camera") {
      getFromCamera();
      notifyListeners();
    } else if (value == "Gallery") {
      getFromGallery();
      notifyListeners();
    }
  }

  void pabilireportRiderClose(
    BuildContext context,
  ) {
    _reportRider = false;
    Navigator.of(context).pop();
    notifyListeners();
  }

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
      pageRoute(context, UserPabiliFindingArider());
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
                  Icons.sms,
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
                  Icons.email,
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
  ///
  ///
  ///
  ///
  ///
  void partnerRiderisArrived(BuildContext context, double toolbarheight) async {
    await Flushbar(
      message: "Partner rider is on the way...",
      duration: Duration(seconds: 3),
      backgroundColor: Pallete.kpBlue,
      // shouldIconPulse: false,
      icon: Icon(RiderIconNavBar.pickup_icon_rider_app, color: Pallete.kpWhite),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      flushbarPosition: FlushbarPosition.TOP,
      margin: EdgeInsets.fromLTRB(8, toolbarheight + 8, 8, 8),
    ).show(context);
  }

  flushBarRider(BuildContext context) async {
    var duration = new Duration(seconds: 5);
    return Timer(duration, () async {
      await Flushbar(
        message: "Partner rider is on the way...",
        duration: Duration(seconds: 3),
        backgroundColor: Pallete.kpBlue,
        shouldIconPulse: false,
        icon:
            Icon(RiderIconNavBar.pickup_icon_rider_app, color: Pallete.kpWhite),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        flushbarPosition: FlushbarPosition.TOP,
        margin: EdgeInsets.fromLTRB(8, 68, 8, 8),
      ).show(context);
    });
  }

  // Container(
  //     width: 100.0.w,
  //     height: 40,
  //     padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.all(
  //         Radius.circular(10),
  //       ),
  //       color: Pallete.kpBlue,
  //     ),
  //     child: Center(
  //       child: Row(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Text(
  //             "Partner rider is on the way...",
  //             style: CustomTextStyle.textStyleWhite20,
  //           ),
  //           Icon(RiderIconNavBar.pickup_icon_rider_app,
  //               color: Pallete.kpWhite),
  //         ],
  //       ),
  //     ),
  //   ),
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  //
  //
  // Home-work-recent colors
  bool _home = false;
  bool _work = false;
  bool _recent = false;

  // Home-work-recent colors
  bool get pcahomeColor => _home;
  bool get pcaworkColor => _work;
  bool get pcarecentColor => _recent;

  void homeColorOntap() {
    _home = !_home;
    _work = false;
    _recent = false;
    print("Home $_home");
    notifyListeners();
  }

  void workColorOntap() {
    _work = !_work;
    _home = false;
    _recent = false;
    print("Work $_work");
    notifyListeners();
  }

  void recentColorOntap() {
    _recent = !_recent;
    _work = false;
    _home = false;
    print("Recent $_recent");
    notifyListeners();
  }

  ///
  ///
  ///
  ///
  ///
  ///

  popMenuFindingaRider(BuildContext context, String value) {
    if (value == "Cancel") {
      showDialog(
        context: context,
        builder: (ctxt) => orderShowDialogWantToCancel(
          context,
        ),
      );
    } else if (value == "Chat") {
      pageRoute(context, UserChatWithUs());
    } else if (value == "Change") {
      pageRoute(context, UserPabiliChangeAddress());
    }
  }

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

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///
  ///

  pabiliOrderWasCancel(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxIconClose(
        context,
      ),
    );
  }

  orderCancelBooking(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogCancelBooking(
        context,
      ),
    );
  }

  orderCancelOrder(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogCancelOrder(
        context,
      ),
    );
  }

  Future<bool> saveAsDraftPabili(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => pabiliSaveAsDraft(context),
    );
  }

  ///
  ///
  ///
  ///
  ///
  //
  pabiliDropOffSaveAddress(BuildContext context, String value) {
    if (value == "Home") {
      showDialog(
        context: context,
        builder: (ctxt) => orderShowDialogBoxIconCheck2(
            context, "Address successfully saved!"),
      );
      //   showDialog(
      //   context: context,
      //   builder: (ctxt) => orderShowDialogCancelBooking(
      //     context,
      //   ),
      // );
    } else if (value == "Work") {
      showDialog(
        context: context,
        builder: (ctxt) => orderShowDialogBoxIconCheck2(
          context,
          "Address successfully saved!",
        ),
      );
    }
  }

  ///
  ///
  ///
  ///
  cancelMyBookingScheduled(BuildContext context, String value) {
    if (value == "Cancel") {
      showDialog(
        context: context,
        builder: (ctxt) => myBookingScheduledCancel(
          context,
        ),
      );
      //   showDialog(
      //   context: context,
      //   builder: (ctxt) => orderShowDialogCancelBooking(
      //     context,
      //   ),
      // );
    } else if (value == "Chat") {
      pageRoute(context, UserChatWithUs());
    }
  }

  orderCancelOrderScheduled(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogCancelOrder(
        context,
      ),
    );
  }

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  outsideServiceArea(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => outsideServiceArea(context),
    );
  }

  orderCancelOrderActiveBooking(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogCancelBooking(
        context,
      ),
    );
  }

  orderCancelOrderActiveOrder(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogCancelOrder(
        context,
      ),
    );
  }

  orderFeedback(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogFeedback(
        context,
      ),
    );
  }

  orderReportRider(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogReportRider(context, "KP12345"),
    );
  }

  orderWasCanceled(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBoxIconClose(
        context,
      ),
    );
  }

  //orderShowDialogBoxIconClose
  //
  //
  pabiliOrderHasArrived(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogHasArrived(
        context,
        "Partner Rider has arrived.",
      ),
    );
  }

  pabiliOrderHasAssigned(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "A Partner Rider is assigned.",
        "assets/rider_icons/rider_arrived.png",
      ),
    );
  }

  pabiliOrderHasArrivedMerchant1(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "Partner Rider has arrived at Merchant 1.",
        "assets/rider_icons/rider_dropoff_icon1.png",
      ),
    );
  }

  //
  //
  ///
  ///
  ///
  ///
  //

  pabiliOrderHasArrivedMerchant2(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "Partner Rider has arrived at Merchant 2.",
        "assets/rider_icons/rider_dropoff_icon2.png",
      ),
    );
  }

  ///
  //
  //
  ///
  ///
  ///
  //

  pabiliOrderHasbeenPurchased(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "Order has been purchased.",
        "assets/rider_icons/shopping_bag.png",
      ),
    );
  }

  //
  //
  pabiliOrderHasbeenDelivered(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "Order has been delivered.\nThank you!",
        "assets/rider_icons/shopping_bag.png",
      ),
    );
  }

  ///
  ///
  ///
  ///
  ///
  ///
  ///
  /// PAHATID POP UP DIALOG

  orderHasArrivedDropOff(BuildContext context, String dropOffNumber) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "Parcel has been successfully delivered. Thank you!",
        "assets/rider_icons/parcel_pickedup.png",
      ),
    );
  }

  orderHasFileExceeds(BuildContext context, String dropOffNumber) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBox(
        context,
        "The file exceeds the 3MB attachment limit. Please select another file.",
        "assets/rider_icons/danger_sign.png",
      ),
    );
  }

  orderTYFeedback(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.transparent,
      builder: (ctxt) => orderShowDialogBoxIconCheck(
        context,
        "Thank you for your feedback.",
        "If necessary, we may have to reach out to you in 72 hours at your registered email address.",
      ),
    );
  }

  ///
  ///
  ///
  ///
  inappCallORphoneCall(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      useRootNavigator: false,
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
                  // pushNewScreen(
                  //   context,
                  //   screen: VoiceCallPage(),
                  //   withNavBar: false, // OPTIONAL VALUE. True by default.
                  //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  // );
                  // pageRoute(context, VoiceCallPage());
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
                  _launchPhoneURL("09123456789");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  phoneinAppCalltoCustomer(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (ctxt) => Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                // Bottom rectangular box
                margin: EdgeInsets.only(
                    top: 40), // to push the box half way below circle
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.only(
                    top: 40,
                    left: 12,
                    right: 12,
                    bottom: 12), // spacing inside the box
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(
                        Icons.call,
                        color: Pallete.kpGrey,
                      ),
                      title: Text(
                        "Tawagan ang pickup",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                      onTap: () {
                        pageRouteBack(context);
                        inappCallORphoneCall(context, phoneNumber);
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
                        pageRouteBack(context);
                        inappCallORphoneCall(context, phoneNumber);
                      },
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                elevation: 3,
                child: CircleAvatar(
                  // Top Circle with icon
                  backgroundColor: Pallete.kpWhite,
                  maxRadius: 40.0,
                  child: Container(
                    child: Image.asset(
                      "assets/drawer_icons/my_account.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  chatSmstoCustomer(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      useRootNavigator: false,
      builder: (ctxt) => Dialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          child: Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                // Bottom rectangular box
                margin: EdgeInsets.only(
                    top: 40), // to push the box half way below circle
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.only(
                    top: 40,
                    left: 12,
                    right: 12,
                    bottom: 12), // spacing inside the box
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      trailing: Icon(
                        Icons.sms,
                        color: Pallete.kpGrey,
                      ),
                      title: Text(
                        "Pickup contact person",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                      onTap: () {
                        pageRouteBack(context);
                        inappChatORphoneSms(context, phoneNumber);
                      },
                    ),
                    ListTile(
                      trailing: Icon(
                        Icons.sms,
                        color: Pallete.kpGrey,
                      ),
                      title: Text(
                        "Drop off contact person",
                        style: CustomTextStyle.textStyleBlack14,
                      ),
                      onTap: () {
                        pageRouteBack(context);
                        inappChatORphoneSms(context, phoneNumber);
                      },
                    ),
                  ],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                elevation: 3,
                child: CircleAvatar(
                  // Top Circle with icon
                  backgroundColor: Pallete.kpWhite,
                  maxRadius: 40.0,
                  child: Container(
                    child: Image.asset(
                      "assets/drawer_icons/my_account.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  inappChatORphoneSms(BuildContext context, String phoneNumber) {
    showDialog(
      context: context,
      useRootNavigator: false,
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
                  Icons.sms,
                  color: Pallete.kpGrey,
                ),
                title: Text(
                  "In-app Chat",
                  style: CustomTextStyle.textStyleBlack14,
                ),
                onTap: () {
                  // pushNewScreen(
                  //   context,

                  //   screen: ChatPage(),
                  //   withNavBar: false, // OPTIONAL VALUE. True by default.
                  //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  // );
                },
              ),
              ListTile(
                trailing: Icon(
                  Icons.email,
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

  ///
  ///
  ///
  /////
  ///
  ///
  ///
  //

  bool _hasPartnerRider = true;

  // Home-work-recent colors
  bool get hasPartnerRider => _hasPartnerRider;

  void hasAssignedPabiliPartnerRider() {
    _hasPartnerRider = !_hasPartnerRider;
    notifyListeners();
    print(_hasPartnerRider);
  }

  ///
  ///
  ///
}
