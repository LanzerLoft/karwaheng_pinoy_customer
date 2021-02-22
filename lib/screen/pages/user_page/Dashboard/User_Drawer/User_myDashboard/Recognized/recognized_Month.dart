import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:sizer/sizer.dart';

import 'Monthly/recognized_monthlyData.dart';
import 'Recognized_charts.dart';

class UserRecognizeMonth extends StatefulWidget {
  @override
  _UserRecognizeMonthState createState() => _UserRecognizeMonthState();
}

class _UserRecognizeMonthState extends State<UserRecognizeMonth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: CustomPadding.padding8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DefaultTabController(
                  length: 12,
                  initialIndex: 1,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Pallete.kpWhite,
                    unselectedLabelColor: Pallete.kpBlue,
                    indicator: RectangularIndicator(
                      color: Pallete.kpBlue,
                      bottomLeftRadius: 5,
                      bottomRightRadius: 5,
                      topLeftRadius: 5,
                      topRightRadius: 5,
                    ),
                    tabs: [
                      Tab(
                        text: "Jan",
                      ),
                      Tab(
                        text: "Feb",
                      ),
                      Tab(
                        text: "Mar",
                      ),
                      Tab(
                        text: "Apr",
                      ),
                      Tab(
                        text: "May",
                      ),
                      Tab(
                        text: "Jun",
                      ),
                      Tab(
                        text: "Jul",
                      ),
                      Tab(
                        text: "Aug",
                      ),
                      Tab(
                        text: "Sep",
                      ),
                      Tab(
                        text: "Oct",
                      ),
                      Tab(
                        text: "Nov",
                      ),
                      Tab(
                        text: "Dec",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: RecognizedMonthChart(
                    monthlyIncome: "25000",
                    week1: 8500,
                    week2: 3500,
                    week3: 5630,
                    week4: 7865,
                  ),
                ),
                Divider(),
                customCardRecognizedWeekly("Week 1", "8500", () {
                  pageRoute(
                      context,
                      RecognizedMonthlyData(
                        title: "Week 1",
                      ));
                }),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardRecognizedWeekly("Week 2", "3500", () {
                    pageRoute(
                        context,
                        RecognizedMonthlyData(
                          title: "Week 2",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardRecognizedWeekly("Week 3", "5630", () {
                    pageRoute(
                        context,
                        RecognizedMonthlyData(
                          title: "Week 3",
                        ));
                  }),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customCardRecognizedWeekly("Week 4", "7865", () {
                    pageRoute(
                        context,
                        RecognizedMonthlyData(
                          title: "Week 4",
                        ));
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RecognizedWeekChart extends StatelessWidget {
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
          "Week1",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: Padding(
        padding: EdgeInsets.all(
          getValueForScreenType<double>(
            context: context,
            mobile: CustomConSize.mobile,
          ),
        ),
        child: customCard(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: CustomPadding.padding16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "KP1000",
                      style: CustomTextStyle.textStyleBlue,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Pallete.kpBlue,
                        ),
                        child: Text("Completed Delivery",
                            style: CustomTextStyle.textStyleWhite12),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: CustomPadding.padding16,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Service Type"),
                        Text(
                          "N/A",
                          style: CustomTextStyle.textStyleBlue16,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Order Cost"),
                        listTextPesoIconMonthBS16("400"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery Fee"),
                        listTextPesoIconMonthBS16("100"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Bill"),
                        listTextPesoIconMonthBS16("500"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Payment Type"),
                        Text("Gcash"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Rebates/Promo"),
                        Text("N/A"),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Location"),
                          Container(
                            constraints:
                                BoxConstraints(maxHeight: 300, maxWidth: 220),
                            child: Text(
                                "Philippine Women's University,1743 Taft Ave, Malate, Manila, 1004 Metro Manila",
                                style: CustomTextStyle.textStyleBlue14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void _settingModalBottomSheet(context) {
//   showModalBottomSheet(
//       backgroundColor: Pallete.kpWhite,
//       context: context,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),
//       ),
//       builder: (BuildContext bc) {
//         return Container(
//           height: 70.0.h,
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: CustomPadding.padding16,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         "KP1000",
//                         style: CustomTextStyle.textStyleBlue,
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Pallete.kpBlue,
//                         ),
//                         child: Text("Completed Delivery",
//                             style: CustomTextStyle.textStyleWhite12),
//                       ),
//                     ],
//                   ),
//                 ),
//                 customCard(
//                   Padding(
//                     padding: CustomPadding.padding16,
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Service Type"),
//                             Text(
//                               "N/A",
//                               style: CustomTextStyle.textStyleBlue16,
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Total Bill"),
//                             listTextPesoIconMonthBS16("500"),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Order Cost"),
//                             listTextPesoIconMonthBS16("400"),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Delivery Fee"),
//                             listTextPesoIconMonthBS16("100"),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Payment Type"),
//                             Text("P 300"),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Location"),
//                             Container(
//                               padding: EdgeInsets.symmetric(vertical: 15),
//                               constraints:
//                                   BoxConstraints(maxHeight: 300, maxWidth: 300),
//                               child: Text("Office of the President",
//                                   style: CustomTextStyle.textStyleBlue16),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Rebates/Promo"),
//                             Text("N/A"),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       });
// }
