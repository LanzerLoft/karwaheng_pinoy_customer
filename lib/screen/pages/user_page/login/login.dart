// import 'package:flutter/material.dart';
// import 'package:form_validator/form_validator.dart';
// import 'package:kp_mobile/screen/custom/custom_Button.dart';
// import 'package:kp_mobile/screen/custom/custom_TextField.dart';
// import 'package:kp_mobile/screen/custom/hexcolor.dart';
// import 'package:kp_mobile/screen/custom/textStyle.dart';
// import 'package:kp_mobile/screen/pages/user_page/Dashboard/user_dashBoard.dart';
// import 'package:kp_mobile/screen/pages/user_page/register/register.dart';
// import 'package:sizer/sizer.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class UserLogin extends StatefulWidget {
//   @override
//   _UserLoginState createState() => _UserLoginState();
// }

// class _UserLoginState extends State<UserLogin> {
//   GlobalKey<FormState> _form = GlobalKey<FormState>();

//   void _validate() {
//     _form.currentState.validate();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final passwordValidation = ValidationBuilder().maxLength(6).build();
//     final userPhoneValidation = ValidationBuilder()
//         .or(
//           (builder) => builder.minLength(6),
//           (builder) => builder.phone('not phone').minLength(11),
//           reverse: true,
//         )
//         .build();

//     return Scaffold(
//       body: Form(
//         key: _form,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 2.5.h, horizontal: 2.5.h),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Image.asset(
//                       "assets/login_images/KP_LOGO.png",
//                       scale: 2.5,
//                     ),
//                     usernameField(
//                       (value) {},
//                       userPhoneValidation,
//                       // ignore: unrelated_type_equality_checks
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     passcodeField(
//                       (value) {},
//                       passwordValidation,
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     loginButton(
//                       _validate,
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Center(
//                       child: GestureDetector(
//                         onTap: () {},
//                         child: Text(
//                           "Forgot Passcode?",
//                           style: TextStyle(
//                             color: Pallete.kpBlue,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Register()));
//                   },
//                   child: Text.rich(
//                     TextSpan(
//                         text: 'Don\'t have an account? ',
//                         style: CustomTextStyle.textblue14,
//                         children: [
//                           TextSpan(
//                             text: ' Register Now',
//                             style: CustomTextStyle.register,
//                           ),
//                         ]),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
