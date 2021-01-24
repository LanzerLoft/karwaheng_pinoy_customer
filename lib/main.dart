import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'config/HttpOverride.dart';
import 'provider/user_provider/user_loginReg_provider.dart';
import 'package:flutter/services.dart';
import 'provider/user_provider/user_provider.dart';

void main() {
  HttpOverrides.global = new HttpOverride();
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserCalculate(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserLoginRegProvider(),
        )
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizerUtil().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(fontFamily: 'HelveticaNeue'),
                home: UserLoginResponsive(),
              );
            },
          );
        },
      ),
    );
  }
}
