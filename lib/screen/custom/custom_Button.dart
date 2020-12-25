import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import 'hexcolor.dart';

Widget loginButton(Function onPressed) {
  return Container(
    width: double.infinity,
    height: 45,
    child: FlatButton(
      color: Pallete.kpBlue,
      focusColor: Colors.blueAccent,
      onPressed: onPressed,
      child: Text(
        "Login",
        style: TextStyle(color: Pallete.kpWhite, fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
  );
}

Widget redButton(Function onPressed, String text) {
  return Container(
    width: 100,
    height: 35,
    child: FlatButton(
      color: Pallete.kpRed,
      focusColor: Pallete.kpRed,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  );
}

Widget customRedButton(Function onPressed, String text) {
  return FlatButton(
    color: Pallete.kpRed,
    focusColor: Pallete.kpRed,
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: Pallete.kpWhite, fontSize: 18),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  );
}

Widget customButton(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 45,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 18),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButton2(Function onPressed, String text, double borderradius,
    double width, double height, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: height,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 14),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonTopUp(Function onPressed, String text, double borderradius,
    double width, double height, Color color, Color focusedcolor) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Container(
      width: width,
      height: height,
      child: FlatButton(
        color: color,
        focusColor: focusedcolor,
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Pallete.kpBlack, fontSize: 32),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradius),
        ),
      ),
    ),
  );
}

Widget sliderButton(Function action) {
  return SliderButton(
    action: action,
    alignLabel: Alignment(0.1, 0),

    ///Put label over here
    label: Text(
      "Slide to confirm",
      style: TextStyle(
        color: Pallete.kpWhite,
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
    ),
    icon: Center(
        child: Icon(
      Icons.arrow_forward_ios,
      color: Colors.white,
      size: 30.0,
    )),

    ///Change All the color and size from here.
    width: 300,
    height: 50,
    buttonSize: 50,
    radius: 10,
    buttonColor: Pallete.kpRed,
    backgroundColor: Pallete.kpRed,
    shimmer: false,
    baseColor: Pallete.kpRed,
  );
}
