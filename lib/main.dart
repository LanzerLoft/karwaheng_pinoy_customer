import 'dart:io';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'config/HttpOverride.dart';
import 'provider/user_provider/user_loginReg_provider.dart';
import 'package:flutter/services.dart';
import 'provider/user_provider/user_provider.dart';
import 'screen/pages/seller_page/Seller_Drawer/Seller_Dashboard/Seller_DashBoard.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/userPabili_GCASHPaymentNew.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/userPabili_GCASHpayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/user_PabiliGcashPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/userPabili_PaymayaPaymentNew.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili_AddMerchant.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/timelinetile.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new HttpOverride();
  Directory appDocDir = await getApplicationDocumentsDirectory();
  await GlobalConfiguration().loadFromAsset("settings");
  await Hive.initFlutter(appDocDir.path);
  await Hive.openBox('profileBox');
  await Hive.openBox('authBox');
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
                home: UserPabiliGCASHPaymentNew(),
              );
            },
          );
        },
      ),
    );
  }
}
