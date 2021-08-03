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
            // ImageIcon(
            //   AssetImage("assets/payment_icons/pesoicon.png"),
            //   color: Pallete.kpBlue,
            //   size: 12,
            // ),
            Text(
              secondText,
              style: CustomTextStyle.textStyleBluebold16,
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

Widget customListTextColumnBlue(
  String firstText,
  String secondText,
) {
  return Container(
    child: Column(
      children: [
        Text(
          firstText,
          style: CustomTextStyle.textStyleBlue22,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            constraints: BoxConstraints(maxHeight: 60, maxWidth: 180),
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleGrey32,
            ),
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
                    size: 18,
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
          Text(
            secondText,
            style: CustomTextStyle.textStyleBlue18,
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
      Text(
        balance,
        style: CustomTextStyle.textStyleBlue45,
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

Widget pesoIconGcashPaymentTotal(
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
        child: Text(balance, style: CustomTextStyle.textStyleBlue20),
      ),
    ],
  );
}

Widget listTextPesoIconGCASH16(
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
        child: Text(balance, style: CustomTextStyle.textStyleBlue16),
      ),
    ],
  );
}

Widget listTextPesoIconToday(
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
        child: Text(balance, style: CustomTextStyle.textStyleBlue45),
      ),
    ],
  );
}

Widget listTextPesoIconToday16(
  String balance,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ImageIcon(
        AssetImage("assets/payment_icons/pesoicon.png"),
        color: Pallete.kpBlue,
        size: 10,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Text(balance, style: CustomTextStyle.textStyleBlue16),
      ),
    ],
  );
}

Widget listTextPesoIconMonthBS16(
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
        child: Text(balance, style: CustomTextStyle.textStyleBlue16),
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
        size: 14,
      ),
      Text(
        balance,
        style: CustomTextStyle.textStyleBlue22,
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
                    size: 18,
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
    String firstText, String secondText, String datetime, Function onTap) {
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
                  Text(firstText, style: CustomTextStyle.textStyleBlue14),
                  Container(
                    constraints: BoxConstraints(maxHeight: 60, maxWidth: 250),
                    child: Text(
                      secondText,
                      style: CustomTextStyle.textStyleGrey14,
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxHeight: 60, maxWidth: 250),
                    child: Text(
                      datetime,
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

Widget customTextViewProof(
  String firsText,
  String secondText,
  Function onTap,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firsText,
        style: CustomTextStyle.textStyleGrey14,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: GestureDetector(
            onTap: onTap,
            child: Text(
              secondText,
              style: TextStyle(
                color: Pallete.kpBlue,
                decoration: TextDecoration.underline,
              ),
            )),
      ),
    ],
  );
}

Widget customRichTextGestureLogin(
  String firsText,
  String secondText,
  Function onTap,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firsText,
        style: CustomTextStyle.textStyleBlue14,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: GestureDetector(
            onTap: onTap,
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleRed16,
            )),
      ),
    ],
  );
}

Widget customRichTextGestureResend(
  String firsText,
  String secondText,
  Function onTap,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firsText,
        style: CustomTextStyle.textStyleGrey14,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 3),
        child: GestureDetector(
            onTap: onTap,
            child: Text(
              secondText,
              style: CustomTextStyle.textStyleRed16,
            )),
      ),
    ],
  );
}

Widget customListTextRecognized(
  String firsText,
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firsText,
          style: CustomTextStyle.textStyleGrey16,
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlue18),
      ],
    ),
  );
}

Widget customListTextRecognizedPeso(
  String firsText,
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        Text(
          firsText,
          style: CustomTextStyle.textStyleGrey16,
        ),
        Spacer(),
        ImageIcon(
          AssetImage("assets/payment_icons/pesoicon.png"),
          color: Pallete.kpBlue,
          size: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Text(secondText, style: CustomTextStyle.textStyleBlue16),
        ),
      ],
    ),
  );
}

Widget whatWeDeliverText(
  String firsText,
  String secondText,
  Function onTap,
) {
  return Wrap(
    children: [
      Text(
        firsText,
        style: CustomTextStyle.textStyleBlack14,
        overflow: TextOverflow.ellipsis,
      ),
      GestureDetector(
          onTap: onTap,
          child: Text(
            secondText,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyle.textStyleBlue12,
          )),
    ],
  );
}

Widget oderSummaryTotalBill(
  String firsText,
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firsText,
          style: CustomTextStyle.textStyleBlue22,
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlue22),
      ],
    ),
  );
}

Widget oderSummarySubtotal(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Subtotal:",
          style: CustomTextStyle.textStyleBlackbold16,
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryDeliveryfee(
  String firsText,
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Delivery Fee (~$firsText)",
          style: CustomTextStyle.textStyleBlackbold16,
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryDiscount(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Discount:",
          style: CustomTextStyle.textStyleBlackbold16,
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryPettyCash(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text(
            "Petty Cash on Hand:",
            style: CustomTextStyle.textStyleBlackbold16,
          ),
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryGCash(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            "assets/payment_icons/gcash_logo.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryCODAbono(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            "assets/payment_icons/cod_abono.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryPaymaya(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            "assets/payment_icons/paymaya_logo.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}

Widget oderSummaryKPWallet(
  String secondText,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          child: Image.asset(
            "assets/payment_icons/kpwallet.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        Text(secondText, style: CustomTextStyle.textStyleBlackbold16),
      ],
    ),
  );
}
