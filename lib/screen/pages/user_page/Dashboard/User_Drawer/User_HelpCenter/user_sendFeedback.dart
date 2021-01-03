import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
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
    final userRegProvider = Provider.of<UserLoginRegProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          // title: Text(
          //   "Send Feedback",
          //   style: CustomTextStyle.textStyleBlue18,
          // ),
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
                        items: userRegProvider.listCategory
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text("Let us know what can we do to improve",
                      style: CustomTextStyle.textStyleGrey16),
                ),
                TextFormField(
                  minLines: 10,
                  maxLines: 15,
                  style: TextStyle(color: Pallete.kpBlue, fontSize: 20),
                  onChanged: (value) {},
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintStyle: CustomTextStyle.textPickUpHint,
                    labelStyle: CustomTextStyle.textPickUpLabel,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customButton2(
                    () {},
                    "SEND FEEDBACK",
                    5,
                    double.infinity,
                    50,
                    Pallete.kpRed,
                    Pallete.kpRed,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    "Thank you for your feedback. If response is needed, we will get back to you in 72 hours",
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
