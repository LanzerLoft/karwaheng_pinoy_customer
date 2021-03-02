import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/seller_page/Seller_Pabili_Pahatid/Seller_Pabili/seller_Pabili.dart';
import 'package:kp_mobile/screen/pages/seller_page/Seller_Pabili_Pahatid/Seller_Pahatid/seller_Pahatid.dart';
import 'package:kp_mobile/screen/pages/seller_page/custom_Seller_widget/custom_Seller_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/User_Drawer/User_myBookings/user_Scheduled.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_Tabbar.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_timelineTile.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class SellerMainDashboard extends StatefulWidget {
  @override
  _SellerMainDashboardState createState() => _SellerMainDashboardState();
}

class _SellerMainDashboardState extends State<SellerMainDashboard> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          centerTitle: true,
          title:
              Text("Karwaheng Pinoy", style: CustomTextStyle.textStyleBlue18),
        ),
        drawer: SellerDrawer(),
        backgroundColor: Pallete.kpWhite,
        bottomNavigationBar: SafeArea(
          maintainBottomViewPadding: true,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: tabBarOrders(
              "New Order",
              "Orders",
              "3",
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
                        child: Text(
                          "Choose a Service:",
                          style: CustomTextStyle.textStyleGrey32,
                        ),
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
                      bottom:
                          tabBarAllBookings("Active", "Ongoing", "Delivered"),
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
                      Container(
                        child: userProvider.customSwitchvibrate == true
                            ? ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return customCardBooking(
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                bottom: 20, top: 10),
                                            child: customRichTextBookingCard(
                                                "Date & Time of the delivery:  ",
                                                "08 july 2020, 5:30pm,"),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              customRichTextBooking(
                                                  "Booking ID:", "\nKP12345"),
                                              customListTextBookingPesoIcon(
                                                  "Delivery Fee:", "999"),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: customTimelineTile(
                                              "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                                              "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: customButton2(() {
                                              pageRoute(
                                                  context,
                                                  UserScheduledViewPage(
                                                    pickUp:
                                                        "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                                                    dropOff:
                                                        "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                                                    dateTimeDelivery:
                                                        "08 july 2020, 5:30pm,",
                                                    deliveryFee: "99999",
                                                    bookingID: "KP12345",
                                                    itemDescription:
                                                        "Blue jansport bag",
                                                    notesToRider: "Lorem ipsum",
                                                    paymentMethod: "GCASH",
                                                    riderName: "Juan Dela Cruz",
                                                    employeeID: "KP24235",
                                                  ));
                                            },
                                                "Edit Order",
                                                5,
                                                double.infinity,
                                                40,
                                                Pallete.kpBlue,
                                                Pallete.kpBlue),
                                          )
                                        ],
                                      ),
                                    ),
                                    Pallete.kpBlue,
                                  );
                                },
                                itemCount: 20,
                              )
                            : Center(
                                child: Text(
                                  "No Orders Available",
                                  style: CustomTextStyle.textStyleGreybold16,
                                ),
                              ),
                      ),
                      Center(
                          child: Text(
                        "Ongoing",
                        style: CustomTextStyle.textStyleGreybold16,
                      )),
                      Center(
                          child: Text(
                        "Delivered",
                        style: CustomTextStyle.textStyleGreybold16,
                      )),
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
