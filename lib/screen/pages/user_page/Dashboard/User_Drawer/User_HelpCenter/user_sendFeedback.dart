import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

class UserSendFeedback extends StatefulWidget {
  @override
  _UserSendFeedbackState createState() => _UserSendFeedbackState();
}

class _UserSendFeedbackState extends State<UserSendFeedback> {
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
                mobile: 16,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text("Give feedback",
                      style: TextStyle(
                          fontSize: 40,
                          color: Pallete.kpBlue,
                          fontWeight: FontWeight.bold)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          child: DropdownButtonFormField<String>(
                            isExpanded: true,
                            hint: Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Text("Select a category:",
                                  style: TextStyle(
                                      fontSize: 16, color: Pallete.kpGrey)),
                            ),
                            value: selected,
                            items: userProvider.listCategory
                                .map((label) => DropdownMenuItem(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 6),
                                        child: Text(label,
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Pallete.kpGrey)),
                                      ),
                                      value: label,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() => selected = value);
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Let us know what can we do to improve.",
                      style: CustomTextStyle.textStyleGrey16),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: customTextFieldFeedbackEnterID((value) {},
                      "eg.KP12345", "Enter Booking/Order ID", () {}),
                ),
                customTextFieldFeedback((value) {}),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: customCard(
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "karwahengpinoy.jpg",
                              style: CustomTextStyle.textStyleGrey16,
                            ),
                            GestureDetector(
                              onTap: () {
                                userProvider.getImgFromGallery();
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add_a_photo,
                                    color: Pallete.kpGrey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Add Image",
                                      style: CustomTextStyle.textStyleGrey14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Can we add files? Up to 2 MB max.",
                          style: CustomTextStyle.textStyleGrey16,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: customButton2(
                    () {
                      userProvider.getImgFromGallery();
                    },
                    "SEND FEEDBACK",
                    5,
                    double.infinity,
                    50,
                    Pallete.kpYellow,
                    Pallete.kpYellow,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    "Thank you for your feedback. If response is needed, we will get back to you in 72 hours.",
                    style: CustomTextStyle.textStyleGrey14,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
