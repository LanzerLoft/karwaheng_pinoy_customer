import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';
import 'hexcolor.dart';
import 'package:sizer/sizer.dart';

final double buttonHeight = 55;

Widget loginButton(Function onPressed) {
  return Container(
    width: double.infinity,
    height: buttonHeight,
    child: FlatButton(
      color: Pallete.kpBlue,
      focusColor: Colors.blueAccent,
      onPressed: onPressed,
      child: Text(
        "Login",
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 20, fontWeight: FontWeight.bold),
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
    height: 50,
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
  return Container(
    width: double.infinity,
    height: buttonHeight,
    child: FlatButton(
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
    ),
  );
}

Widget customButton(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 55,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonYT(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 55,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Pallete.kpNoticeYellow,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonGrey(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 55,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonCopy(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 55,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonReg(Function onPressed, String text, double borderradius,
    double width, Color color, Color focusedcolor) {
  return Container(
    width: width,
    height: 60,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 20, fontWeight: FontWeight.bold),
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
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButton2black(Function onPressed, String text, double borderradius,
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
        style: TextStyle(
            color: Pallete.kpBlack, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButton2white(Function onPressed, String text, double borderradius,
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
        style: TextStyle(
            color: Pallete.kpWhite, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonApply(Function onPressed, String text, double borderradius,
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
        style: TextStyle(
            color: Pallete.kpBlack,
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButton3(Function onPressed, String text, double borderradius,
    double height, Color color, Color focusedcolor) {
  return Container(
    height: height,
    child: FlatButton(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButton4icon(Function onPressed, String text, double borderradius,
    double height, Color color, Color focusedcolor, IconData iconData) {
  return Container(
    height: height,
    child: FlatButton.icon(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: Pallete.kpBlack,
      ),
      label: Text(
        text,
        style: TextStyle(color: Pallete.kpBlack, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonAddDropOff(
    Function onPressed,
    String text,
    double borderradius,
    double height,
    Color color,
    Color focusedcolor,
    IconData iconData) {
  return Container(
    height: height,
    child: FlatButton.icon(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: Pallete.kpWhite,
      ),
      label: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonAnotherLoc(
    Function onPressed,
    String text,
    double borderradius,
    double height,
    Color color,
    Color focusedcolor,
    IconData iconData) {
  return Container(
    height: height,
    child: FlatButton.icon(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: Pallete.kpBlack,
      ),
      label: Text(
        text,
        style: TextStyle(color: Pallete.kpBlack, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget addMerchantButton(
    Function onPressed,
    String text,
    double borderradius,
    double height,
    double width,
    Color color,
    Color focusedcolor,
    IconData iconData) {
  return Container(
    height: height,
    width: width,
    child: FlatButton.icon(
      color: color,
      focusColor: focusedcolor,
      onPressed: onPressed,
      icon: Icon(iconData, color: Pallete.kpWhite),
      label: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderradius),
      ),
    ),
  );
}

Widget customButtonHomeWorkRecent(
  BuildContext context,
  Function homeOnpressed,
  Function workOnpressed,
  Function recentOnpressed,
) {
  final pahatidProvider = Provider.of<UserProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: pahatidProvider.homeColor == true
              ? Pallete.kpBlue
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: homeOnpressed,
          child: Text(
            "Home",
            style: TextStyle(
                color: pahatidProvider.homeColor == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: pahatidProvider.workColor == true
              ? Pallete.kpYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: workOnpressed,
          child: Text(
            "Work",
            style: TextStyle(
                color: pahatidProvider.workColor == true
                    ? Pallete.kpBlack
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: pahatidProvider.recentColor == true
              ? Pallete.kpRed
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: recentOnpressed,
          child: Text(
            "Recent",
            style: TextStyle(
                color: pahatidProvider.recentColor == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}

Widget buttonHomeWorkRecentPabiliChangeAddress(
  BuildContext context,
  Function homeOnpressed,
  Function workOnpressed,
  Function recentOnpressed,
) {
  final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: userPabiliProvider.pcahomeColor == true
              ? Pallete.kpBlue
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: homeOnpressed,
          child: Text(
            "Home",
            style: TextStyle(
                color: userPabiliProvider.pcahomeColor == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: userPabiliProvider.pcaworkColor == true
              ? Pallete.kpYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: workOnpressed,
          child: Text(
            "Work",
            style: TextStyle(
                color: userPabiliProvider.pcaworkColor == true
                    ? Pallete.kpBlack
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 35,
        width: 30.0.w,
        child: FlatButton(
          color: userPabiliProvider.pcarecentColor == true
              ? Pallete.kpRed
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: recentOnpressed,
          child: Text(
            "Recent",
            style: TextStyle(
                color: userPabiliProvider.pcarecentColor == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlack,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}

Widget customButtonSearch(
  Function onPressed,
  String text,
  double height,
) {
  return Container(
    height: height,
    child: FlatButton.icon(
      color: Pallete.kpBlue,
      focusColor: Pallete.kpBlue,
      onPressed: onPressed,
      icon: Icon(Icons.search, color: Pallete.kpWhite),
      label: Text(
        text,
        style: TextStyle(color: Pallete.kpWhite, fontSize: 16),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
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
              TextSpan(text: sText, style: CustomTextStyle.textStyleWhite14),
            ]),
        textAlign: TextAlign.center,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
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

Widget flatButtonIconTrailing(String string, String data, Function onPressed) {
  return FlatButton(
    height: 50,
    onPressed: onPressed,
    child: Row(
      children: [
        Container(
          width: 60,
          height: 60,
          child: Image.asset(
            string,
            filterQuality: FilterQuality.high,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            data,
            style: CustomTextStyle.textStyleBlack16,
          ),
        ),
        Spacer(),
      ],
    ),
  );
}

Widget flatButtonIconTrailingGrey(
    Icon iconHeading, String data, Function onPressed) {
  return FlatButton(
    height: 50,
    onPressed: onPressed,
    child: Row(
      children: [
        iconHeading,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            data,
            style: CustomTextStyle.textStyleGrey14,
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

Widget flatButtondotIcon(Icon icon, Widget label, Function onPressed) {
  return FlatButton.icon(
    onPressed: onPressed,
    icon: icon,
    label: label,
  );
}

Widget flatButtonIconBottomText(Icon icon, String data, Function onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            data,
            style: TextStyle(color: Pallete.kpYellow),
          ),
        ),
      ],
    ),
  );
}

Widget flatButtonIconBottomDelete(Icon icon, String data, Function onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(data, style: CustomTextStyle.textStyleGrey13),
        ),
      ],
    ),
  );
}

Widget flatButtonIconBottomBlock(Icon icon, String data, Function onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        icon,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(data, style: CustomTextStyle.textStyleGrey13),
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
    buttonColor: Pallete.kpBlue,
    backgroundColor: Pallete.kpBlue,
    shimmer: false,
    baseColor: Pallete.kpBlue,
  );
}

Widget buttontext(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(fontWeight: FontWeight.w400, color: Pallete.kpGrey),
  );
}

Widget buttontextGrey(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(fontWeight: FontWeight.w400, color: Pallete.kpGrey),
  );
}

Widget listTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: CustomTextStyle.textStyleBlack16,
  );
}

Widget listTitleGrey(String text) {
  return Text(
    text,
    textAlign: TextAlign.left,
    style: TextStyle(fontWeight: FontWeight.w400, color: Pallete.kpGrey),
  );
}

Widget flatButtons(
  Widget text,
  Function function,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: FlatButton(
      onPressed: function,
      child: ListTile(
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
              ),
            ],
          ),
        ),
        title: text,
      ),
    ),
  );
}

Widget flatButtonsdrawer(
  Widget text,
  Function function,
) {
  return FlatButton(
    onPressed: function,
    child: ListTile(
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 14,
      ),
      title: text,
    ),
  );
}

Widget customFlatButton(Function onPressed, String text) {
  return FlatButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: CustomTextStyle.textStyleBlue14,
    ),
  );
}

showDialogButton(
  BuildContext context,
  Widget child,
) {
  return showGeneralDialog(
    barrierDismissible: false,
    context: context,
    barrierColor: Colors.black54, // space around dialog
    transitionDuration: Duration(milliseconds: 800),
    transitionBuilder: (context, a1, a2, child) {
      return ScaleTransition(
        scale: CurvedAnimation(
            parent: a1,
            curve: Curves.elasticOut,
            reverseCurve: Curves.easeOutCubic),
        child: child,
      );
    },
    pageBuilder: (BuildContext context, Animation animation,
        Animation secondaryAnimation) {
      return null;
    },
  );
}

Widget oneWayRoundTripButton(BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 50,
        width: 45.0.w,
        child: FlatButton(
          color: userProvider.oneWay == true ? Pallete.kpBlue : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            userProvider.selectedOneWay();
          },
          child: Text(
            "One-Way",
            style: TextStyle(
                color: userProvider.oneWay == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlue,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      Container(
        height: 50,
        width: 45.0.w,
        child: FlatButton(
          color:
              userProvider.roundTrip == true ? Pallete.kpBlue : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            userProvider.selectedRoundTrip();
          },
          child: Text(
            "Round Trip",
            style: TextStyle(
                color: userProvider.roundTrip == true
                    ? Pallete.kpYellow
                    : Pallete.kpBlue,
                fontSize: 14),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    ],
  );
}

Widget orderNowOrderLaterButton(BuildContext context) {
  final pabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color:
              pabiliProvider.orderNow == true ? Pallete.kpRed : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            pabiliProvider.selectedOrderNow();
          },
          child: Text(
            "Order Now",
            style: TextStyle(
                color: pabiliProvider.orderNow == true
                    ? Pallete.kpWhite
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color: pabiliProvider.orderLater == true
              ? Pallete.kpNoticeYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpNoticeYellow,
          onPressed: () {
            pabiliProvider.selectedOrderlater();
          },
          child: Text(
            "Order Later",
            style: TextStyle(
                color: pabiliProvider.orderLater == true
                    ? Pallete.kpBlack
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}

Widget orderNowOrderLaterButtonPahatid(BuildContext context) {
  final pahatidProvider = Provider.of<UserPahatidProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color: pahatidProvider.deliverNowPahatid == true
              ? Pallete.kpRed
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            pahatidProvider.selectedDeliverNowPahatid();
          },
          child: Text(
            "Deliver Now",
            style: TextStyle(
                color: pahatidProvider.deliverNowPahatid == true
                    ? Pallete.kpWhite
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color: pahatidProvider.deliverLaterPahatid == true
              ? Pallete.kpNoticeYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpNoticeYellow,
          onPressed: () {
            pahatidProvider.selectedDeliverlaterPahatid();
          },
          child: Text(
            "Deliver Later",
            style: TextStyle(
                color: pahatidProvider.deliverLaterPahatid == true
                    ? Pallete.kpBlack
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}

///
///
///
///

Widget historyDeliveredCanceled(BuildContext context) {
  final pahatidProvider = Provider.of<UserPahatidProvider>(context);
  final userProvider = Provider.of<UserProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 30,
        width: 45.0.w,
        child: FlatButton(
          color: userProvider.historyDelivered == true
              ? Pallete.kpNoticeYellow
              : Pallete.kpGreyOkpGreypacity,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            userProvider.selectedHistoryDelivered();
          },
          child: Text(
            "Delivered",
            style: TextStyle(
              color: userProvider.historyDelivered == true
                  ? Pallete.kpBlack
                  : Pallete.kpBlack,
              fontSize: 18,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 30,
        width: 45.0.w,
        child: FlatButton(
          color: userProvider.historyCanceled == true
              ? Pallete.kpRed
              : Pallete.kpGreyOkpGreypacity,
          focusColor: Pallete.kpNoticeYellow,
          onPressed: () {
            ///
            ///
            ///
            ///
            userProvider.selectedHistoryCanceled();

            ///
            ///
            ///
          },
          child: Text(
            "Canceled",
            style: TextStyle(
              color: userProvider.historyCanceled == true
                  ? Pallete.kpWhite
                  : Pallete.kpBlack,
              fontSize: 18,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}

Widget passcodeResetEmailCellphone(BuildContext context) {
  final pabiliProvider = Provider.of<UserPabiliProvider>(context);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color: pabiliProvider.emailAddressResetPass == true
              ? Pallete.kpNoticeYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpYellow,
          onPressed: () {
            pabiliProvider.selectedEmailAddressResetPass();
          },
          child: Text(
            "Email",
            style: TextStyle(
                color: pabiliProvider.emailAddressResetPass == true
                    ? Pallete.kpBlack
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
      Container(
        height: 48,
        width: 45.0.w,
        child: FlatButton(
          color: pabiliProvider.cellphoneReserPass == true
              ? Pallete.kpNoticeYellow
              : Pallete.kpWhite,
          focusColor: Pallete.kpNoticeYellow,
          onPressed: () {
            pabiliProvider.selectedcellphoneReserPass();
          },
          child: Text(
            "Cellphone",
            style: TextStyle(
                color: pabiliProvider.cellphoneReserPass == true
                    ? Pallete.kpBlack
                    : Pallete.kpGrey,
                fontSize: 18),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Pallete.kpGreyOkpGreypacity3),
          ),
        ),
      ),
    ],
  );
}
