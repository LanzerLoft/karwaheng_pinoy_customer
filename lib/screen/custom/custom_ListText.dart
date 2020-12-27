import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';

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

Widget customListTextBlack(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleBlack18,
        ),
        Text(
          secondText,
          style: CustomTextStyle.textStyleBlack18,
        ),
      ],
    ),
  );
}

Widget customListTextImage(String secondText) {
  return Container(
    child: Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/login_images/KP_profile.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleBlack18,
          ),
        ),
      ],
    ),
  );
}

Widget customListTextButton(
  String text,
) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: CustomTextStyle.textStyleGrey15,
          ),
          Container(
            height: 20,
            child: Row(
              children: [
                customButton2(
                    () {}, "Block", 5, 60, 25, Pallete.kpRed, Pallete.kpRed),
                SizedBox(
                  width: 10,
                ),
                customButton2(
                    () {}, "UnBlock", 5, 75, 25, Pallete.kpBlue, Pallete.kpBlue)
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget customListTextBlue(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleBlue14,
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 60, maxWidth: 180),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleBlack14,
          ),
        ),
      ],
    ),
  );
}

Widget customRichText(String firsText, String secondText) {
  return Text.rich(
    TextSpan(
        text: firsText,
        style: CustomTextStyle.textStyleBlack14,
        children: [
          TextSpan(
            text: secondText,
            style: CustomTextStyle.textStyleGrey13,
          ),
        ]),
  );
}

Widget customRichTextProof(
    String firsText, String secondText, BuildContext context) {
  return Text.rich(
    TextSpan(
        text: firsText,
        style: CustomTextStyle.textStyleBlack14,
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print("heyy");
              },
            text: secondText,
            style: TextStyle(
                decoration: TextDecoration.underline, color: Pallete.kpBlue),
          ),
        ]),
  );
}

Widget customRichTextColor(
    String firsText, String secondText, TextStyle style) {
  return Text.rich(
    TextSpan(text: firsText, style: style, children: [
      TextSpan(
        text: secondText,
        style: style,
      ),
    ]),
    textAlign: TextAlign.center,
  );
}

Widget customRichTextAppbar(String firsText, String secondText) {
  return Text.rich(
    TextSpan(
        text: firsText,
        style: CustomTextStyle.textStyleWhite18,
        children: [
          TextSpan(
            text: secondText,
            style: CustomTextStyle.textStyleWhite18,
          ),
        ]),
  );
}

Widget customRichTextblack(String firsText, String secondText) {
  return Text.rich(
    TextSpan(
        text: firsText,
        style: CustomTextStyle.textStyleBlack18,
        children: [
          TextSpan(
            text: secondText,
            style: CustomTextStyle.textStyleBlack18,
          ),
        ]),
  );
}

Widget customRichTextWhite(String firsText, String secondText) {
  return Text.rich(
    TextSpan(
        text: firsText,
        style: CustomTextStyle.textStyleWhite14,
        children: [
          TextSpan(
            text: secondText,
            style: CustomTextStyle.textStyleWhite14,
          ),
        ]),
  );
}
