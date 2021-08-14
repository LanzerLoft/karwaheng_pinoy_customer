import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_chatWithUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_dialog.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Pabili_finding_a_rider/user_pabili_change_address.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_merchantSearch.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_pabili_summary.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidDropOffInfo%20.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidSearchAddress.dart';
import 'package:kp_mobile/services/ProfileServices.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:timelines/timelines.dart';
import 'package:sizer/sizer.dart';
import 'dart:math';

class UserPahatidProvider with ChangeNotifier {
  List<String> deliverySchedule = [
    "Deliver ASAP",
    "Pick Time",
  ];
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
  List<String> get itemss {
    return _item;
  }

  List<String> _itemlist = [];
  List<String> get listItem {
    return _itemlist;
  }

  String deliverySched;
  String get deliverySchdule => deliverySched;

  int _count = 1;
  List<Widget> _children = [];

  List<Widget> get addTextfields {
    return _children;
  }

  void reorderData(int oldindex, int newindex) {
    if (newindex > oldindex) {
      newindex -= 2;
    }
    final items = _item.removeAt(oldindex);
    _item.insert(newindex, items);
    print(_item);
  }

  void sorting() {
    _item.sort();
    print(_item);
  }

  void removeAddtextField(index) {
    _itemlist.removeAt(index);
  }

  void addTextfield(BuildContext context) {
    _itemlist = List.from(_itemlist)..add(_itemlist.length.toString());
    if (addTextfields.length <= 18) {
      _children = List.from(_children)
        ..add(
          TimelineTile(
            nodeAlign: TimelineNodeAlign.start,
            contents: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: customlocationTextField(
                  (value) {},
                  "Set Drop-Off Location",
                  "Set Drop-Off Location",
                  () {
                    pageRoute(context, UserPahatidDropInfo());
                  },
                  () {
                    removeAddtextField(_itemlist);
                    print("REMOVE");
                  },
                ),
              ),
            ),
            node: TimelineNode(
              indicator: Icon(
                Icons.location_on,
                color: Pallete.kpRed,
              ),
              startConnector: DashedLineConnector(
                gap: 3,
                color: Pallete.kpGrey,
              ),
              endConnector: DashedLineConnector(
                gap: 3,
                color: Pallete.kpGrey,
              ),
            ),
          ),
        );
      setState(() => ++_count);
      notifyListeners();
      print("add Drop-Off Location No. ${addTextfields.length}");
    }
  }

  void maxLocation(BuildContext context) {
    final snackbar = SnackBar(
      content: Text('20 Max Drop-Off Location'),
    );

    if (addTextfields.length == 19) {
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }
//
  ///
/////

  //
  //
  // PAHATID ORDER NOW ORDER LATER
  bool _deliverNowPahatid = true;
  bool _deliverLaterPahatid = false;

  // GET PABILI ORDER NOW ORDER LATER
  bool get deliverNowPahatid => _deliverNowPahatid;
  bool get deliverLaterPahatid => _deliverLaterPahatid;

  void selectedDeliverlaterPahatid() {
    _deliverLaterPahatid = true;
    _deliverNowPahatid = false;
    print("DELIVER  LATER CLICKED");
    notifyListeners();
  }

  void selectedDeliverNowPahatid() {
    _deliverNowPahatid = true;
    _deliverLaterPahatid = false;
    print("DELIVER NOW CLICKED");
    notifyListeners();
  }

  //
  //
  // Home-work-recent colors
  bool _home = true;
  bool _work = false;
  bool _recent = false;

  // Home-work-recent colors
  bool get homeColor => _home;
  bool get workColor => _work;
  bool get recentColor => _recent;

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
  ///
  ///

  popMenuFindingaRider(BuildContext context, String value) {
    if (value == "Cancel") {
      showDialog(
        context: context,
        builder: (ctxt) => orderShowDialogCancelBooking(
          context,
        ),
      );
    } else if (value == "Chat") {
      pageRoute(context, UserChatWithUs());
    } else if (value == "Change") {
      pageRoute(context, UserPabiliChangeAddress());
    }
  }

  outsideServiceArea(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => outsideServiceArea(context),
    );
  }

  pahatidOrderWasCancel(BuildContext context) {
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

  pahatidOrderHasAssigned(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "A Partner Rider is assigned.",
        "assets/rider_icons/rider_arrived.png",
      ),
    );
  }

  pahatidOrderParcelPickedUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "Parcel has been Picked up",
        "assets/rider_icons/parcel_pickedup.png",
      ),
    );
  }

  pahatidOrderPartnerRiderDropoff1(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "Partner Rider has arrived at Drop-off 1.",
        "assets/rider_icons/rider_dropoff_icon1.png",
      ),
    );
  }

  pahatidOrderPartnerRiderDropoff2(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "Partner Rider has arrived at Drop-off 2.",
        "assets/rider_icons/rider_dropoff_icon1.png",
      ),
    );
  }

  ///
  ///
  ////

  pahatidOrderParcelHasDelivered(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctxt) => orderShowDialogBoxHasAssigned(
        context,
        "Parcel has been successfully delivered. Thank you!",
        "assets/rider_icons/parcel_pickedup.png",
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

  ///
  ////
  ///
  Future<bool> saveAsDraftPahatid(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) => pahatidSaveAsDraft(context),
    );
  }

  ///
  ///
  ///
  ///
  ///

  //
  //
  // Home-work-recent colors
  bool _hasPartnerRider = true;

  // Home-work-recent colors
  bool get hasPartnerRider => _hasPartnerRider;

  void hasAssignedPahatidPartnerRider() {
    _hasPartnerRider = !_hasPartnerRider;
    notifyListeners();
    print(_hasPartnerRider);
  }

  ///
  ///
  ///
  ///
  ///
}
