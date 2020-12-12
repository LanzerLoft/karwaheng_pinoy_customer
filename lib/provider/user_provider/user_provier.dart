import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:timeline_tile/timeline_tile.dart';

class UserProvider with ChangeNotifier {
  int _count = 1;
  List<Widget> _children = [];
  List<Widget> get addTextfields {
    return _children;
  }

  void addTextfield() {
    _children = List.from(_children)
      ..add(
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Pallete.kpBlue),
          beforeLineStyle: LineStyle(color: Pallete.kpBlue),
          lineXY: 0.06,
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
                IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: () {
                      addTextfield();
                    }),
              ),
            ),
          ),
        ),
      );
    setState(() => ++_count);
    notifyListeners();
  }
}
