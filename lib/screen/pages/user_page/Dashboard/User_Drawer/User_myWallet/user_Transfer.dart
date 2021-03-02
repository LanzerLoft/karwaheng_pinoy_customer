import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'Transfer_Balance/Transfer_Gcash/user_Transfer_Gcash.dart';
import 'Transfer_Balance/Transfer_KPWallet/user_Transfer_KPWallet.dart';
import 'Transfer_Balance/Transfer_Paymaya/user_Transfer_Paymaya.dart';

class UserTransferWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String selected;
    return Container(
      height: 100.0.h,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: customButton2(() {
              pageRoute(context, TransferBalance());
            }, "Transfer Balance", 5, double.infinity, 50, Pallete.kpBlue,
                Pallete.kpBlue),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transfer History",
                  style: TextStyle(
                    fontSize: 14,
                    color: Pallete.kpGrey,
                  ),
                ),
                Container(
                  width: 100,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    hint: Text("All",
                        style: TextStyle(
                          fontSize: 14,
                          color: Pallete.kpGrey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: InputBorder.none,
                    ),
                    value: selected,
                    items: ["All", "This Month", "ThisWeek", "This Year"]
                        .map((label) => DropdownMenuItem(
                              child: Text(label,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Pallete.kpBlue,
                                  )),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customCardTopUp(
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Juan Dela Cruz",
                            style: CustomTextStyle.textStyleGrey18,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "09123456789",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Pallete.kpBlue,
                              ),
                              child: Text("GCash",
                                  style: CustomTextStyle.textStyleWhite14),
                            ),
                          ),
                          Text(
                            "01-02-2020, 3:00pm",
                            style: CustomTextStyle.textStyleGrey14,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Amount",
                              style: CustomTextStyle.textStyleGrey14),
                          listTextPesoIconTransfer("1000"),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: 20,
          ),
        ],
      ),
    );
  }
}

class TransferBalance extends StatelessWidget {
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
            "Transfer Balance",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 16,
            ),
          ),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: customCardTransfertoRider(
                    "Transfer to Rider", "KPWallet", () {
                  pageRoute(context, TransferBalancetoKPWallet());
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: customCardGCASHpayment("GCash", "Gcash account ", () {
                  pageRoute(context, TransferBalancetoGCash());
                }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: customCardPaymMayaPayment("PayMaya", "PayMaya account ",
                    () {
                  pageRoute(context, TransferBalancetoPaymaya());
                }),
              ),
            ],
          ),
        ));
  }
}
