import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_login.dart';

import 'screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Celebrate.dart';
import 'screen/pages/user_page/Dashboard/custom_widget/sample.dart';
import 'screen/pages/user_page/Dashboard/user_dashBoard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: UserCelebrate(),
    );
  }
}
