import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_changePass.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_notifications.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_myBookings.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Celebrate.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/celebrate_Today.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Refer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_calculateVolumetric.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_manageParterRiders.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_kpWallet.dart';

import 'custom_pageRoute.dart';

class UserDrawer extends StatefulWidget {
  @override
  _UserDrawerState createState() => _UserDrawerState();
}

class _UserDrawerState extends State<UserDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,

        children: <Widget>[
          DrawerHeader(
            curve: Curves.bounceInOut,
            decoration: BoxDecoration(
              color: Pallete.kpBlue,
            ),
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              overflow: Overflow.clip,
              children: [
                Positioned(
                  top: 20,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Good day,',
                      style: TextStyle(color: Pallete.kpWhite, fontSize: 26),
                      children: <TextSpan>[
                        TextSpan(
                          text: '\n Sonny!',
                          style:
                              TextStyle(color: Pallete.kpWhite, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  height: 150,
                  width: 150,
                  top: 12,
                  left: 150,
                  child: Container(
                    child: Image.asset(
                      "assets/login_images/KP_profile.png",
                    ),
                  ),
                ),
                Positioned(
                  left: 1,
                  bottom: 30,
                  child: RichText(
                    text: TextSpan(
                      text: '09123456789',
                      style: TextStyle(color: Pallete.kpWhite, fontSize: 12),
                      children: <TextSpan>[
                        TextSpan(
                          text: '/Karwaheng pinoy',
                          style:
                              TextStyle(color: Pallete.kpWhite, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ExpansionTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Pallete.kpBlue,
            ),
            title: listTitle("My Account"),
            children: <Widget>[
              flatButtons(
                buttontext("My Profile"),
                () {},
              ),
              flatButtons(
                buttontext("Change Passcode"),
                () {
                  pageRoute(context, UserchangePassResponsive());
                },
              ),
              flatButtons(
                buttontext("Notfications and Sound"),
                () {
                  pageRoute(context, UserNotificationsResponsive());
                },
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              Icons.dashboard,
              color: Pallete.kpBlue,
            ),
            title: listTitle("My Dashboard"),
            children: <Widget>[
              flatButtons(
                buttontext("Recognized"),
                () {},
              ),
              flatButtons(
                buttontext("Celebrate"),
                () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => UserCelebrate()));
                },
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(
              Icons.motorcycle,
              color: Pallete.kpBlue,
            ),
            title: listTitle("My Bookings"),
            children: <Widget>[
              flatButtons(
                buttontext("Scheduled"),
                () {
                  pageRoute(context, UserMybookings());
                },
              ),
              flatButtons(
                buttontext("Ongoing"),
                () {},
              ),
              flatButtons(
                buttontext("Delivered"),
                () {},
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
            onExpansionChanged: (value) {
              pageRoute(context, UserKpWallet());
            },
            leading: Icon(
              Icons.wallet_giftcard,
              color: Pallete.kpBlue,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
            title: listTitle("My Wallet"),
            // children: <Widget>[
            //   flatButtons(
            //     buttontext("Top-up"),
            //     () {},
            //   ),
            //   flatButtons(
            //     buttontext("Transfer"),
            //     () {},
            //   ),
            //   flatButtons(
            //     buttontext("History"),
            //     () {},
            //   ),
            //   flatButtons(
            //     buttontext("Rewards"),
            //     () {},
            //   ),
            // ],
          ),
          ExpansionTile(
            leading: Icon(
              Icons.help_outline_outlined,
              color: Pallete.kpBlue,
            ),
            title: listTitle("Help Center"),
            children: <Widget>[
              flatButtons(
                buttontext("FAQS"),
                () {},
              ),
              flatButtons(
                buttontext("Chat With Us"),
                () {},
              ),
              flatButtons(
                buttontext("About Us"),
                () {},
              ),
              flatButtons(
                buttontext("Pricing Schedule"),
                () {},
              ),
              flatButtons(
                buttontext("Send Feedback"),
                () {},
              ),
              flatButtons(
                buttontext("Priviacy Policy"),
                () {},
              ),
              flatButtons(
                buttontext("Terms of Use"),
                () {},
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(Icons.logout, color: Pallete.kpBlue),
            label: buttontext("Logout"),
          ),
        ],
      ),
    );
  }
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

// class FlatButtons extends StatefulWidget {
//   final Widget text;
//   final Function function;
//   const FlatButtons({Key key, this.text, this.function}) : super(key: key);

//   @override
//   _FlatButtonsState createState() => _FlatButtonsState();
// }

// class _FlatButtonsState extends State<FlatButtons> {
//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       onPressed: widget.function,
//       child: ListTile(
//         trailing: FittedBox(
//           fit: BoxFit.fill,
//           child: Row(
//             children: <Widget>[
//               Icon(
//                 Icons.arrow_forward_ios,
//                 size: 16,
//               ),
//             ],
//           ),
//         ),
//         title: widget.text,
//       ),
//     );
//   }
// }
