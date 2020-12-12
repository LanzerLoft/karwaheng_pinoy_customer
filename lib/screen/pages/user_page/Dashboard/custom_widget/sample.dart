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

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
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
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
//           return OrientationLayoutBuilder(
//             portrait: (context) => Scaffold(
//               body: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       vertical: 15.0.h, horizontal: 15.0.h),
//                   child: TabletLogin(),
//                 ),
//               ),
//             ),
//             landscape: (context) => Scaffold(
//               body: SingleChildScrollView(
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                       vertical: 20.0.h, horizontal: 30.0.h),
//                   child: TabletLogin(),
//                 ),
//               ),
//             ),
//           );
//         }

//         return UserLogin();
//       },
//     );
//   }
// }

// class TabletLogin extends StatefulWidget {
//   @override
//   _TabletLoginState createState() => _TabletLoginState();
// }

// class _TabletLoginState extends State<TabletLogin> {
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
//     return Form(
//       key: _form,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.asset(
//                 "assets/login_images/KP_LOGO.png",
//                 scale: 2.5,
//               ),
//               usernameField(
//                 (value) {},
//                 userPhoneValidation,
//                 // ignore: unrelated_type_equality_checks
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               passcodeField(
//                 (value) {},
//                 passwordValidation,
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               loginButton(
//                 _validate,
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Center(
//                 child: GestureDetector(
//                   onTap: () {},
//                   child: Text(
//                     "Forgot Passcode?",
//                     style: TextStyle(
//                       color: Pallete.kpBlue,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => Register()));
//             },
//             child: Text.rich(
//               TextSpan(
//                   text: 'Don\'t have an account? ',
//                   style: CustomTextStyle.textblue14,
//                   children: [
//                     TextSpan(
//                       text: ' Register Now',
//                       style: CustomTextStyle.register,
//                     ),
//                   ]),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class Samplepo extends StatefulWidget {
  @override
  _SamplepoState createState() => _SamplepoState();
}

class _SamplepoState extends State<Samplepo> {
  void _add() {
    _children = List.from(_children)
      ..add(
        TimelineTile(
          alignment: TimelineAlign.start,
          afterLineStyle: LineStyle(color: Pallete.kpBlue),
          beforeLineStyle: LineStyle(color: Pallete.kpBlue),
          lineXY: 0.06,
          indicatorStyle: IndicatorStyle(
            width: 30,
            color: Pallete.kpBlue,
          ),
          endChild: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: customTextFieldiCon(
                (value) {},
                "Set Pick-up Location",
                "Set Pick-up Location",
                IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: () {
                      debugPrint('222');
                    }),
              ),
            ),
          ),
        ),
      );
    setState(() => ++_count);
  }

  @override
  void initState() {
    super.initState();
    _add();
  }

  int _count = 1;
  List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
              TimelineTile(
                alignment: TimelineAlign.start,
                afterLineStyle: LineStyle(color: Pallete.kpBlue),
                lineXY: 0.06,
                isFirst: true,
                indicatorStyle: IndicatorStyle(
                  width: 30,
                  color: Pallete.kpBlue,
                ),
                endChild: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20, left: 10),
                    child: customTextFieldiCon(
                      (value) {},
                      "Set Pick-up Locations",
                      "Set Pick-up Locationssss",
                      IconButton(
                          icon: Icon(Icons.add_circle),
                          onPressed: () {
                            _add();
                          }),
                    ),
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Widget widget = _children.elementAt(index);
                  return widget;
                },
                itemCount: _children.length,
              ),
              TimelineTile(
                alignment: TimelineAlign.start,
                afterLineStyle: LineStyle(color: Pallete.kpBlue),
                lineXY: 0.06,
                isLast: true,
                indicatorStyle: IndicatorStyle(
                  width: 30,
                  color: Colors.white,
                  iconStyle: IconStyle(
                    fontSize: 35,
                    color: Pallete.kpRed,
                    iconData: Icons.location_on,
                  ),
                ),
                endChild: IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: () {
                      debugPrint('222');
                    }),
              ),
              customTextFieldiCon(
                (value) {},
                "Set Pick-up Locations",
                "Set Pick-up Locationssss",
                IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: () {
                      debugPrint('222');
                    }),
              ),
              // Container(
              //   height: 50,
              //   child: FlatButton(
              //     onPressed: () {
              //       _add();
              //     },
              //     child: Icon(
              //       Icons.add,
              //       color: Colors.black,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
