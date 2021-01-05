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

Widget customListTextImage(String secondText, Widget imageAsset) {
  return Container(
    child: Row(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: imageAsset,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleGrey18,
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
                    () {}, "Block", 5, 70, 25, Pallete.kpRed, Pallete.kpRed),
                SizedBox(
                  width: 10,
                ),
                customButton2(
                    () {}, "Unblock", 5, 85, 25, Pallete.kpBlue, Pallete.kpBlue)
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

Widget customListTextIcon(String firstText, String secondText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstText,
                style: CustomTextStyle.textStyleGrey14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      constraints:
                          BoxConstraints(maxHeight: 120, maxWidth: 180),
                      child: Text(
                        secondText,
                        style: CustomTextStyle.textStyleBlue14,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Pallete.kpGrey,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
        ],
      ),
    ),
  );
}

Widget customListTextBooking(
  String firstText,
  String secondText,
) {
  return Row(
    children: [
      Text(
        firstText,
        style: CustomTextStyle.textStyleGrey14,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          constraints: BoxConstraints(maxHeight: 120, maxWidth: 160),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleBlue14,
          ),
        ),
      ),
    ],
  );
}

Widget customListTextBookingPesoIcon(
  String firstText,
  String secondText,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firstText,
        style: CustomTextStyle.textStyleGrey14,
      ),
      Row(
        children: [
          ImageIcon(
            AssetImage("assets/payment_icons/pesoicon.png"),
            color: Pallete.kpBlue,
            size: 12,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleBlue18,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget customListTextPesoIcon(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 30,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          balance,
          style: CustomTextStyle.textStyleBlue45,
        ),
      ),
    ],
  );
}

Widget customListTextProfile(
    String firstText, String secondText, Function onTap, Widget widget) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstText,
                style: CustomTextStyle.textStyleGrey14,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: widget,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Pallete.kpGrey,
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
        ],
      ),
    ),
  );
}

Widget customListTextColIcon(
    String firstText, String secondText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: CustomTextStyle.textStyleBlack14,
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 60, maxWidth: 250),
                    child: Text(
                      secondText,
                      style: CustomTextStyle.textStyleGrey14,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Pallete.kpGrey,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(),
          ),
        ],
      ),
    ),
  );
}

Widget customRichText(String firsText, String secondText) {
  return Text.rich(
    TextSpan(text: firsText, style: CustomTextStyle.textStyleGrey14, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleBlue16,
      ),
    ]),
  );
}

Widget customRichTextBookingCard(String firsText, String secondText) {
  return Text.rich(
    TextSpan(text: firsText, style: CustomTextStyle.textStyleGrey13, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleBlue14,
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

Widget customRichTextAppbarBlue(String firsText, String secondText) {
  return Text.rich(
    TextSpan(text: firsText, style: CustomTextStyle.textStyleBlue18, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleBlue18,
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

Widget customRichTextBooking(String firsText, String secondText) {
  return Container(
    constraints: BoxConstraints(maxHeight: 80, maxWidth: 130),
    child: Text.rich(
      TextSpan(
          text: firsText,
          style: CustomTextStyle.textStyleGrey14,
          children: [
            TextSpan(
              text: secondText,
              style: CustomTextStyle.textStyleBlue18,
            ),
          ]),
      textAlign: TextAlign.center,
    ),
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

Widget customRichTextGestureReg(
  String firsText,
  String secondText,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Text.rich(
      TextSpan(text: firsText, style: CustomTextStyle.textgrey14, children: [
        TextSpan(
          text: secondText,
          style: CustomTextStyle.textStyleBlue16,
        ),
      ]),
    ),
  );
}

Widget customRichTextGestureLogin(
  String firsText,
  String secondText,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Text.rich(
      TextSpan(
          text: firsText,
          style: CustomTextStyle.textStyleBlue14,
          children: [
            TextSpan(
              text: secondText,
              style: CustomTextStyle.textStyleRed16,
            ),
          ]),
    ),
  );
}
