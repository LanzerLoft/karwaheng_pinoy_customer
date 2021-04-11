import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/User_wallet.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
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

class ChangePassSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: "Change Passcode",
      content: "Passcode update successful!",
      positiveBtnText: "Login now",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserLoginResponsive());
      },
    );
  }
}

class TransferGCashSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog2(
      // our custom dialog
      title: "GCash Payment",
      content:
          "Please review to ensure that the details are correct before you proceed",
      positiveBtnText: "Pay",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMyWallet());
      },
      negativeBtnText: "Cancel",
      negativeBtnPressed: () {
        // Do something here
        pageRouteBack(context);
      },
    );
  }
}

class TransferPayMayaSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog2(
      // our custom dialog
      title: "PayMaya Payment",
      content:
          "Please review to ensure that the details are correct before you proceed",
      positiveBtnText: "Pay",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMyWallet());
      },
      negativeBtnText: "Cancel",
      negativeBtnPressed: () {
        // Do something here
        pageRouteBack(context);
      },
    );
  }
}

class TransferKPWalletSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog2(
      // our custom dialog
      title: "KP Wallet Payment",
      content:
          "Please review to ensure that the details are correct before you proceed",
      positiveBtnText: "Pay",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMyWallet());
      },
      negativeBtnText: "Cancel",
      negativeBtnPressed: () {
        // Do something here
        pageRouteBack(context);
      },
    );
  }
}

class PabiliBookingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return BookingDialog(
      // our custom dialog
      title: "Booking Successful",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        userProvider.paymentReset();
        pageRoute(context, UserMainDashboard());
      },
    );
  }
}

class PahatidBookingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: "Booking Successful",
      content: "",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMainDashboard());
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

class KPWalletPayNow extends StatelessWidget {
  final String amount;

  final Function onConfirm;

  KPWalletPayNow({
    Key key,
    this.amount,
    this.onConfirm,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ColorBuilder _solidColor =
        PinListenColorBuilder(Pallete.kpBlue, Pallete.kpGrey);
    bool _solidEnable = false;
    bool _showpassword = true;
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "You are about to pay PHP",
                    style: TextStyle(
                      color: Pallete.kpBlack,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: amount,
                        style: TextStyle(
                            color: Pallete.kpBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: ' from your KP Wallet. Enter you',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: ' Passcode ',
                        style: TextStyle(
                            color: Pallete.kpBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: 'to confirm.',
                        style: TextStyle(
                            color: Pallete.kpBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: 20.0.w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Pallete.kpBlack,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: PinInputTextFormField(
                        decoration: UnderlineDecoration(
                          gapSpace: 50,
                          colorBuilder: PinListenColorBuilder(
                              Pallete.kpBlue, Pallete.kpGrey),
                          bgColorBuilder: _solidEnable ? _solidColor : null,
                          obscureStyle: ObscureStyle(
                            isTextObscure: _showpassword,
                            obscureText: '0',
                          ),
                        ),
                        pinLength: 4,
                        autoFocus: true,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        textCapitalization: TextCapitalization.characters,
                        onSubmit: (pin) {},
                        onChanged: (pin) {},
                        onSaved: (pin) {},
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 16,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    customButton3(
                      () {
                        pageRouteBack(context);
                      },
                      "Cancel",
                      5,
                      30,
                      Pallete.kpRed,
                      Pallete.kpRed,
                    ),
                    customButton3(
                      () {},
                      "Confirm",
                      5,
                      30,
                      Pallete.kpBlue,
                      Pallete.kpBlue,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PabiliPaymentSuccessful extends StatelessWidget {
  final String title;
  final String content;
  final String btnText;
  final Function onPressed;

  PabiliPaymentSuccessful({
    Key key,
    this.title,
    this.content,
    this.btnText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      // our custom dialog
      title: title,
      content: content,
      positiveBtnText: btnText,
      positiveBtnPressed: onPressed,
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

class BookingDialog extends StatelessWidget {
  final String title, positiveBtnText;
  final GestureTapCallback positiveBtnPressed;

  BookingDialog({
    @required this.title,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildBookingDialog(
          context, title, positiveBtnText, positiveBtnPressed),
    );
  }
}

Widget _buildBookingDialog(
  BuildContext context,
  String title,
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

class CustomDialog2 extends StatelessWidget {
  final String title, content, positiveBtnText, negativeBtnText;
  final GestureTapCallback positiveBtnPressed;
  final GestureTapCallback negativeBtnPressed;

  CustomDialog2({
    @required this.title,
    @required this.content,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
    @required this.negativeBtnText,
    @required this.negativeBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent2(context, title, content, positiveBtnText,
          negativeBtnText, positiveBtnPressed, negativeBtnPressed),
    );
  }
}

Widget _buildDialogContent2(
  BuildContext context,
  String title,
  String content,
  String positiveBtnText,
  String negativeBtnText,
  Function positiveBtnPressed,
  Function negativeBtnPressed,
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
                  child: Text(negativeBtnText),
                  onPressed: negativeBtnPressed,
                ),
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
