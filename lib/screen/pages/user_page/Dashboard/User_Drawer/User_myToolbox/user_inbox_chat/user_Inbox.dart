import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/container_Size.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import 'user_Inbox_chat.dart';
import 'user_inbox_chatwithUs.dart';

class UserInbox extends StatefulWidget {
  @override
  _UserInboxState createState() => _UserInboxState();
}

class _UserInboxState extends State<UserInbox> {
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
          title: Text(
            "Inbox",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        backgroundColor: Pallete.kpWhite,
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add),
        //   onPressed: () {},
        //   backgroundColor: Pallete.kpBlue,
        // ),
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
                ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        pageRoute(context, ChatWithUs());
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: customCard(
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Pallete.kpBlue),
                                  color: Pallete.kpWhite,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(
                                        "assets/login_images/KP_profile.png"),
                                  ),
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    minWidth: 30.0.w, maxWidth: 65.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          constraints: BoxConstraints(
                                              maxHeight: 80, maxWidth: 120),
                                          child: Text(
                                            "Juan Dela Cruz",
                                            style: CustomTextStyle
                                                .textStyleBluebold16,
                                          ),
                                        ),
                                        Text(
                                          "11:00am",
                                          style:
                                              CustomTextStyle.textStyleGrey14,
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                          "Lorem Ipsum is simply dummy text of the printings",
                                          style:
                                              CustomTextStyle.textStyleGrey14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
