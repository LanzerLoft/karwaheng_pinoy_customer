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
