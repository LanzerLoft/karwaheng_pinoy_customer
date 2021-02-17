import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:sizer/sizer.dart';

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

Widget customListTextGrey(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: CustomTextStyle.textStyleGrey16),
        Row(
          children: [
            ImageIcon(
              AssetImage("assets/payment_icons/pesoicon.png"),
              color: Pallete.kpBlue,
              size: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                secondText,
                style: CustomTextStyle.textStyleBluebold16,
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget customListTextGrey2(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: CustomTextStyle.textStyleGrey16),
        Text(
          secondText,
          style: CustomTextStyle.textStyleBluebold16,
        ),
      ],
    ),
  );
}

Widget customListTextGreyGcash(String firstText, String secondText) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(firstText, style: CustomTextStyle.textStyleGrey16),
        Container(
          constraints: BoxConstraints(
            maxHeight: 300,
            maxWidth: 180,
          ),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleBluebold16,
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

Widget customListTextColumnBlue(String firstText, String secondText) {
  return Container(
    child: Column(
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleBlue22,
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 60, maxWidth: 180),
          child: Text(
            secondText,
            style: CustomTextStyle.textStyleGrey22,
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
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleGrey14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Container(
            constraints: BoxConstraints(maxHeight: 120, maxWidth: 50.0.w),
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleBlue14,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget customScheduledEditField(
  String firstText,
  Widget widget,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleGrey14,
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: widget,
        )
      ],
    ),
  );
}

Widget customListTextBookingSummaryPayment(
  String firstText,
  String secondText,
  String thirdText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleGrey14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 120, maxWidth: 50.0.w),
                  child: Text(
                    secondText,
                    style: CustomTextStyle.textStyleBlue14,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  constraints: BoxConstraints(maxHeight: 120, maxWidth: 50.0.w),
                  child: Text(
                    thirdText,
                    style: CustomTextStyle.textStyleBlue14,
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget customListTextTrackDelivery(
  String firstText,
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: Row(
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleGrey14,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            constraints: BoxConstraints(maxHeight: 120, maxWidth: 150),
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleBlue14,
            ),
          ),
        ),
      ],
    ),
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
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(
          balance,
          style: CustomTextStyle.textStyleBlue45,
        ),
      ),
    ],
  );
}

Widget listTextPesoIconTransfer(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 20,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(balance, style: CustomTextStyle.textStyleBlue28),
      ),
    ],
  );
}

Widget listTextPesoIcon18(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 15,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(balance, style: CustomTextStyle.textStyleBlue18),
      ),
    ],
  );
}

Widget listTextPesoIcon16(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 12,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(balance, style: CustomTextStyle.textStyleBluebold16),
      ),
    ],
  );
}

Widget listTextPesoIconRewards(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 20,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(balance, style: CustomTextStyle.textStyleBlue28),
      ),
    ],
  );
}

Widget walletListTextPesoIcon(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 8,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(balance, style: CustomTextStyle.textStyleBlue12),
      ),
    ],
  );
}

Widget customListTextPesoBalance(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 15,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          balance,
          style: CustomTextStyle.textStyleBlue22,
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

Widget customRichTextRecipment(String firsText, String secondText) {
  return Text.rich(
    TextSpan(text: firsText, style: CustomTextStyle.textStyleGrey16, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleBlue18,
      ),
    ]),
  );
}

Widget customRichTextCol(String firsText, String secondText) {
  return Text.rich(
    TextSpan(text: firsText, style: CustomTextStyle.textStyleBlue16, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleGrey14,
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
    TextSpan(text: firsText, style: CustomTextStyle.textStyleGrey14, children: [
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
    TextSpan(text: firsText, style: CustomTextStyle.textStyleBlue18, children: [
      TextSpan(
        text: secondText,
        style: CustomTextStyle.textStyleBlue18,
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

Widget customRichTextWeight(String firsText, String secondText) {
  return Container(
    constraints: BoxConstraints(maxHeight: 80, maxWidth: 130),
    child: Text.rich(
      TextSpan(
          text: firsText,
          style: CustomTextStyle.textStyleGrey22,
          children: [
            TextSpan(
              text: secondText,
              style: CustomTextStyle.textStyleBlue22,
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
