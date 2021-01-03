// import 'package:flutter/material.dart';
// import 'package:kp_mobile/provider/user_provider/user_provier.dart';
// import 'package:kp_mobile/screen/custom/custom_Button.dart';
// import 'package:kp_mobile/screen/custom/custom_Switch.dart';
// import 'package:kp_mobile/screen/custom/hexcolor.dart';
// import 'package:kp_mobile/screen/custom/textStyle.dart';
// import 'package:list_tile_switch/list_tile_switch.dart';
// import 'package:provider/provider.dart';
// import 'package:responsive_builder/responsive_builder.dart';
// import 'package:sizer/sizer.dart';

// class UserNotificationsResponsive extends StatefulWidget {
//   @override
//   _UserNotificationsResponsiveState createState() =>
//       _UserNotificationsResponsiveState();
// }

// class _UserNotificationsResponsiveState
//     extends State<UserNotificationsResponsive> {
//   Widget build(BuildContext context) {
//     return ResponsiveBuilder(
//       builder: (context, sizingInformation) {
//         if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
//           return OrientationLayoutBuilder(
//             portrait: (context) => Scaffold(
//               body: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       vertical: 10.0.h, horizontal: 10.0.h),
//                   child: UserNotifications(),
//                 ),
//               ),
//             ),
//             landscape: (context) => Scaffold(
//               body: SingleChildScrollView(
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       vertical: 15.0.h, horizontal: 20.0.h),
//                   child: UserNotifications(),
//                 ),
//               ),
//             ),
//           );
//         }

//         return OrientationLayoutBuilder(
//           portrait: (context) => UserNotifications(),
//           landscape: (context) => Scaffold(
//             body: Padding(
//               padding: EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
//               child: UserNotifications(),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class UserNotifications extends StatefulWidget {
//   @override
//   _UserNotificationsState createState() => _UserNotificationsState();
// }

// class _UserNotificationsState extends State<UserNotifications> {
//   bool isInstructionView = false;
//   bool isSwitch = true;
//   bool isSwitchs = true;
//   bool dynamicSwitch = true;
//   @override
//   Widget build(BuildContext context) {
//     final userProvider = Provider.of<UserProvider>(context);
//     // handleSwitch(bool value) {
//     //   setState(() {
//     //     isSwitch = value;
//     //     dynamicSwitch = value;
//     //   });
//     // }

//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         iconTheme: IconThemeData(
//           color: Pallete.kpWhite,
//         ),
//         backgroundColor: Pallete.kpBlue,
//         elevation: 0,
//         centerTitle: true,
//         title: Text(
//           "Notifications & Sounds",
//           style: CustomTextStyle.textStyleWhite18,
//         ),
//       ),
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Container(
//           padding: EdgeInsets.all(
//             getValueForScreenType<double>(
//               context: context,
//               mobile: 22,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               customSwitch(
//                 Text("Vibrate",style:),
//                 userProvider.customSwitchvibrate,
//                 (value) {
//                   userProvider.customSwitchVibrate();
//                 },
//               ),
//               customSwitch(
//                 Text("Sound"),
//                 userProvider.customSwitchsound,
//                 (value) {
//                   userProvider.customSwitchSound();
//                 },
//               ),
//               // ListTileSwitch(
//               //   switchScale: 0.9,
//               //   value: isSwitch,
//               //   onChanged: (val) {
//               //     setState(() {
//               //       isSwitch = !isSwitch;
//               //       dynamicSwitch = !dynamicSwitch;
//               //     });
//               //   },
//               //   visualDensity: VisualDensity.comfortable,
//               //   switchType: SwitchType.cupertino,
//               //   switchActiveColor: Pallete.kpBlue,
//               //   switchInactiveColor: Pallete.kpGrey,
//               //   title: Text('Sound'),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
