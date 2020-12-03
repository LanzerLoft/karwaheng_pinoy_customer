import 'package:flutter/material.dart';

import 'screen/pages/user_page/Dashboard/user_dashboard.dart';
import 'screen/pages/user_page/login/user_login.dart';

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
      home: UserDashboard(),
    );
  }
}
