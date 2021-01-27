import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';

import '../user_Pabili_Pahatid.dart';
import 'custom_pageRoute.dart';

class RegisterSuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: "Register Successful",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
      positiveBtnText: "Login now",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserLoginResponsive());
      },
    );
  }
}

class PabiliBookingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: "Booking Successful",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserChooseAService());
      },
    );
  }
}

class ScheduledEditSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: "Edit Successful",
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMybookings());
      },
    );
  }
}

class CustomDialog extends StatelessWidget {
  final String title, content, positiveBtnText;
  final GestureTapCallback positiveBtnPressed;

  CustomDialog({
    @required this.title,
    @required this.content,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(
          context, title, content, positiveBtnText, positiveBtnPressed),
    );
  }
}

Widget _buildDialogContent(
  BuildContext context,
  String title,
  String content,
  String positiveBtnText,
  Function positiveBtnPressed,
) {
  return Stack(
    alignment: Alignment.topCenter,
    children: <Widget>[
      Container(
        // Bottom rectangular box
        margin:
            EdgeInsets.only(top: 40), // to push the box half way below circle
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.only(
            top: 60, left: 20, right: 20), // spacing inside the box
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyText2,
              textAlign: TextAlign.center,
            ),
            ButtonBar(
              buttonMinWidth: 100,
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text(positiveBtnText),
                  onPressed: positiveBtnPressed,
                ),
              ],
            ),
          ],
        ),
      ),
      CircleAvatar(
        // Top Circle with icon

        maxRadius: 40.0,
        child: Icon(
          Icons.check,
          size: 30,
        ),
      ),
    ],
  );
}
