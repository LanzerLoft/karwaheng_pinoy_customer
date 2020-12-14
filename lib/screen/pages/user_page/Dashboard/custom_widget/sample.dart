import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:kp_mobile/screen/pages/user_page/login/login.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   GlobalKey<FormState> _form = GlobalKey<FormState>();

// //   void _validate() {
// //     _form.currentState.validate();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final passwordValidation = ValidationBuilder().maxLength(6).build();
// //     final userPhoneValidation = ValidationBuilder()
// //         .or(
// //           (builder) => builder.minLength(6),
// //           (builder) => builder.phone('not phone').minLength(11),
// //           reverse: true,
// //         )
// //         .build();
// //     return ResponsiveBuilder(
// //       builder: (context, sizingInformation) {
// //         if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
// //           return OrientationLayoutBuilder(
// //             portrait: (context) => Scaffold(
// //               body: SingleChildScrollView(
// //                 child: Padding(
// //                   padding: EdgeInsets.symmetric(
// //                       vertical: 15.0.h, horizontal: 15.0.h),
// //                   child: TabletLogin(),
// //                 ),
// //               ),
// //             ),
// //             landscape: (context) => Scaffold(
// //               body: SingleChildScrollView(
// //                 child: Container(
// //                   padding: EdgeInsets.symmetric(
// //                       vertical: 20.0.h, horizontal: 30.0.h),
// //                   child: TabletLogin(),
// //                 ),
// //               ),
// //             ),
// //           );
// //         }

// //         return UserLogin();
// //       },
// //     );
// //   }
// // }

// // class TabletLogin extends StatefulWidget {
// //   @override
// //   _TabletLoginState createState() => _TabletLoginState();
// // }

// // class _TabletLoginState extends State<TabletLogin> {
// //   GlobalKey<FormState> _form = GlobalKey<FormState>();

// //   void _validate() {
// //     _form.currentState.validate();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final passwordValidation = ValidationBuilder().maxLength(6).build();
// //     final userPhoneValidation = ValidationBuilder()
// //         .or(
// //           (builder) => builder.minLength(6),
// //           (builder) => builder.phone('not phone').minLength(11),
// //           reverse: true,
// //         )
// //         .build();
// //     return Form(
// //       key: _form,
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.spaceAround,
// //         children: [
// //           Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Image.asset(
// //                 "assets/login_images/KP_LOGO.png",
// //                 scale: 2.5,
// //               ),
// //               usernameField(
// //                 (value) {},
// //                 userPhoneValidation,
// //                 // ignore: unrelated_type_equality_checks
// //               ),
// //               SizedBox(
// //                 height: 15,
// //               ),
// //               passcodeField(
// //                 (value) {},
// //                 passwordValidation,
// //               ),
// //               SizedBox(
// //                 height: 15,
// //               ),
// //               loginButton(
// //                 _validate,
// //               ),
// //               SizedBox(
// //                 height: 20,
// //               ),
// //               Center(
// //                 child: GestureDetector(
// //                   onTap: () {},
// //                   child: Text(
// //                     "Forgot Passcode?",
// //                     style: TextStyle(
// //                       color: Pallete.kpBlue,
// //                       fontSize: 14,
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           SizedBox(
// //             height: 50,
// //           ),
// //           GestureDetector(
// //             onTap: () {
// //               Navigator.push(
// //                   context, MaterialPageRoute(builder: (context) => Register()));
// //             },
// //             child: Text.rich(
// //               TextSpan(
// //                   text: 'Don\'t have an account? ',
// //                   style: CustomTextStyle.textblue14,
// //                   children: [
// //                     TextSpan(
// //                       text: ' Register Now',
// //                       style: CustomTextStyle.register,
// //                     ),
// //                   ]),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

class MyHomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<MyHomePages> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Checkbox Example'),
        ),
        body: Container(
            padding: new EdgeInsets.all(22.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Checkbox with Header and Subtitle',
                  style: TextStyle(fontSize: 20.0),
                ),
                CheckboxListTile(
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 4:30 AM every day'),
                  subtitle: Text('Ringing after 12 hours'),
                  value: this.valuefirst,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuefirst = value;
                    });
                  },
                ),
                CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  secondary: const Icon(Icons.alarm),
                  title: const Text('Ringing at 5:00 AM every day'),
                  subtitle: Text('Ringing after 12 hours'),
                  value: this.valuesecond,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuesecond = value;
                    });
                  },
                ),
              ],
            )),
      ),
    );
  }
}
