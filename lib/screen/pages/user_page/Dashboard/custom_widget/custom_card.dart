import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
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
    String data, BuildContext context, Function gestureIcon) {
  return Container(
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
                Text(
                  data,
                  style: CustomTextStyle.textStyleGreybold16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: GestureDetector(
                    onTap: gestureIcon,
                    child: Icon(
                      Icons.help,
                      size: 20,
                      color: Pallete.kpGrey,
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
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.payment,
                      color: Pallete.kpBlue,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                      SizedBox(height: 5),
                      Text(
                        text2,
                        style: CustomTextStyle.textStyleBluebold16,
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

Widget customCardCODpayment(String text1, String text2, Function onTap) {
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
                    child: Icon(
                      Icons.sports_motorsports,
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
                      Text(
                        text2,
                        style: CustomTextStyle.textStyleGrey13,
                      ),
                    ],
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

Widget customCardKPWalletpayment(String text1, String text2, Function onTap) {
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
                    child: Icon(
                      Icons.account_balance_wallet,
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

Widget customCardGCASHpayment(String text1, String text2, Function onTap) {
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
                    child: Icon(
                      Icons.wallet_giftcard,
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

Widget customCardPaymMayaPayment(String text1, String text2, Function onTap) {
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
                    child: Icon(
                      Icons.wallet_giftcard,
                      color: Colors.green,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                            color: Colors.green, fontWeight: FontWeight.bold),
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
              Text(
                firstText,
                style: CustomTextStyle.textStyleBlue20,
              ),
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
                style: CustomTextStyle.textStyleRed20,
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
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                    Icon(
                      Icons.share,
                      color: Pallete.kpBlue,
                    ),
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
