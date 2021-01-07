import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
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
        padding: EdgeInsets.fromLTRB(12, 12, 12, 10),
        child: child,
      ),
    ),
  );
}

Widget customCardAmmount(
  Function onTap,
  String ammount,
) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 65,
      width: 65,
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
        color: Pallete.kpWhite,
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
                style: CustomTextStyle.textStyleBlue22,
              ),
              Text("PHP"),
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
      Positioned(
        top: 10.0,
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: color),
            color: Pallete.kpWhite,
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/login_images/KP_LOGO.png'),
            ),
          ),
        ),
      ),
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
