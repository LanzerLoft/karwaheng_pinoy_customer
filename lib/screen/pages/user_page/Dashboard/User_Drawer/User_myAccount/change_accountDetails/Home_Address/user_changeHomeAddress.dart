import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

import '../../user_MyAccount.dart';
import 'user_changeMapHomeAddress.dart';

class UserChangeHomeAddressRes extends StatefulWidget {
  final String address;
  final String landmark;
  final String contactPerson;
  final String phoneNumber;

  UserChangeHomeAddressRes({
    Key key,
    @required this.address,
    @required this.landmark,
    @required this.contactPerson,
    @required this.phoneNumber,
  }) : super(key: key);

  @override
  _UserChangeHomeAddressResState createState() =>
      _UserChangeHomeAddressResState();
}

class _UserChangeHomeAddressResState extends State<UserChangeHomeAddressRes> {
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => ChangeHomeAddress(
              address: widget.address,
              landmark: widget.landmark,
              contactPerson: widget.contactPerson,
              phoneNumber: widget.phoneNumber,
            ),
            landscape: (context) => ChangeHomeAddress(
              address: widget.address,
              landmark: widget.landmark,
              contactPerson: widget.contactPerson,
              phoneNumber: widget.phoneNumber,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangeHomeAddress(
            address: widget.address,
            landmark: widget.landmark,
            contactPerson: widget.contactPerson,
            phoneNumber: widget.phoneNumber,
          ),
          landscape: (context) => ChangeHomeAddress(
            address: widget.address,
            landmark: widget.landmark,
            contactPerson: widget.contactPerson,
            phoneNumber: widget.phoneNumber,
          ),
        );
      },
    );
  }
}

class ChangeHomeAddress extends StatefulWidget {
  final String address;
  final String landmark;
  final String contactPerson;
  final String phoneNumber;

  ChangeHomeAddress({
    Key key,
    @required this.address,
    @required this.landmark,
    @required this.contactPerson,
    @required this.phoneNumber,
  }) : super(key: key);
  @override
  _ChangeHomeAddressState createState() => _ChangeHomeAddressState();
}

class _ChangeHomeAddressState extends State<ChangeHomeAddress> {
  @override
  Widget build(BuildContext context) {
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
            "Change Home Address",
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text("Set New Home Address",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.kpGrey,
                          fontWeight: FontWeight.bold)),
                ),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.address),
                    "Address",
                    "Address", () {
                  pageRoute(context, MapSample());
                }),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.landmark),
                    "Landmark",
                    "Landmark",
                    () {}),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.contactPerson),
                    "Contact Person",
                    "Contact Person",
                    () {}),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.phoneNumber),
                    "Cellphone Number",
                    "Cellphone Number",
                    () {}),
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
