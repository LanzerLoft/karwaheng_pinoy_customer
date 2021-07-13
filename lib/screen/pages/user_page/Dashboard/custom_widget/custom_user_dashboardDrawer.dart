import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:kp_mobile/provider/user_provider/customer_pabili_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/custom/user_drawer_icons.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_Faqs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_HelpCenter.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_PricingSchedule.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_aboutUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_chatWithUs.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_privacyPolicy.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_sendFeedback.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_termsOfuse.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_MyAccount.dart';

import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_notifications.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Celebrate.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Recognized.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Refer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_calculateVolumetric.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_manageParterRiders.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/User_wallet.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'custom_pageRoute.dart';

class UserDrawer extends StatefulWidget {
  @override
  _UserDrawerState createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    final userPabiliProvider = Provider.of<UserPabiliProvider>(context);
    // Provider.of<UserProvider>(context, listen: false).getUserProfile();
    var box = Hive.box('profileBox');
    return Container(
      width: 90.0.w,
      child: Drawer(
        child: Container(
          color: Pallete.kpWhite,
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      height: 200,
                      child: DrawerHeader(
                        padding: EdgeInsets.all(5),
                        curve: Curves.bounceInOut,
                        decoration: BoxDecoration(color: Pallete.kpWhite),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onDoubleTap: () {
                                          userProvider.passcodeIcon();
                                        },
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: 'Good day,',
                                            style: TextStyle(
                                                color: Pallete.kpBlue,
                                                fontSize: 26,
                                                fontWeight: FontWeight.bold),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '\n Sonny!',
                                                style: TextStyle(
                                                    color: Pallete.kpBlue,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                            maxWidth: 150, maxHeight: 150),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text: '09123456789',
                                            style: TextStyle(
                                                color: Pallete.kpBlue,
                                                fontSize: 12),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '\nKarwaheng pinoy',
                                                style: TextStyle(
                                                    color: Pallete.kpBlue,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  userPabiliProvider.imageFile != null
                                      ? Container(
                                          width: 150,
                                          height: 150,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: Image.file(
                                              userPabiliProvider.imageFile,
                                              height: 300,
                                              fit: BoxFit.contain,
                                            ).image,
                                          ),
                                        )
                                      : Container(
                                          width: 150,
                                          height: 150,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage(
                                              "assets/login_images/KP_profile.png",
                                            ),
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 25),
                                child: GestureDetector(
                                  onTap: () {
                                    openBottomSheet(context);
                                    print("clicked");
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Pallete.kpBlue),
                                    child: Icon(
                                      Icons.edit,
                                      color: Pallete.kpWhite,
                                      size: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    flatButtonIconTrailing(
                      "assets/drawer_icons/myaccount.png",
                      "My Account",
                      () {
                        pageRoute(context, UserMyAccount());
                      },
                    ),
                    flatButtonIconTrailing(
                      "assets/drawer_icons/mybooking.png",
                      "My Bookings",
                      () {
                        pageRoute(context, UserMybookings());
                      },
                    ),
                    flatButtonIconTrailing(
                      "assets/drawer_icons/mywallet.png",
                      "My Wallet",
                      () {
                        pageRoute(context, UserMyWallet());
                      },
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/drawer_icons/dashboard_userSeller.png",
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        title: listTitle("My Dashboard"),
                        children: <Widget>[
                          flatButtons(
                            buttontext("Recognize"),
                            () {
                              pageRoute(context, UserRecognized());
                            },
                          ),
                          flatButtons(
                            buttontext("Celebrate"),
                            () {
                              pageRoute(context, UserCelebrate());
                            },
                          ),
                        ],
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/drawer_icons/mytoolbox.png",
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        title: listTitle("My Toolbox"),
                        children: <Widget>[
                          flatButtons(
                            buttontext("Inbox"),
                            () {
                              pageRoute(context, UserInbox());
                            },
                          ),
                          flatButtons(
                            buttontext("Track My Delivery"),
                            () {
                              pageRoute(context, UserTrackMyDelivery());
                            },
                          ),
                          flatButtons(
                            buttontext("Calculate Volumetric"),
                            () {
                              pageRoute(context, UserCalculateWeight());
                            },
                          ),
                          flatButtons(
                            buttontext("Refer a Friend"),
                            () {
                              pageRoute(context, UserReferAfriend());
                            },
                          ),
                          flatButtons(
                            buttontext("Manage Partner Riders"),
                            () {
                              pageRoute(context, UserManagePartners());
                            },
                          ),
                        ],
                      ),
                    ),
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/drawer_icons/helpcenter.png",
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        title: listTitle("Help Center"),
                        children: <Widget>[
                          flatButtons(
                            buttontext("FAQs"),
                            () {
                              pageRoute(context, UserFAQs());
                            },
                          ),
                          flatButtons(
                            buttontext("Chat with Us"),
                            () {
                              pageRoute(context, UserChatWithUs());
                            },
                          ),
                          flatButtons(
                            buttontext("About Us"),
                            () {
                              pageRoute(context, UserAboutUs());
                            },
                          ),
                          flatButtons(
                            buttontext("Send Feedback"),
                            () {
                              pageRoute(context, UserSendFeedback());
                            },
                          ),
                          flatButtons(
                            buttontext("Pricing Schedule"),
                            () {
                              pageRoute(context, UserPricingSchedule());
                            },
                          ),
                          flatButtons(
                            buttontext("Privacy Policy"),
                            () {
                              pageRoute(context, UserPrivacyPolicy());
                            },
                          ),
                          flatButtons(
                            buttontext("Terms of Use"),
                            () {
                              pageRoute(context, UserTermsOfUse());
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  "Version 1.0.01",
                  style: CustomTextStyle.textStyleBlue12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

openBottomSheet(BuildContext context) {
  final userPabiliProvider =
      Provider.of<UserPabiliProvider>(context, listen: false);
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Photos"),
              onTap: () {
                Navigator.pop(context);
                userPabiliProvider.getFromGallery();
              },
            ),
            ListTile(
              leading: Icon(Icons.camera),
              title: Text("Camera"),
              onTap: () {
                Navigator.pop(context);
                userPabiliProvider.getFromCamera();
              },
            ),
          ],
        );
      });
}

_changePhoto(BuildContext context) {
  final userPabiliProvider =
      Provider.of<UserPabiliProvider>(context, listen: false);
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      userPabiliProvider.getFromGallery();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Row(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  userPabiliProvider.getFromGallery();
                },
                child: Column(
                  children: [
                    Icon(Icons.photo, size: 20, color: Pallete.kpGrey),
                    Text(
                      "Select Photo",
                      style: CustomTextStyle.textStyleGrey14,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  userPabiliProvider.clearimage();
                },
                child: Column(
                  children: [
                    Icon(Icons.remove_circle_sharp,
                        size: 20, color: Pallete.kpGrey),
                    Text(
                      "Remove",
                      style: CustomTextStyle.textStyleGrey14,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
