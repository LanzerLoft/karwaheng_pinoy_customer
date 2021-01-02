import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:slider_button/slider_button.dart';

import 'hexcolor.dart';

Widget loginButton(Function onPressed) {
  return Container(
    width: double.infinity,
    height: 50,
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

Widget customButtonChoose(Function onPressed, String fText, String sText,
    double width, double height, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: height,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text.rich(
        TextSpan(
            text: fText,
            style: CustomTextStyle.textStyleWhite20,
            children: [
              TextSpan(text: sText, style: CustomTextStyle.textStyleWhite12),
            ]),
        textAlign: TextAlign.center,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
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

Widget flatButtonIcon(Icon icon, String data, Function onPressed) {
  return FlatButton(
    onPressed: onPressed,
    child: Row(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            data,
            style: CustomTextStyle.textStyleBlue13,
          ),
        ),
      ],
    ),
  );
}

Widget flatButtonIconTrailing(
    Icon iconHeading, String data, Function onPressed) {
  return FlatButton(
    height: 55,
    onPressed: onPressed,
    child: Row(
      children: [
        iconHeading,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            data,
            style: CustomTextStyle.textStyleBlue14,
          ),
        ),
        Spacer(),
      ],
    ),
  );
}

Widget flatButtonIconColor(Icon icon, String data, Function onPressed) {
  return FlatButton(
    onPressed: onPressed,
    child: Row(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            data,
            style: CustomTextStyle.textStyleGrey16,
          ),
        ),
      ],
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

Widget buttontext(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(fontWeight: FontWeight.w400, color: Pallete.kpBlue),
  );
}

Widget listTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(fontWeight: FontWeight.w400, color: Pallete.kpBlue),
  );
}

Widget flatButtons(
  Widget text,
  Function function,
) {
  return FlatButton(
    onPressed: function,
    child: ListTile(
      trailing: FittedBox(
        fit: BoxFit.fill,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ],
        ),
      ),
      title: text,
    ),
  );
}
