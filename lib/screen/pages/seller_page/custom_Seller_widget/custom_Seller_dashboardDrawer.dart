import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
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
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Inbox.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Refer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_calculateVolumetric.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_manageParterRiders.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/User_wallet.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
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
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      leading: Icon(
                        UserDrawerIcons.seller_central,
                        color: Pallete.kpYellow,
                        size: 40,
                      ),
                      initiallyExpanded: true,
                      title: listTitle("Seller Central"),
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: flatButtonIconTrailing(
                            Icon(
                              UserDrawerIcons.mybooking,
                              color: Pallete.kpYellow,
                              size: 40,
                            ),
                            "My Bookings",
                            () {
                              pageRoute(context, UserMybookings());
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: flatButtonIconTrailing(
                            Icon(
                              UserDrawerIcons.myaccount,
                              color: Pallete.kpYellow,
                              size: 40,
                            ),
                            "My Account",
                            () {
                              pageRoute(context, UserMyAccount());
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: flatButtonIconTrailing(
                            Icon(
                              UserDrawerIcons.mywallet,
                              color: Pallete.kpYellow,
                              size: 40,
                            ),
                            "My Wallet",
                            () {
                              pageRoute(context, UserMyWallet());
                            },
                          ),
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
                      leading: Icon(
                        UserDrawerIcons.dashboarduser,
                        color: Pallete.kpYellow,
                        size: 40,
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
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      initiallyExpanded: false,
                      leading: Icon(
                        UserDrawerIcons.mytoolbox,
                        color: Pallete.kpYellow,
                        size: 40,
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
                  ),
                  Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      initiallyExpanded: false,
                      leading: Icon(
                        UserDrawerIcons.helpcenter,
                        color: Pallete.kpYellow,
                        size: 40,
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
