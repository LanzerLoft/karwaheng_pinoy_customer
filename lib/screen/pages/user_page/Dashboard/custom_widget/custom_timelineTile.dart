import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

Widget customTimelineTile(String pickUp, String dropOff) {
  return Column(
    children: [
      TimelineTile(
        alignment: TimelineAlign.start,
        afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Pallete.kpBlue,
          iconStyle: IconStyle(
            fontSize: 2,
            color: Pallete.kpBlue,
            iconData: Icons.circle,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            pickUp,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
      TimelineTile(
        alignment: TimelineAlign.start,
        beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isLast: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Colors.white,
          iconStyle: IconStyle(
            fontSize: 15,
            color: Pallete.kpRed,
            iconData: Icons.location_on,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            dropOff,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
      SizedBox(
        height: 25,
      ),
    ],
  );
}

Widget timelineTileEdit(Widget pickUp, Widget dropOff) {
  return Column(
    children: [
      TimelineTile(
        alignment: TimelineAlign.start,
        afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Pallete.kpBlue,
          iconStyle: IconStyle(
            fontSize: 2,
            color: Pallete.kpBlue,
            iconData: Icons.circle,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: pickUp,
        ),
      ),
      TimelineTile(
        alignment: TimelineAlign.start,
        beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isLast: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Colors.white,
          iconStyle: IconStyle(
            fontSize: 15,
            color: Pallete.kpRed,
            iconData: Icons.location_on,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: dropOff,
        ),
      )
    ],
  );
}

Widget customTimelineTilePahatid(String pickUp, String dropOff) {
  return Column(
    children: [
      TimelineTile(
        alignment: TimelineAlign.start,
        afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Pallete.kpBlue,
          iconStyle: IconStyle(
            fontSize: 20,
            color: Pallete.kpBlue,
            iconData: Icons.circle,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            pickUp,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
      TimelineTile(
        axis: TimelineAxis.vertical,
        alignment: TimelineAlign.start,
        afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Pallete.kpBlue,
          iconStyle: IconStyle(
            fontSize: 10,
            color: Pallete.kpBlue,
            iconData: Icons.circle,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            dropOff,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
      TimelineTile(
        axis: TimelineAxis.vertical,
        alignment: TimelineAlign.start,
        afterLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Pallete.kpBlue,
          iconStyle: IconStyle(
            fontSize: 2,
            color: Pallete.kpBlue,
            iconData: Icons.circle,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            dropOff,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
      TimelineTile(
        alignment: TimelineAlign.start,
        beforeLineStyle: LineStyle(color: Pallete.kpGrey, thickness: 2),
        lineXY: 0.06,
        isLast: true,
        indicatorStyle: IndicatorStyle(
          width: 10,
          color: Colors.white,
          iconStyle: IconStyle(
            fontSize: 25,
            color: Pallete.kpRed,
            iconData: Icons.location_on,
          ),
        ),
        endChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          constraints: BoxConstraints(maxHeight: 300, maxWidth: 300),
          child: Text(
            dropOff,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ),
    ],
  );
}
