import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserProhibitedItems extends StatefulWidget {
  @override
  _UserProhibitedItemsState createState() => _UserProhibitedItemsState();
}

class _UserProhibitedItemsState extends State<UserProhibitedItems> {
  String selected;
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
        ),
        backgroundColor: Pallete.kpWhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: CustomConSize.mobile,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("What We Deliver",
                      style: TextStyle(
                          fontSize: 40,
                          color: Pallete.kpBlue,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  child: Text(
                      "In general, we deliver almost everything except for the following prohibited/banned items:'",
                      style: CustomTextStyle.textStyleBlue18),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customCard(
                    Table(
                      border: TableBorder.all(
                        color: Pallete.kpGreyOkpGreypacity3,
                      ),
                      children: [
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/1_insulatedbox.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Parcel that exceeds 25 kg, or greater than 70 cm (length) x 50 cm (width) x 50 (height)",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/2_Drugs.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Prohibited and Regulated Articles by the Philippine Law.",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/3_Radioactive.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Poisonous, Infectious, Radioactive Materials",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/4_Firearms.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Firearms, Explosives, Ammunitions, and War Materials",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/5_AnimalHumanRemains.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Human or Animal remains",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/6_LivingThings.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Living things",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/7_CreditAtmCard.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Credit Cards or ATM cards",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/8_CashChecks.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Cash, Checks, Stocks, or Marketable Securities",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/9_Flammable.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                " 	Flammable, Ignitable, or Volatile items",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/10_PassportContract.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                " 	Certificates, Original drafts, Contracts, Drafts, Passport etc. or anything that cannot be reproduced",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/11_ArchaeologicalArtifacts.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Archaeological or Religious artifacts",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            margin: EdgeInsets.all(30),
                            child: Image.asset(
                              "assets/prohibited_items/12_Jerlweries.png",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Container(
                              height: 120,
                              child: Center(
                                  child: Text(
                                "Jewelries and High value items (e.g. Gold/precious stones)",
                                textAlign: TextAlign.center,
                              )),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }
}
