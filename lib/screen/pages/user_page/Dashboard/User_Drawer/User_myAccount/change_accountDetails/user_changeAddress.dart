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

import '../user_MyAccount.dart';

class UserChangeHomeAddressRes extends StatefulWidget {
  final String street;
  final String barangay;
  final String city;
  final String zipcode;

  UserChangeHomeAddressRes({
    Key key,
    @required this.street,
    @required this.barangay,
    @required this.city,
    @required this.zipcode,
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
              street: widget.street,
              barangay: widget.barangay,
              city: widget.city,
              zipcode: widget.zipcode,
            ),
            landscape: (context) => ChangeHomeAddress(
              street: widget.street,
              barangay: widget.barangay,
              city: widget.city,
              zipcode: widget.zipcode,
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => ChangeHomeAddress(
            street: widget.street,
            barangay: widget.barangay,
            city: widget.city,
            zipcode: widget.zipcode,
          ),
          landscape: (context) => ChangeHomeAddress(
            street: widget.street,
            barangay: widget.barangay,
            city: widget.city,
            zipcode: widget.zipcode,
          ),
        );
      },
    );
  }
}

class ChangeHomeAddress extends StatefulWidget {
  final String street;
  final String barangay;
  final String city;
  final String zipcode;

  ChangeHomeAddress({
    Key key,
    @required this.street,
    @required this.barangay,
    @required this.city,
    @required this.zipcode,
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
                    TextEditingController(text: widget.street),
                    "Street",
                    "Street",
                    () {}),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.barangay),
                    "Barangay",
                    "Barangay",
                    () {}),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.city),
                    "City",
                    "City",
                    () {}),
                textFieldChangeDetails(
                    (value) {},
                    TextEditingController(text: widget.zipcode),
                    "Zip code",
                    "Zip code",
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
