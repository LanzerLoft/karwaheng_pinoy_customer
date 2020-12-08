import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/padding.dart';

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
