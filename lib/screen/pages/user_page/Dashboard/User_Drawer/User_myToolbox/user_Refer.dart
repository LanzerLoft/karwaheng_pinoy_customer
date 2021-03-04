import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:share/share.dart';
import 'package:sizer/sizer.dart';
import 'package:clipboard/clipboard.dart';

class UserReferAfriend extends StatefulWidget {
  @override
  _UserReferAfriendState createState() => _UserReferAfriendState();
}

class _UserReferAfriendState extends State<UserReferAfriend> {
  var onPressed;
  final snackBar = SnackBar(
    content: Text('Code Copied!'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Refer a Friend",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Get ₱50 and Give ₱50 to your friend!",
                    style: CustomTextStyle.textStyleBlue22,
                  ),
                ),
                Text(
                  "Refer a friend: get ₱50 and give ₱50 on their first successful booking plus get 1% of their delivery fee on succeeding bookings – Forever!",
                  style: CustomTextStyle.textStyleGrey14,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.center,
                    child: customListTextColumnBlue(
                      "Share Your Promo Code:",
                      "KP123456",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          FlutterClipboard.copy("KP123456")
                              .then((value) => print("Copied"));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.copy,
                              size: 15,
                            ),
                            Text(
                              "  Copy code",
                              style: CustomTextStyle.textStyleGrey14,
                            ),
                          ],
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: OutlinedButton(
                          onPressed: () {
                            Share.share('KP123456');

                            // Find the ScaffoldMessenger in the widget tree
                            // and use it to show a SnackBar.
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,
                                size: 15,
                                color: Pallete.kpYellow,
                              ),
                              Text(
                                "  Share with",
                                style: CustomTextStyle.textStyleGrey14,
                              ),
                            ],
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),

                      // IconButton(
                      //   color: Pallete.kpBlue,
                      //   onPressed: () {
                      //     FlutterClipboard.copy("KP123456")
                      //         .then((value) => print("Copied"));
                      //   },
                      //   icon: Icon(Icons.copy),
                      // ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/refer_a_Friend/KP_Refer.png",
                    alignment: Alignment.topCenter,
                    height: 50.0.h,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
