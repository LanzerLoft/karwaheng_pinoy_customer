import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_loginReg_provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import '../user_MyAccount.dart';

class UserChangeHometownRes extends StatefulWidget {
  final String hometown;

  UserChangeHometownRes({
    Key key,
    @required this.hometown,
  }) : super(key: key);

  @override
  _UserChangeHometownResState createState() => _UserChangeHometownResState();
}

class _UserChangeHometownResState extends State<UserChangeHometownRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangeHometown(
              hometown: widget.hometown,
            ),
            landscape: (context) => ChangeHometown(
              hometown: widget.hometown,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangeHometown(
            hometown: widget.hometown,
          ),
          landscape: (context) => ChangeHometown(
            hometown: widget.hometown,
          ),
        );
      },
    );
  }
}

class ChangeHometown extends StatefulWidget {
  final String hometown;

  ChangeHometown({
    Key key,
    @required this.hometown,
  }) : super(key: key);
  @override
  _ChangeHometownState createState() => _ChangeHometownState();
}

class _ChangeHometownState extends State<ChangeHometown> {
  String selected;

  @override
  Widget build(BuildContext context) {
    final userRegProvider = Provider.of<UserLoginRegProvider>(context);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Change hometown",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 22,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.kpGreyOkpGreypacity,
                  ),
                  child: DropdownButtonFormField<String>(
                    hint: Text(" Hometown",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        )),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Pallete.kpGreyOkpGreypacity, width: 1.0),
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    ),
                    value: selected,
                    items: userRegProvider.listhomeTown
                        .map((label) => DropdownMenuItem(
                              child: Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Pallete.kpBlue,
                                    )),
                              ),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      userRegProvider.regBookOften(value);
                      setState(() => selected = value);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: customButton(
                    () {
                      pageRoute(context, UserMyAccount());
                    },
                    "Save",
                    5,
                    double.infinity,
                    Pallete.kpBlue,
                    Pallete.kpBlue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
