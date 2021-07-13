import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
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
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_inbox_chat/user_Inbox.dart';
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
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    var box = Hive.box('authBox');

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
                                  userProvider.showpassword == false
                                      ? Container(
                                          width: 150,
                                          height: 150,
                                          child: CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage(
                                                "assets/login_images/Zuck.jpg"),
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
                                    userProvider.getImgFromGallery();
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
                    Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        leading: Container(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "assets/drawer_icons/sellercentral3.png",
                            filterQuality: FilterQuality.high,
                          ),
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
                                  child:
                                      customRichTextCol("Maginoo", "\nClass"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: flatButtonIconTrailing(
                              "assets/drawer_icons/mybooking.png",
                              "My Bookings",
                              () {
                                pageRoute(context, UserMybookings());
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: flatButtonIconTrailing(
                              "assets/drawer_icons/myaccount.png",
                              "My Account",
                              () {
                                pageRoute(context, UserMyAccount());
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: flatButtonIconTrailing(
                              "assets/drawer_icons/mywallet.png",
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
      ),
    );
  }
}
