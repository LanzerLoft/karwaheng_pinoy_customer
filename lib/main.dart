import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'provider/user_provider/user_loginReg_provider.dart';
import 'package:flutter/services.dart';

import 'screen/pages/user_page/register/sliverAppbar.dart';
import 'screen/pages/user_page/register/user_register.dart';

void main() {
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
