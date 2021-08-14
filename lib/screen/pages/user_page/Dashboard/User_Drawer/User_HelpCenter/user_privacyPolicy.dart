import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class UserPrivacyPolicy extends StatefulWidget {
  @override
  _UserPrivacyPolicy createState() => _UserPrivacyPolicy();
}

class _UserPrivacyPolicy extends State<UserPrivacyPolicy> {
  _launchURL() async {
    const url = 'http://karwahengpinoy.ph/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

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
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text("Privacy Policy",
                      style: CustomTextStyle.helpCenterTitle),
                ),
                customCard(
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Privacy Statement",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "  Karwaheng Pinoy Delivery Services ",
                          style: TextStyle(
                              color: Pallete.kpBlack,
                              height: 2,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text:
                                  "may collect and process personal information to help you place and receive delivery and purchase orders and to improve our Services. This Privacy Statement outlines how Karwaheng Pinoy Delivery Services (“Karwaheng Pinoy”, “Karwahe” “KP”, “we,” “us,” or “our”) handles your personal information when you visit or use",
                            ),
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("SSSSSsss");
                                  _launchURL();
                                },
                              style: TextStyle(
                                color: Pallete.kpBlue,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline,
                              ),
                              text: " www.KarwahengPinoy.ph ",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text: " (our “Site”) and the ",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.bold),
                              text: "Karwaheng Pinoy",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text:
                                  " applications (collectively, our “Services”), and through other channels when you interact with us.",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text:
                                  "\n\n By using our Services, you consent to the use and sharing of your personal information as described below. If you do not agree, please do not use our Services. Your access to and use of our Services are subject to our ",
                            ),
                            TextSpan(
                              style: TextStyle(
                                color: Pallete.kpBlue,
                                height: 2,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.underline,
                              ),
                              text: "Terms of Use",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text:
                                  " and are guided by the Philippine Data Privacy Act of 2012 (R.A. 10173).",
                            ),
                            TextSpan(
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                              text:
                                  "\n\n We may modify, update or amend the terms of this policy when necessary by publishing any material changes. Please review this Privacy Statement periodically by visiting this webpage. Your continued communication with us and use of our Services constitute your acceptance to the updated policy.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "What Information We Collect?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 12),
                            child: Text("We collect two kinds of information:",
                                style: CustomTextStyle.textStyleBlackbold14),
                          ),

                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text(
                                "1.Personal Identifiable Information (PII)",
                                style: CustomTextStyle.textStyleBlue18,
                              ),
                              childrenPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              expandedCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "If you are a Customer/User, we may collect any and all of the following:",
                                    style: CustomTextStyle.textStyleBlackbold14,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: CustomTextStyle.textStyleBlack14,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "\n• Full Name",
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text: "\n• Username",
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text: "\n• Gender",
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text: "\n• Date of birth",
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        text:
                                            "\n• Company or business name (for Seller Account, optional)",
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Type of products being sold (for Seller Account, optional)",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Mobile or landline number",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Delivery/postal address or location",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• E-mail address",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• GCash / PayMaya account number",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Credit card or debit card number",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Customer rating",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Other information you voluntarily provide when placing a delivery order or using our App.",
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 30, bottom: 10),
                                  child: Text(
                                    "If you are a Partner Rider, we may collect any and all of the following:",
                                    style: CustomTextStyle.textStyleBlackbold14,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: CustomTextStyle.textStyleBlack14,
                                    children: <TextSpan>[
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Full Name",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Gender",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Date of birth",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Delivery/postal address or location",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• E-mail address",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• GCash / PayMaya account number",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Credit card or debit card number",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Government issued ID details",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Profile picture",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• NBI or Police Clearance",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Barangay Certificate",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Medical certificate",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Employment history",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text: "\n• Rider rating",
                                      ),
                                      TextSpan(
                                        style: TextStyle(
                                            color: Pallete.kpBlack,
                                            height: 2,
                                            fontWeight: FontWeight.normal),
                                        text:
                                            "\n• Other information you voluntarily provide while you are still accredited with us.",
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //
                          //
                          //NUMBER 2

                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text(
                                "2.Non-Personal Identifiable Information (Non-PII)",
                                style: CustomTextStyle.textStyleBlue18,
                              ),
                              childrenPadding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              expandedCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  child: Text(
                                    "       Non-personal identification information may include the type of browser used to access our site or our App, the type of computer or device, your IP address, the date and time you visited, and your geolocation. As a Customer/user and Partner Rider, you accept that we, or any third party authorized by us, may use “Cookies” to store information for a personalized and a more efficient experience in using our website and/or our KP Apps.",
                                    style: TextStyle(
                                        color: Pallete.kpBlack,
                                        height: 2,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "What Do We Do with the Information We Collect?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: Theme.of(context)
                                .copyWith(dividerColor: Colors.transparent),
                            child: ExpansionTile(
                              title: Text(
                                "The use of your Personal Identifiable Information (PII):",
                                style: CustomTextStyle.textStyleBlue18,
                              ),
                              childrenPadding:
                                  EdgeInsets.fromLTRB(16, 0, 16, 16),
                              expandedCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 0),
                                  child: RichText(
                                    text: TextSpan(
                                      style: CustomTextStyle.textStyleBlack14,
                                      children: <TextSpan>[
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• To fulfill your delivery and purchase orders through our Partner Riders",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• Connect your delivery and purchase orders with our Partner Rider",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• To contact you when needed in fulfilling your delivery and purchase orders",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• To assist with passcode reset, respond to your questions and concerns",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• Know our customers and partner riders to improve the contents and features of our Services based on your individual needs",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• To send you notifications, updates, greetings and tailored promotions or other communications that may be of interest to you",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• o prevent fraud and misuse of our Services; manage our reporting obligations to the Department of Information and Communications Technology (DICT), or to comply with the Philippine Law",
                                        ),
                                        TextSpan(
                                            style: TextStyle(
                                                color: Pallete.kpBlack,
                                                height: 2,
                                                fontWeight: FontWeight.normal),
                                            text:
                                                "\n• Manage our everyday business needs, such as auditing, administration of our Services, forum management, fulfillment, analytics, fraud prevention, and enforcement of our corporate reporting obligations and Terms of Use, or to comply with the law"),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• To our Partner Riders: we collect those information for you to fulfill delivery and purchase orders successfully; ensure you are fit to work and will take great care in handling food, goods and items of our Customers.",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Theme(
                              data: Theme.of(context)
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                title: Text(
                                  "The use of your Non-Personal Identifiable Information (Non-PII):",
                                  style: CustomTextStyle.textStyleBlue18,
                                ),
                                childrenPadding:
                                    EdgeInsets.fromLTRB(16, 0, 16, 16),
                                expandedCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• Personalize the contents and features you see when you visit and use our Services",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• Used in aggregate for analytics to better serve you",
                                        ),
                                        TextSpan(
                                          style: TextStyle(
                                              color: Pallete.kpBlack,
                                              height: 2,
                                              fontWeight: FontWeight.normal),
                                          text:
                                              "\n• Any information you transmit to us through any channel which may include data, questions, comments, suggestions or the like, but not including your personal information and any requests regarding your personal information, will be treated as non-confidential and non-proprietary.",
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "How Do We Safeguard your Data?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "     Karwaheng Pinoy implements industry-standard, physical and technological security controls designed to safeguard personal information. The information collected, transferred, stored and processed will be in accordance with Philippine privacy laws and standards and are only accessible to duly authorized personnel. While personal data may still be stored in our secure servers within 24 hours after the delivery/purchase order, we will anonymize your exact address and contact information from the mobile app of our partner rider, for your privacy. We will not knowingly sell, exchange, transfer or give to any other company or unauthorized third party the data you provide to us for any reason whatsoever without your express consent. However, no online activity is ever 100% secure or error-free. While we strive to protect your information, we cannot guarantee absolute security. Please keep this in mind when disclosing any information to Karwaheng Pinoy.",
                              style: TextStyle(
                                  color: Pallete.kpBlack,
                                  height: 2,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "When Can We Share Your Information to a Third Party?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: CustomTextStyle.textStyleBlack14,
                              children: <TextSpan>[
                                TextSpan(
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      height: 2,
                                      fontWeight: FontWeight.normal),
                                  text:
                                      "\n• With authorized third parties such as vendors, consultants, marketing partners, and other service providers that may provide services or conduct data processing on our behalf all of which will have Privacy clauses to safeguard your data",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      height: 2,
                                      fontWeight: FontWeight.normal),
                                  text:
                                      "\n• With law enforcement officials and government authorities if we believe disclosure is in accordance with, or is otherwise required by, any applicable law, legal or statutory process in order to protect the rights, property, or safety of Karwaheng Pinoy or others",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      height: 2,
                                      fontWeight: FontWeight.normal),
                                  text:
                                      "\n• In connection with any merger, sale, consolidation or restructuring, financing, or acquisition of all or a portion of our business by or into another company",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Pallete.kpBlack,
                                      height: 2,
                                      fontWeight: FontWeight.normal),
                                  text:
                                      "\n• If we otherwise notify you and you consent to the sharing.",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "How Long Do We Retain Your Data?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "     Karwaheng Pinoy will retain and use your personal data for long as your account is active, or the same remains necessary to comply with our legal obligations, safety and fraud prevention, resolve disputes, and enforce our agreements. Non-PII, aggregate or anonymized data may be retained indefinitely.",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                height: 2,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "How Can I Update, Correct or Delete My Personal Data?",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "     Keeping your personal information current helps ensure seamless delivery of our Services and provide you with most relevant offers. You may update, correct or delete information at any time by logging in and going to My Account. If you wish to delete or deactivate your account, you can do so by deleting the App from your device and emailing us at Privacy@KarwahengPinoy.ph. Attn: Deactivate Account. Please note that we may retain cached or archived copies of information for a period of two (2) years for financial reporting or compliance purposes before they are permanently deleted.",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                height: 2,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCardPrivacy(
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        title: Text(
                          "Personal Information from Minors",
                          style: CustomTextStyle.textStyleBlue18,
                        ),
                        childrenPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
                        expandedCrossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "     Our Services are not intended for individuals under 18 years of age. If you are a parent or a legal guardian of under the age of 18 and believe he or she has disclosed personally identifiable information to us please contact us at  Privacy@KarwahengPinoy.ph. We will respond with an acknowledgement of your request. Absence of written acknowledgement requesting for the deletion of a minor’s information shall mean you consent to the use of the minor’s data and are bounded by this Privacy Policy.",
                            style: TextStyle(
                                color: Pallete.kpBlack,
                                height: 2,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: customCard(
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Contact Us",
                            style: CustomTextStyle.textStyleBlue18,
                          ),
                        ),
                        Text(
                          " If you have any questions or concerns relating to this Privacy Statement or our privacy practices please contact us at:",
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Text(
                            "Privacy@KarwahengPinoy.ph",
                            style: CustomTextStyle.textStyleBlue18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            "Karwaheng Pinoy Delivery Services",
                            style: CustomTextStyle.textStyleBlackbold16,
                          ),
                        ),
                        Text(
                          "Attention: Privacy",
                          style: CustomTextStyle.textStyleBlack16,
                        ),
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
