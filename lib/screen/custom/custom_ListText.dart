import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';

Widget customListText(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleGrey18,
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 60, maxWidth: 180),
          child: Text(
            secondText,
            style: CustomTextStyle.textfieldBlack18,
          ),
        ),
      ],
    ),
  );
}

Widget customListText2(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textfieldBlack16,
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 60, maxWidth: 180),
          child: Text(
            secondText,
            style: CustomTextStyle.textfieldBlack24,
          ),
        ),
      ],
    ),
  );
}
