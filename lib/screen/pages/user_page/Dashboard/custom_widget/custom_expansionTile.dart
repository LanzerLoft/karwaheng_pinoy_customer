import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:sizer/sizer.dart';

Widget expansionTile(
  Widget text,
) {
  return ExpansionTile(
    title: Wrap(
      spacing: 15.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              border: Border.all(color: Pallete.kpBlue, width: 1.0),
              color: Pallete.kpBlue,
              shape: BoxShape.circle),
        ),
        text,
      ],
    ),
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(
          left: 30,
        ),
        child: Column(
          children: [
            customTextField(
              (value) {},
              "Address",
            ),
            SizedBox(
              height: 15,
            ),
            customTextField((value) {}, "Phone"),
            SizedBox(
              height: 15,
            ),
            customTextField((value) {}, "Put Specific Instruction Here"),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    ],
  );
}
