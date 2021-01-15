import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/seller_page/custom_Seller_widget/custom_Seller_dashboardDrawer.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_user_dashboardDrawer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class SellerMainDashboard extends StatefulWidget {
  @override
  _SellerMainDashboardState createState() => _SellerMainDashboardState();
}

class _SellerMainDashboardState extends State<SellerMainDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
      ),
      drawer: SellerDrawer(),
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          color: Pallete.kpWhite,
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrientationLayoutBuilder(
                portrait: (context) =>
                    ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return Center(
                      child: Container(
                        width: 40.0.h,
                        height: 40.0.h,
                        child: Image.asset(
                          "assets/login_images/KP_LOGO.png",
                        ),
                      ),
                    );
                  }
                  return Center(
                    child: Container(
                      width: 40.0.h,
                      height: 40.0.h,
                      child: Image.asset(
                        "assets/login_images/KP_LOGO.png",
                      ),
                    ),
                  );
                }),
                landscape: (context) =>
                    ResponsiveBuilder(builder: (context, sizingInformation) {
                  if (sizingInformation.deviceScreenType ==
                      DeviceScreenType.tablet) {
                    return Center(
                      child: Container(
                        width: 40.0.h,
                        height: 40.0.h,
                        child: Image.asset(
                          "assets/login_images/KP_LOGO.png",
                        ),
                      ),
                    );
                  }
                  return Center(
                    child: Container(
                      width: 40.0.h,
                      height: 40.0.h,
                      child: Image.asset(
                        "assets/login_images/KP_LOGO.png",
                      ),
                    ),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Text(
                  "Choose a Service",
                  style: CustomTextStyle.textStyleGrey32,
                ),
              ),
              customCardPabiliService(
                  "PABILI", "Send Parcel to the recipient now!", () {
                pageRoute(context, UserDrawer());
              }),
              SizedBox(
                height: 10,
              ),
              customCardPahatidService(
                  "PAHATID", "On demand purchase service!", () {}),
            ],
          ),
        ),
      ),
    );
  }
}
