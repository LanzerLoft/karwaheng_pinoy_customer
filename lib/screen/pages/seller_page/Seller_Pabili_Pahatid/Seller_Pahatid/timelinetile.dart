import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "TIMELINE",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        //   backgroundColor: Pallete.kpBlue,
        // ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: customCard(
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    contents: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10),
                        child: customTextFieldNOicon(
                          (value) {},
                          "Set Drop-off Location",
                          "Set Drop-off Location",
                          () {},
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      indicator: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.5),
                        child: DotIndicator(),
                      ),
                      endConnector: DashedLineConnector(
                        color: Pallete.kpGrey,
                      ),
                    ),
                  ),
                  TimelineTile(
                    nodeAlign: TimelineNodeAlign.start,
                    contents: Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
                        child: customTextFieldNOicon(
                          (value) {},
                          "Search Merchant Location",
                          "Search Merchant Location",
                          () {},
                        ),
                      ),
                    ),
                    node: TimelineNode(
                      indicator: Icon(
                        Icons.location_on,
                        color: Pallete.kpRed,
                      ),
                      startConnector:
                          DashedLineConnector(color: Pallete.kpGrey),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
