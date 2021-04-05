import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/payment_options_icons.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:sizer/sizer.dart';

Widget customCard(
  Widget child,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: CustomPadding.padding16,
        child: child,
      ),
    ),
  );
}

Widget customCardPrivacy(
  Widget child,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: child,
    ),
  );
}

Widget customListTileFAQS(
  Widget child,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: child,
    ),
  );
}

Widget customCardAdditionalServices(ValueChanged<bool> onChanged, bool value,
    String data, BuildContext context, Function gestureIcon, Function ontap) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    data,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: value == true ? Pallete.kpBlue : Pallete.kpGrey),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: GestureDetector(
                      onTap: gestureIcon,
                      child: Icon(
                        Icons.help,
                        size: 20,
                        color: value == true ? Pallete.kpBlue : Pallete.kpGrey,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
                width: 25,
                child: Checkbox(
                  onChanged: onChanged,
                  value: value,
                  activeColor: Pallete.kpBlue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardTopUpPayment(String text1, String text2, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: Icon(
                  //     PaymentOptions.kpwallet,
                  //     color: Pallete.kpBlue,
                  //   ),
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              PaymentOptions.gcash,
                              color: Pallete.kpBlue,
                              size: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                text2,
                                style: CustomTextStyle.textStyleBluebold16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Pallete.kpGrey,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardCODpayment(
  ValueChanged<bool> onChanged,
  bool value,
  String text1,
  String text2,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    PaymentOptions.pickup,
                    color: Pallete.kpBlue,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: CustomTextStyle.textStyleBluebold16,
                        ),
                        Text(
                          text2,
                          style: CustomTextStyle.textStyleGrey13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
                width: 25,
                child: Checkbox(
                  onChanged: onChanged,
                  value: value,
                  activeColor: Pallete.kpBlue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardCODNEWpayment(
  ValueChanged<String> onChanged,
  TextEditingController controller,
  bool value,
  String text1,
  String text2,
  Function onTap,
  String codAmount,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/cod_abono.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  // Icon(
                  //   PaymentOptions.pickup,
                  //   color: Pallete.kpBlue,
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text1,
                            style: CustomTextStyle.textStyleBlackbold16),
                        Text(
                          text2,
                          style: CustomTextStyle.textStyleBlack13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      codAmount,
                      style: CustomTextStyle.textStyleBluebold16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Pallete.kpGrey,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardCODpaymentPahatid(
  ValueChanged<bool> onChanged,
  bool value,
  String text1,
  String text2,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    PaymentOptions.pickup,
                    color: Pallete.kpBlue,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: CustomTextStyle.textStyleBlack16,
                        ),
                        Text(
                          text2,
                          style: CustomTextStyle.textStyleBlack13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
                width: 25,
                child: Checkbox(
                  onChanged: onChanged,
                  value: value,
                  activeColor: Pallete.kpBlue,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardKPWalletpayment(String text1, String text2, String kpAmountPay,
    Function onTap, bool value) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/kpwallet.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: CustomTextStyle.textStyleBlackbold16,
                        ),
                        Text(
                          text2,
                          style: CustomTextStyle.textStyleBlack13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      kpAmountPay,
                      style: CustomTextStyle.textStyleBluebold16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Pallete.kpGrey,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardGCASHpayment(
  String text1,
  String text2,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/gcash.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: CustomTextStyle.textStyleBluebold16,
                        ),
                        Text(
                          text2,
                          style: CustomTextStyle.textStyleGrey13,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Pallete.kpGrey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardTopupPaymentMethod(
  String text1,
  String text2,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      height: 12.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      PaymentOptions.kpwallet,
                      color: Pallete.kpBlue,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: CustomTextStyle.textStyleBluebold16,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        constraints:
                            BoxConstraints(maxHeight: 10.0.h, maxWidth: 65.0.w),
                        child: Text(
                          text2,
                          style: CustomTextStyle.textStyleGrey13,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Icon(
              //   Icons.arrow_forward_ios,
              //   color: Pallete.kpGrey,
              //   size: 15,
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardGCASHpayment2(String text1, String text2,
    String gcashAmountPay, Function onTap, bool value) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/gcash.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      text1,
                      style: CustomTextStyle.textStyleBlackbold16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      gcashAmountPay,
                      style: CustomTextStyle.textStyleBluebold16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Pallete.kpGrey,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardPaymMayaPayment(
  String text1,
  String text2,
  Function onTap,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/paymaya.png",
                    ),
                  ),
                  Text(
                    text1,
                    style: CustomTextStyle.textStyleBluebold16,
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Pallete.kpGrey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardPaymMayaPayment2(String text1, String text2,
    String payMayaAmountPay, Function onTap, bool value) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: value == true
                ? Pallete.kpBlue
                : Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/payment_icons/paymaya.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      text1,
                      style: CustomTextStyle.textStyleBlackbold16,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      payMayaAmountPay,
                      style: CustomTextStyle.textStyleBluebold16,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Pallete.kpGrey,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardTransfertoRider(String text1, String text2, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpGrey.withOpacity(0.07),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.wallet_giftcard, color: Pallete.kpBlue),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Pallete.kpBlue, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        text2,
                        style: CustomTextStyle.textStyleGrey13,
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Pallete.kpGrey,
                size: 15,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardPabiliService(
    String firstText, String secondText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpRed.withOpacity(0.7),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding16,
          child: Column(
            children: [
              Text(
                firstText,
                style: CustomTextStyle.textStyleRed18,
              ),
              Text(
                secondText,
                style: CustomTextStyle.textStyleRed14,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardPahatidService(
    String firstText, String secondText, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 100.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Pallete.kpBlue.withOpacity(0.7),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding16,
          child: Column(
            children: [
              Text(firstText, style: CustomTextStyle.textStyleBlue18),
              Text(
                secondText,
                style: CustomTextStyle.textStyleBlue14,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardPabili(
  Widget child,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: child,
      ),
    ),
  );
}

Widget customCardAmmount(
  Function onTap,
  String ammount,
  Color colorPhp,
  TextStyle ammountColor,
  Color cardColor,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 12.0.h,
      width: 25.0.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            blurRadius: 0.01, // soften the shadow
            //extend the shadow
            offset: Offset(
              0, // Move to right 10  horizontally
              0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 0,
        child: Padding(
          padding: CustomPadding.padding8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ammount,
                style: ammountColor,
              ),
              Text(
                "PHP",
                style: TextStyle(color: colorPhp),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget customCardTopUp(
  Widget child,
) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.06),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: CustomPadding.padding16,
        child: child,
      ),
    ),
  );
}

Widget customCardMPR(
  double height,
  Widget child,
) {
  return Container(
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: CustomPadding.padding8,
        child: child,
      ),
    ),
  );
}

Widget customCardToUp(
  double height,
  Widget child,
) {
  return Container(
    height: height,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.05),
          blurRadius: 0.01, // soften the shadow
          //extend the shadow
          offset: Offset(
            0, // Move to right 10  horizontally
            0, // Move to bottom 10 Vertically
          ),
        )
      ],
    ),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      child: Padding(
        padding: CustomPadding.padding8,
        child: child,
      ),
    ),
  );
}

Widget customCardBooking(
  Widget child,
  Color color,
) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              blurRadius: 0.01, // soften the shadow
              //extend the shadow
              offset: Offset(
                0, // Move to right 10  horizontally
                0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          child: Padding(
            padding: CustomPadding.padding16,
            child: child,
          ),
        ),
      ),
      // Positioned(
      //   top: 10.0,
      //   child: Container(
      //     height: 50,
      //     width: 50,
      //     decoration: BoxDecoration(
      //       border: Border.all(color: color),
      //       color: Pallete.kpWhite,
      //       shape: BoxShape.circle,
      //       image: DecorationImage(
      //         fit: BoxFit.contain,
      //         image: AssetImage('assets/login_images/KP_LOGO.png'),
      //       ),
      //     ),
      //   ),
      // ),
    ],
  );
}

Widget customCardBookingRider(
  Widget child,
  String imageAssetString,
  Function shareOnPressed,
) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.05),
              blurRadius: 0.01, // soften the shadow
              //extend the shadow
              offset: Offset(
                0, // Move to right 10  horizontally
                0, // Move to bottom 10 Vertically
              ),
            )
          ],
        ),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 0,
          child: Padding(
            padding: CustomPadding.padding16,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Pallete.kpBlue),
                    color: Pallete.kpWhite,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(imageAssetString),
                    ),
                  ),
                ),
                child,
                Spacer(),
                flatButtonIconBottomText(
                    Icon(Icons.share, color: Pallete.kpYellow),
                    "Share",
                    shareOnPressed),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Widget bookingListOrderCard(context, String merchant, String order,
    String price, String specificNotes) {
  return customCardPabili(
    Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: false,
        maintainState: true,
        tilePadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
        onExpansionChanged: (value) {},
        subtitle: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            merchant,
            style: CustomTextStyle.textStyleGrey14,
          ),
        ),
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  order,
                  style: CustomTextStyle.textStyleBlue16,
                ),
              ),
            ),
            Row(
              children: [
                ImageIcon(
                  AssetImage("assets/payment_icons/pesoicon.png"),
                  color: Pallete.kpBlue,
                  size: 12,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: Text(
                    price,
                    style: CustomTextStyle.textStyleBlue16,
                  ),
                ),
              ],
            ),
          ],
        ),
        children: [
          IgnorePointer(
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: customTextFieldSpecNotes((value) {}, specificNotes),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget customCardRecognizedWeekly(
    String weekNo, String deliveryFee, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: customCard(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weekNo,
                style: CustomTextStyle.textStyleBluebold16,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Completed Delivery",
                    style: CustomTextStyle.textStyleGrey16),
              ),
            ],
          ),
          listTextPesoIconToday16(deliveryFee),
        ],
      ),
    ),
  );
}

Widget customCardCelebrateWeekly(
    String weekNo, String deliveryCount, String deliveryFee, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: customCard(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                weekNo,
                style: CustomTextStyle.textStyleBluebold16,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Delivery Count: $deliveryCount ",
                    style: CustomTextStyle.textStyleGrey16),
              ),
            ],
          ),
          listTextPesoIconToday16(deliveryFee),
        ],
      ),
    ),
  );
}

Widget customCardCelebrateYear(String quarterNo, String rebates,
    String deliveryCount, String deliveryFee, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: customCard(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                quarterNo,
                style: CustomTextStyle.textStyleBluebold16,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text("Delivery Count: $deliveryCount ",
                    style: CustomTextStyle.textStyleGrey16),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text("Delivery Fee: $deliveryFee ",
                    style: CustomTextStyle.textStyleGrey16),
              ),
            ],
          ),
          listTextPesoIconToday16(rebates),
        ],
      ),
    ),
  );
}

Widget customCardRecognizedDaily(
    String daily, String deliveryFee, Function onTap) {
  return Padding(
    padding: EdgeInsets.only(top: 5),
    child: GestureDetector(
      onTap: onTap,
      child: customCard(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  daily,
                  style: CustomTextStyle.textStyleBluebold16,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Pallete.kpBlue,
                    ),
                    child: Text("Completed Delivery",
                        style: CustomTextStyle.textStyleWhite14),
                  ),
                ),
              ],
            ),
            listTextPesoIconToday16(deliveryFee),
          ],
        ),
      ),
    ),
  );
}
