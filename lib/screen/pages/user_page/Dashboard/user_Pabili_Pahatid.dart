import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/seller_page/Seller_Pabili_Pahatid/Seller_Pahatid/seller_Pahatid.dart';
import 'package:kp_mobile/screen/pages/seller_page/custom_Seller_widget/custom_Seller_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:badges/badges.dart';
import 'User_Drawer/User_myBookings/user_History.dart';
import 'User_Drawer/User_myBookings/user_Ongoing.dart';
import 'User_Drawer/User_myBookings/user_Scheduled.dart';
import 'User_Drawer/User_myBookings/user_myBookings.dart';
import 'custom_widget/custom_Tabbar.dart';
import 'custom_widget/custom_card.dart';
import 'custom_widget/custom_timelineTile.dart';
import 'custom_widget/custom_user_dashboardDrawer.dart';

class UserMainDashboard extends StatefulWidget {
  @override
  _UserMainDashboardState createState() => _UserMainDashboardState();
}

class _UserMainDashboardState extends State<UserMainDashboard> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor: Pallete.kpWhite,
            elevation: 0,
            iconTheme: IconThemeData(
              color: Pallete.kpBlue,
            ),
            leading: IconButton(
              icon: Icon(Icons.menu, size: 30), // change this size and style
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
            centerTitle: true,
            // actions: [
            //   IconButton(
            //     onPressed: () {
            //       userProvider.customSwitchVibrate();
            //     },
            //     icon: Icon(Icons.arrow_circle_down, size: 30),
            //   )
            // ],
            title:
                Text("Karwaheng Pinoy", style: CustomTextStyle.textStyleBlue18),
          ),
          drawer: UserDrawer(),
          backgroundColor: Pallete.kpWhite,
          bottomNavigationBar: SafeArea(
            maintainBottomViewPadding: true,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SizedBox(
                height: 50,
                child: tabBarOrders(
                  "New Order",
                  "Orders",
                  // "3",
                ),
              ),
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(
                      getValueForScreenType<double>(
                        context: context,
                        mobile: CustomConSize.mobile,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 25),
                          child: Text("Choose a Service:",
                              style: CustomTextStyle.textStyleGrey32),
                        ),
                        customCardPahatidService(
                            "PAHATID", "Send Parcel to recipient now!", () {
                          pageRoute(context, UserPahatidResponsive());
                        }),
                        SizedBox(
                          height: 10,
                        ),
                        customCardPabiliService(
                            "PABILI", "On-demand purchase service!", () {
                          pageRoute(context, UserPabiliResponsive());
                        }),
                        SizedBox(
                          height: 20,
                        ),
                        customCardPahatidService("PAHATID", "SELLER", () {
                          pageRoute(context, SellerPahatidResponsive());
                        }),
                      ],
                    ),
                  ),
                ),
              ),
              DefaultTabController(
                length: 3,
                child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        toolbarHeight: 0,
                        backgroundColor: Pallete.kpWhite,
                        floating: true,
                        pinned: true,
                        snap: false,
                        elevation: 0,
                        bottom: customTabBarMyBooking(
                          "Ongoing",
                          "Scheduled ",
                          "History",
                        ),
                      ),
                    ];
                  },
                  body: Container(
                    color: Pallete.kpWhite,
                    padding: EdgeInsets.all(
                      getValueForScreenType<double>(
                        context: context,
                        mobile: CustomConSize.mobile,
                      ),
                    ),
                    child: TabBarView(
                      physics: BouncingScrollPhysics(),
                      children: [
                        UserMyBookingsOngoing(),
                        UserMyBookingsSchedule(),
                        UserMyBookingsHistory(),
                      ],
                    ),
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(
              //     getValueForScreenType<double>(
              //       context: context,
              //       mobile: CustomConSize.mobile,
              //     ),
              //   ),
              //   child: userProvider.customSwitchvibrate == false
              //       ? ListView.builder(
              //           physics: BouncingScrollPhysics(),
              //           shrinkWrap: true,
              //           itemBuilder: (context, index) {
              //             return customCardBooking(
              //               Padding(
              //                 padding: EdgeInsets.only(top: 20, bottom: 10),
              //                 child: Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Padding(
              //                       padding: EdgeInsets.only(bottom: 20, top: 10),
              //                       child: customRichTextBookingCard(
              //                           "Date & Time of the delivery:  ",
              //                           "08 july 2020, 5:30pm,"),
              //                     ),
              //                     Row(
              //                       mainAxisAlignment:
              //                           MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         customRichTextBooking(
              //                             "Booking ID:", "\nKP12345"),
              //                         customListTextBookingPesoIcon(
              //                             "Delivery Fee:", "999"),
              //                       ],
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsets.symmetric(horizontal: 10),
              //                       child: customTimelineTile(
              //                         "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
              //                         "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
              //                       ),
              //                     ),
              //                     Padding(
              //                       padding: EdgeInsets.only(top: 20),
              //                       child: customButton2(() {
              //                         pageRoute(context, UserScheduledViewPage());
              //                       }, "Edit Order", 5, double.infinity, 40,
              //                           Pallete.kpBlue, Pallete.kpBlue),
              //                     )
              //                   ],
              //                 ),
              //               ),
              //               Pallete.kpBlue,
              //             );
              //           },
              //           itemCount: 20,
              //         )
              //       : Center(
              //           child: Text(
              //             "No Orders Available",
              //             style: CustomTextStyle.textStyleGreybold16,
              //           ),
              //         ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Pallete.kpWhite,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
