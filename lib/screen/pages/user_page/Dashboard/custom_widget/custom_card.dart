import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
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
