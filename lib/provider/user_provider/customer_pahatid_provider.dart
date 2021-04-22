import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
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
  int _count = 1;
  List<Widget> _children = [];

  List<Widget> get addTextfields {
    return _children;
  }

  void addTextfield(BuildContext context) {
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
                    print("REMOVE");
                  },
                ),
              ),
            ),
            node: TimelineNode(
              indicator: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.5),
                  child: OutlinedDotIndicator()),
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
//
  ///
/////

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
}
