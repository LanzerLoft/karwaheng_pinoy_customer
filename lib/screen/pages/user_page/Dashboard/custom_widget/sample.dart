// import 'package:flutter/material.dart';
// import 'package:kp_mobile/provider/user_provider/user_provier.dart';
// import 'package:kp_mobile/screen/custom/hexcolor.dart';
// import 'package:kp_mobile/screen/custom/textStyle.dart';
// import 'package:provider/provider.dart';
// import 'package:kp_mobile/screen/custom/custom_TextField.dart';

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool _showpassword = false;

//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final userProvider = Provider.of<UserProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Sample"),
//       ),
//       body: Container(
//         child: Column(
//           children: <Widget>[
//             TextField(
//               decoration: InputDecoration(
//                 suffixIcon: GestureDetector(
//                   onTap: () {
//                     userProvider.passcodeIcon();
//                   },
//                   child: Icon(userProvider.showpassword
//                       ? Icons.visibility
//                       : Icons.visibility_off),
//                 ),
//                 labelText: 'Password',
//               ),
//               obscureText: !_showpassword,
//             ),
//             passcodeFieldicon(context),
//             Container(
//               width: 200,
//               child: RaisedButton(
//                 onPressed: () {
//                   userProvider.passcodeIcon();
//                 },
//                 child: Icon(
//                     _showpassword ? Icons.visibility : Icons.visibility_off),
//               ),
//             ),
//             Container(
//               width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 color: Pallete.kpGreyOkpGreypacity,
//               ),
//               child: TextFormField(
//                 toolbarOptions: ToolbarOptions(),
//                 style: CustomTextStyle.textfield,
//                 onChanged: (value) {},
//                 decoration: InputDecoration(
//                   hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
//                   hintText: 'Passcode',
//                   contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide:
//                         BorderSide(color: Colors.transparent, width: 1.0),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
//                   ),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       userProvider.passcodeIcon();
//                     },
//                     child: Icon(userProvider.showpassword
//                         ? Icons.visibility
//                         : Icons.visibility_off),
//                   ),
//                 ),
//                 obscureText: userProvider.showpassword,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
