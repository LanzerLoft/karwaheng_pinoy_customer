import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/seller_page/Seller_Drawer/Seller_Dashboard/Seller_DashBoard.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_History.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/User_wallet.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/Pabili_finding_a_rider/user_pabili_finding_rider.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/booking_status/pahatid_finding_a_rider/user_pahatid_finding_rider.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import '../user_Pabili_Pahatid.dart';
import 'custom_pageRoute.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RegisterSuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialogNoContent(
      // our custom dialog
      title: "Register Successful",

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
      title: "Booking Successful!",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        userProvider.paymentReset();
        pageRoute(context, UserPabiliFindingArider());
      },
    );
  }
}

class SellerBookingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return BookingDialog(
      // our custom dialog
      title: "Booking Successful!",
      positiveBtnText: "OK",
      positiveBtnPressed: () {
        userProvider.paymentReset();
        pageRoute(context, SellerMainDashboard());
      },
    );
  }
}

class PahatidBookingSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BookingDialog(
      // our custom dialog
      title: "Booking Successful",

      positiveBtnText: "OK",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserPahatidFindingArider());
      },
    );
  }
}

class ScheduledEditSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomDialogNoContent(
      // our custom dialog
      title: "Edit Successful",

      positiveBtnText: "OK",
      positiveBtnPressed: () {
        // Do something here
        pageRoute(context, UserMybookings());
      },
    );
  }
}

class PaymentSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPahatidProvider = Provider.of<UserPahatidProvider>(context);
    return CustomDialogPaymentSuccess(
      // our custom dialog
      title: "Payment Success!",

      positiveBtnText: "Ok",
      positiveBtnPressed: () {
        // Do something here
        userPahatidProvider.pahatidPaymentKPWALLET();
        pageRouteBack(context);
      },
    );
  }
}

class PaymentSuccessKPWALLETPabili extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    return CustomDialogPaymentSuccess(
      // our custom dialog
      title: "Payment Success!",

      positiveBtnText: "Ok",
      positiveBtnPressed: () {
        // Do something here
        userPabiliProvider.pabiliPaymentKPWALLET();
        pageRouteBack(context);
      },
    );
  }
}

class KPWalletPayNow extends StatelessWidget {
  final String amount;
  final TextEditingController controller;
  final Function onConfirm;
  final ValueChanged<String> onChanged;
  KPWalletPayNow({
    Key key,
    this.amount,
    this.onConfirm,
    this.onChanged,
    this.controller,
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
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '●',
                    autoFocus: true,
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.circle,
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeColor: Pallete.kpBlack,
                      inactiveColor: Pallete.kpBlack,
                      selectedColor: Pallete.kpBlack,
                      activeFillColor: Pallete.kpWhite,
                      inactiveFillColor: Pallete.kpWhite,
                      selectedFillColor: Pallete.kpWhite,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Pallete.kpWhite,
                    keyboardType: TextInputType.number,
                    enableActiveFill: true,
                    controller: controller,
                    onCompleted: (v) {
                      print("Completed");
                    },
                    onChanged: onChanged,
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
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
                      onConfirm,
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

class ShowOrderDate extends StatelessWidget {
  final ValueChanged<DateTime> onDateTimeChanged;

  ShowOrderDate({
    @required this.onDateTimeChanged,
  });
  @override
  Widget build(BuildContext context) {
    return ShowOrderDialog(
      onDateTimeChanged: onDateTimeChanged,
      positiveBtnText: "Set Order Date and Time",
      positiveBtnPressed: () {
        // Do something here
        pageRouteBack(context);
      },
    );
  }
}

class ShowOrderDialog extends StatelessWidget {
  final String positiveBtnText;
  final GestureTapCallback positiveBtnPressed;
  final ValueChanged<DateTime> onDateTimeChanged;
  ShowOrderDialog({
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
    @required this.onDateTimeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _showOrderDate(
          context, positiveBtnText, positiveBtnPressed, onDateTimeChanged),
    );
  }
}

Widget _showOrderDate(
  BuildContext context,
  String positiveBtnText,
  Function positiveBtnPressed,
  ValueChanged<DateTime> onDateTimeChanged,
) {
  DateTime now = DateTime.now();
  DateFormat('hh:mm a').format(DateTime.now());
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
            top: 20, left: 20, right: 20), // spacing inside the box
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                    "Today, ${DateFormat('hh:mm a').format(DateTime.now())}")),
            Container(
              height: 300,
              child: CupertinoTheme(
                data: CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      fontSize: 14,
                      color: Pallete.kpBlack,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: onDateTimeChanged),
              ),
            ),
            ButtonBar(
              buttonMinWidth: 100.0.w,
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    positiveBtnText,
                    style: CustomTextStyle.textStyleBlack16,
                  ),
                  onPressed: positiveBtnPressed,
                  color: Pallete.kpNoticeYellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
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

class CustomDialogNoContent extends StatelessWidget {
  final String title, positiveBtnText;
  final GestureTapCallback positiveBtnPressed;

  CustomDialogNoContent({
    @required this.title,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogNOContent(
          context, title, positiveBtnText, positiveBtnPressed),
    );
  }
}

class CustomDialogPaymentSuccess extends StatelessWidget {
  final String title, positiveBtnText;
  final GestureTapCallback positiveBtnPressed;

  CustomDialogPaymentSuccess({
    @required this.title,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child:
          _paymentSuccess(context, title, positiveBtnText, positiveBtnPressed),
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

Widget _buildDialogNOContent(
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

Widget _paymentSuccess(
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
        backgroundColor: Pallete.kpNoticeYellow,
        maxRadius: 40.0,
        child: Icon(Icons.check, size: 30, color: Pallete.kpBlack),
      ),
    ],
  );
}

class SaveAddressSuccessfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomSaveAdddress(
      // our custom dialog
      title: "Address successfully\nsaved!",

      positiveBtnText: "Ok",
      positiveBtnPressed: () {
        // Do something here
        pageRouteBack(context);
      },
    );
  }
}

class CustomSaveAdddress extends StatelessWidget {
  final String title, positiveBtnText;
  final GestureTapCallback positiveBtnPressed;

  CustomSaveAdddress({
    @required this.title,
    @required this.positiveBtnText,
    @required this.positiveBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _saveAddressSuccessfully(
          context, title, positiveBtnText, positiveBtnPressed),
    );
  }
}

Widget _saveAddressSuccessfully(
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
        backgroundColor: Pallete.kpNoticeYellow,
        maxRadius: 40.0,
        child: Icon(Icons.check, size: 30, color: Pallete.kpBlack),
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

Widget orderShowDialogBox(
    BuildContext context, String title, String assetImage) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpWhite,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetImage),
                    fit: BoxFit.contain,
                  ), //DecorationImage
                ), //Boxecoration
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogBoxHasAssigned(
    BuildContext context, String title, String assetImage) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpWhite,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetImage),
                    fit: BoxFit.fill,
                  ), //DecorationImage
                ), //Boxecoration
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogBoxIconCheck(
    BuildContext context, String title, String content) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              Text(
                content,
                style: CustomTextStyle.textStyleBlack16,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpBlue,
            child: Icon(
              Icons.check,
              size: 50,
              color: Pallete.kpWhite,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogBoxIconCheck2(
  BuildContext context,
  String title,
  Function onPressed,
) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpBlue,
            child: Icon(
              Icons.check,
              size: 50,
              color: Pallete.kpWhite,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogBoxIconCheckYellow(
  BuildContext context,
  String title,
  Function onPressed,
) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: onPressed,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpNoticeYellow,
            child: Icon(
              Icons.check,
              size: 50,
              color: Pallete.kpWhite,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogBoxIconClose(
  BuildContext context,
) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Order was canceled.",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,

          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpWhite,
            child: Icon(Icons.close, size: 50, color: Pallete.kpRed),
          ),
        ),
      ],
    ),
  );
}

///
///
///

Widget orderShowDialogParcelPickedUp(
  BuildContext context,
) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // Bottom rectangular box
          margin:
              EdgeInsets.only(top: 40), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Parcel has been Picked up",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          // assets/rider_icons/rider_dropoff_icon1.png
          // height: 40,
          // width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            maxRadius: 40.0,
            backgroundColor: Pallete.kpWhite,
            child: Icon(Icons.close, size: 50, color: Pallete.kpRed),
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogHasArrived(BuildContext context, String title) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/rider_icons/rider_arrived.png'),
              fit: BoxFit.fitHeight,
            ), //DecorationImage
          ), //BoxDecoration
        ), //Container
        Container(
          // Bottom rectangular box
          margin: EdgeInsets.only(
              top: 150), // to push the box half way below circle
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.only(
              top: 60, left: 20, right: 20), // spacing inside the box
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Partner Rider has arrived.",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center,
              ),
              ButtonBar(
                buttonMinWidth: 100,
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text("Ok"),
                    onPressed: () {
                      pageRouteBack(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget orderShowDialogWasCancel(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Are you sure you would like to Cancel?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child: Text("Continue",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpBlue,
                    child: Text("Yes, Cancel",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogWantToCancel(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Are you sure you want to cancel your order?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {},
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget addressIsOutsideServiceArea(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/outside_service_area.png'),
                  fit: BoxFit.fitHeight,
                ), //DecorationImage
              ), //BoxDecoration
            ),
          ), //Container
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text(
                "Your address is outside the service area. Please enter a valid address.",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Container(
              height: 30,
              width: 30.0.w,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                color: Pallete.kpBlue,
                child: Text("Close", style: CustomTextStyle.textStyleWhite16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
// Widget orderShowDialogCancelBooking(BuildContext context) {
//   return Dialog(
//     elevation: 0,
//     backgroundColor: Colors.transparent,
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 4,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       padding: EdgeInsets.all(8), // spacing inside the box
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//             child: Text("Are you sure you would like to Cancel?",
//                 style: CustomTextStyle.textStyleBlack18,
//                 textAlign: TextAlign.center),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                 child: Container(
//                   height: 30,
//                   width: 25.0.w,
//                   child: FlatButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     color: Pallete.kpRed,
//                     child:
//                         Text("Cancel", style: CustomTextStyle.textStyleWhite16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                 child: Container(
//                   height: 30,
//                   width: 30.0.w,
//                   child: FlatButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     color: Pallete.kpBlue,
//                     child: Text("Confirm",
//                         style: CustomTextStyle.textStyleWhite16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget orderShowDialogCancelOrder(BuildContext context) {
//   return Dialog(
//     elevation: 0,
//     backgroundColor: Colors.transparent,
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 4,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       padding: EdgeInsets.all(8), // spacing inside the box
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//             child: Text("Are you sure you want to cancel your order?",
//                 style: CustomTextStyle.textStyleBlack18,
//                 textAlign: TextAlign.center),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                 child: Container(
//                   height: 30,
//                   width: 25.0.w,
//                   child: FlatButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     color: Pallete.kpRed,
//                     child:
//                         Text("Cancel", style: CustomTextStyle.textStyleWhite16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                 child: Container(
//                   height: 30,
//                   width: 30.0.w,
//                   child: FlatButton(
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                     color: Pallete.kpBlue,
//                     child: Text("Confirm",
//                         style: CustomTextStyle.textStyleWhite16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }

Widget pabiliSaveAsDraft(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Save your order as draft?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      pageRoute(context, UserMainDashboard());
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      pageRoute(context, UserMainDashboard());
                    },
                    color: Pallete.kpBlue,
                    child: Text("Yes", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget pahatidSaveAsDraft(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Save your booking as draft?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      pageRoute(context, UserMainDashboard());
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      pageRoute(context, UserMainDashboard());
                    },
                    color: Pallete.kpBlue,
                    child: Text("Yes", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogCancelOrder(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Are you sure you want to cancel your order?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget myBookingScheduledCancel(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Are you sure you want to cancel your order?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogCancelBooking(BuildContext context) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("Are you sure you want to cancel your booking?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: () {
                      // pageRoute(context, UserReasonForCancelletion());
                      // pageRoute(context,
                      //     UserPahatidBookingOrderCanceledWithRiderNoRider());
                    },
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogCancelPayment(
    BuildContext context, String paymentName, Function onpressed) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text(
                "Are you sure you want to cancel your $paymentName payment?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: onpressed,
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogConfirmPayment(BuildContext context, Function onpressed) {
  return Dialog(
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.all(8), // spacing inside the box
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            child: Text("payment?",
                style: CustomTextStyle.textStyleBlack18,
                textAlign: TextAlign.center),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 25.0.w,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    color: Pallete.kpRed,
                    child:
                        Text("Cancel", style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  height: 30,
                  width: 30.0.w,
                  child: FlatButton(
                    onPressed: onpressed,
                    color: Pallete.kpBlue,
                    child: Text("Confirm",
                        style: CustomTextStyle.textStyleWhite16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget orderShowDialogFeedback(BuildContext context) {
  return Center(
    child: SingleChildScrollView(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 35, left: 12, right: 12, bottom: 12),
                    child: Text("How was your experience with our service?",
                        style: CustomTextStyle.textStyleBlack18,
                        textAlign: TextAlign.center),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: RatingBar.builder(
                      itemSize: 30,
                      glow: false,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 7.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Pallete.kpNoticeYellow,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Text("Send us your feedback.",
                          style: CustomTextStyle.textStyleBlack18),
                    ),
                  ),
                  customTextFieldFeedbackOrder((value) {}),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Container(
                      height: 30,
                      width: 100.0.w,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: Pallete.kpBlue,
                        child: Text("Send Feedback",
                            style: CustomTextStyle.textStyleWhite16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text("Report Rider",
                          style: TextStyle(
                            color: Pallete.kpBlack,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          )),
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        pageRouteBack(context);
                      },
                      icon: Icon(Icons.close, color: Pallete.kpGrey))),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget orderShowDialogReportRider(BuildContext context, String bookingId) {
  final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Center(
    child: SingleChildScrollView(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: 12, right: 12, bottom: 20),
                    child: Text("Report Rider",
                        style: CustomTextStyle.textStyleBlack18,
                        textAlign: TextAlign.center),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: Text("Booking ID: $bookingId",
                          style: CustomTextStyle.textStyleBlue14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                          "You may report our Partner Rider if you need us to take action/investigate further.",
                          style: CustomTextStyle.textStyleBlack14),
                    ),
                  ),
                  customTextFieldReportRider((value) {}),

                  Row(
                    children: [
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.add_circle,
                      //       color: Pallete.kpBlue,
                      //     ),
                      //     iconSize: 17),
                      PopupMenuButton(
                        color: Pallete.bcGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 20,
                        enabled: true,
                        icon: Icon(Icons.add_circle, color: Pallete.kpBlue),
                        onSelected: (value) {
                          userPabiliProvider.reportRiderUploadImage(
                              context, value);
                        },
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            height: 35,
                            child: Text(
                              "Camera",
                              style: CustomTextStyle.textStyleWhite12,
                            ),
                            value: "Camera",
                          ),
                          PopupMenuItem(
                            height: 35,
                            child: Text(
                              "Gallery",
                              style: CustomTextStyle.textStyleWhite12,
                            ),
                            value: "Gallery",
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Upload Image",
                          style: CustomTextStyle.textStyleGrey10,
                          children: <TextSpan>[
                            TextSpan(
                              text: " (max file size: 3MB)",
                              style: CustomTextStyle.textStyleGrey10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: Row(
                  //     children: [
                  //       RichText(
                  //         text: TextSpan(
                  //           text: "image00001.jpg",
                  //           style: CustomTextStyle.textStyleGrey10,
                  //           children: <TextSpan>[
                  //             TextSpan(
                  //               text: " (2MB)",
                  //               style: CustomTextStyle.textStyleGrey10,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       IconButton(
                  //           onPressed: () {},
                  //           icon: Icon(
                  //             Icons.close,
                  //             color: Pallete.kpRed,
                  //           ),
                  //           iconSize: 17),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Container(
                      height: 30,
                      width: 100.0.w,
                      child: FlatButton(
                        onPressed: () {
                          // Navigator.of(context).pop();
                        },
                        color: Pallete.kpBlue,
                        child: Text("Submit",
                            style: CustomTextStyle.textStyleWhite16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        userPabiliProvider.pabilireportRiderClose(context);
                      },
                      icon: Icon(Icons.close, color: Pallete.kpGrey))),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget bookingReportRider(BuildContext context, String bookingId) {
  final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Center(
    child: SingleChildScrollView(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: EdgeInsets.all(8), // spacing inside the box
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20, left: 12, right: 12, bottom: 20),
                    child: Text("Report Rider",
                        style: CustomTextStyle.textStyleBlack18,
                        textAlign: TextAlign.center),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: Text("Booking ID: $bookingId",
                          style: CustomTextStyle.textStyleBlue14),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                          "You may report our Partner Rider if you need us to take action/investigate further.",
                          style: CustomTextStyle.textStyleBlack14),
                    ),
                  ),
                  customTextFieldReportRider((value) {}),
                  Row(
                    children: [
                      // IconButton(
                      //     onPressed: () {},
                      //     icon: Icon(
                      //       Icons.add_circle,
                      //       color: Pallete.kpBlue,
                      //     ),
                      //     iconSize: 17),
                      PopupMenuButton(
                        color: Pallete.bcGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 20,
                        enabled: true,
                        icon: Icon(Icons.add_circle, color: Pallete.kpBlue),
                        onSelected: (value) {},
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            height: 35,
                            child: Text(
                              "Camera",
                              style: CustomTextStyle.textStyleWhite12,
                            ),
                            value: "Cancel",
                          ),
                          PopupMenuItem(
                            height: 35,
                            child: Text(
                              "Gallery",
                              style: CustomTextStyle.textStyleWhite12,
                            ),
                            value: "Chat",
                          ),
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Upload Image",
                          style: CustomTextStyle.textStyleGrey10,
                          children: <TextSpan>[
                            TextSpan(
                              text: " (max file size: 3MB)",
                              style: CustomTextStyle.textStyleGrey10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 10),
                  //   child: Row(
                  //     children: [
                  //       RichText(
                  //         text: TextSpan(
                  //           text: "image00001.jpg",
                  //           style: CustomTextStyle.textStyleGrey10,
                  //           children: <TextSpan>[
                  //             TextSpan(
                  //               text: " (2MB)",
                  //               style: CustomTextStyle.textStyleGrey10,
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //       IconButton(
                  //           onPressed: () {},
                  //           icon: Icon(
                  //             Icons.close,
                  //             color: Pallete.kpRed,
                  //           ),
                  //           iconSize: 17),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    child: Container(
                      height: 30,
                      width: 100.0.w,
                      child: FlatButton(
                        onPressed: () {
                          // Navigator.of(context).pop();
                        },
                        color: Pallete.kpBlue,
                        child: Text("Submit",
                            style: CustomTextStyle.textStyleWhite16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        userPabiliProvider.pabilireportRiderClose(context);
                      },
                      icon: Icon(Icons.close, color: Pallete.kpGrey))),
            ],
          ),
        ),
      ),
    ),
  );
}

class UserReasonForCancelletion extends StatefulWidget {
  @override
  State<UserReasonForCancelletion> createState() =>
      UserReasonForCancelletionState();
}

class UserReasonForCancelletionState extends State<UserReasonForCancelletion> {
  final List<String> cancellationReasons = [
    "No rider was assigned (Over 40 minutes)",
    "Used another transport service",
    "Need to edit booking/order details",
    "Duplicate booking",
    "Rider didn't show up on time",
    "Rider does not have an insulated box",
    "Pickup time is unacceptable",
    "Rider asked to cancel booking/order delivery",
    "Rider claimed emergency",
    "Accidentally placed booking/order",
    "My Customer changed mind",
    "I changed my mind",
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              pageRouteBack(context);
            },
            icon: Icon(Icons.close, color: Pallete.kpBlue)),
        automaticallyImplyLeading: true,
        backgroundColor: Pallete.kpWhite,
        title: Text(
          "Booking Cancelation",
          style: TextStyle(color: Pallete.kpBlue),
        ),
        centerTitle: true,
        elevation: 2,
        // bottom: _tabBarPickupAddressMap(),
      ),
      body: Container(
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: CustomConSize.mobile,
          ),
        ),
        child: ListView.builder(
          shrinkWrap: false,
          itemCount: cancellationReasons.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              child: ListTile(
                title: Text(
                  cancellationReasons[index],
                  style: CustomTextStyle.textStyleGrey16,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
