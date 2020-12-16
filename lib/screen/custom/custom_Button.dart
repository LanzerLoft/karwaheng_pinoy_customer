import 'package:flutter/material.dart';

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
