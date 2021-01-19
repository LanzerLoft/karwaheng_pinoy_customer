import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
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

class SellerDrawer extends StatefulWidget {
  @override
  _SellerDrawerState createState() => _SellerDrawerState();
}

class _SellerDrawerState extends State<SellerDrawer> {
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
                      decoration: BoxDecoration(color: Pallete.kpWhite),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        overflow: Overflow.clip,
                        children: [
                          Positioned(
                            top: 50,
                            left: 20,
                            child: Column(
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Good day,',
                                    style: TextStyle(
                                        color: Pallete.kpYellow, fontSize: 26),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: '\n Sonny!',
                                        style: TextStyle(
                                            color: Pallete.kpYellow,
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
                                          color: Pallete.kpYellow,
                                          fontSize: 12),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '\nKarwaheng pinoy',
                                          style: TextStyle(
                                              color: Pallete.kpYellow,
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
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      leading: Icon(
                        Icons.store_outlined,
                        color: Pallete.kpYellow,
                      ),
                      initiallyExpanded: true,
                      title: listTitleGrey("Seller Central"),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        'assets/seller_Icons/Maginoo_icon.png'),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: customRichTextCol("Maginoo", "\nClass"),
                              ),
                            ],
                          ),
                        ),
                        flatButtonsdrawer(
                          buttontextGrey("My Bookings"),
                          () {},
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.transparent,
                            ),
                            child: ExpansionTile(
                              title: listTitleGrey("My Dashboard"),
                              children: <Widget>[
                                flatButtonsdrawer(
                                  buttontextGrey("My Bookings"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Recognized"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Celebrate"),
                                  () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Theme(
                            data: Theme.of(context).copyWith(
                              dividerColor: Colors.transparent,
                            ),
                            child: ExpansionTile(
                              title: listTitleGrey("My Toolbox"),
                              children: <Widget>[
                                flatButtonsdrawer(
                                  buttontextGrey("Inbox"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Track My Delivery"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Calculate Volumeteric"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Refer a Friend"),
                                  () {},
                                ),
                                flatButtonsdrawer(
                                  buttontextGrey("Manage Partner Riders"),
                                  () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  flatButtonIconTrailingGrey(
                    Icon(
                      Icons.account_circle_outlined,
                      color: Pallete.kpYellow,
                    ),
                    "My Account",
                    () {},
                  ),
                  flatButtonIconTrailingGrey(
                    Icon(
                      Icons.wallet_giftcard,
                      color: Pallete.kpYellow,
                    ),
                    "My Wallet",
                    () {},
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      leading: Icon(
                        Icons.help_outline,
                        color: Pallete.kpYellow,
                      ),
                      title: listTitleGrey("Help Center"),
                      children: <Widget>[
                        flatButtonsdrawer(
                          buttontextGrey("Send Feedback"),
                          () {},
                        ),
                        flatButtonsdrawer(
                          buttontextGrey("Pricing Schedule"),
                          () {},
                        ),
                        flatButtonsdrawer(
                          buttontextGrey("About Us"),
                          () {},
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

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: FlatButton.icon(
            //     onPressed: () {},
            //     icon: Icon(Icons.logout, color: Pallete.kpBlue),
            //     label: buttontextGrey("Logout"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
