import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_HelpCenter.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_HelpCenter/user_sendFeedback.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_MyAccount.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_changePass.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_notifications.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Celebrate.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/celebrate_Today.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Recognized.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Refer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_calculateVolumetric.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_manageParterRiders.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_kpWallet.dart';
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
    return Drawer(
      child: Container(
        color: Pallete.kpWhite,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 220,
                    child: DrawerHeader(
                      padding: EdgeInsets.all(5),
                      curve: Curves.bounceInOut,
                      decoration: BoxDecoration(
                        color: Pallete.kpWhite,
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        overflow: Overflow.clip,
                        children: [
                          Positioned(
                            top: 50,
                            left: 40,
                            child: Column(
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Good day,',
                                    style: TextStyle(
                                        color: Pallete.kpBlue, fontSize: 26),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n Sonny!',
                                        style: TextStyle(
                                            color: Pallete.kpBlue,
                                            fontSize: 24),
                                      ),
                                    ],
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
                                          color: Pallete.kpBlue, fontSize: 12),
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
                          ),
                          userProvider.showpassword == false
                              ? Positioned(
                                  height: 200,
                                  width: 200,
                                  left: 115,
                                  child: Container(
                                    child: Image.asset(
                                      "assets/login_images/KP_profile.png",
                                    ),
                                  ),
                                )
                              : Positioned(
                                  height: 100,
                                  width: 100,
                                  top: 50,
                                  right: 20,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        fit: BoxFit.contain,
                                        image: AssetImage(
                                            'assets/refer_a_Friend/KP_Refer.png'),
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ),
                  flatButtonIconTrailing(
                    Icon(
                      Icons.account_circle_outlined,
                      color: Pallete.kpBlue,
                    ),
                    "My Account",
                    () {
                      pageRoute(context, UserMyAccount());
                    },
                  ),

                  flatButtonIconTrailing(
                    Icon(
                      Icons.motorcycle,
                      color: Pallete.kpBlue,
                    ),
                    "My Bookings",
                    () {
                      pageRoute(context, UserMybookings());
                    },
                  ),
                  flatButtonIconTrailing(
                    Icon(
                      Icons.wallet_giftcard,
                      color: Pallete.kpBlue,
                    ),
                    "My Wallet",
                    () {
                      pageRoute(context, UserKpWallet());
                    },
                  ),
                  // ExpansionTile(
                  //   leading: Icon(
                  //     Icons.motorcycle,
                  //     color: Pallete.kpBlue,
                  //   ),
                  //   title: listTitle("My Bookings"),
                  //   children: <Widget>[
                  //     flatButtons(
                  //       buttontext("Scheduled"),
                  //       () {
                  //         pageRoute(context, UserMybookings());
                  //       },
                  //     ),
                  //     flatButtons(
                  //       buttontext("Ongoing"),
                  //       () {},
                  //     ),
                  //     flatButtons(
                  //       buttontext("Delivered"),
                  //       () {},
                  //     ),
                  //   ],
                  // ),
                  ExpansionTile(
                    leading: Icon(
                      Icons.dashboard,
                      color: Pallete.kpBlue,
                    ),
                    title: listTitle("My Dashboard"),
                    children: <Widget>[
                      flatButtons(
                        buttontext("Recognized"),
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
                  ExpansionTile(
                    leading: Icon(
                      Icons.indeterminate_check_box,
                      color: Pallete.kpBlue,
                    ),
                    title: listTitle("My Toolbox"),
                    children: <Widget>[
                      flatButtons(
                        buttontext("Inbox"),
                        () {},
                      ),
                      flatButtons(
                        buttontext("Track My Delivery"),
                        () {
                          pageRoute(context, UserTrackMyDelivery());
                        },
                      ),
                      flatButtons(
                        buttontext("Calculate Volumeteric"),
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

                  ExpansionTile(
                    leading: Icon(
                      Icons.help_outline,
                      color: Pallete.kpBlue,
                    ),
                    title: listTitle("Help Center"),
                    children: <Widget>[
                      flatButtons(
                        buttontext("Send Feedback"),
                        () {
                          pageRoute(context, UserSendFeedback());
                        },
                      ),
                      flatButtons(
                        buttontext("Pricing Schedule"),
                        () {},
                      ),
                      flatButtons(
                        buttontext("About Us"),
                        () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  // flatButtonIconTrailing(
                  //   Icon(
                  //     Icons.help_outline,
                  //     color: Pallete.kpBlue,
                  //   ),
                  //   "Help Center",
                  //   () {
                  //     pageRoute(context, UserHelpCenter());
                  //   },
                  // ),
                ],
              ),
            ),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: FlatButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.logout, color: Pallete.kpBlue),
            //     label: buttontext("Logout"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
