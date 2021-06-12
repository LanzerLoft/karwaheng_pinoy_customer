import 'dart:io';
import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_login.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'config/HttpOverride.dart';
import 'provider/seller_provider/seller_pahatid_provider.dart';
import 'provider/user_provider/customer_pabili_provider.dart';
import 'provider/user_provider/customer_pahatid_provider.dart';
import 'provider/user_provider/user_loginReg_provider.dart';
import 'package:flutter/services.dart';
import 'provider/user_provider/user_provider.dart';
import 'screen/pages/seller_page/Seller_Drawer/Seller_Dashboard/Seller_DashBoard.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/COD_Payment/userPabili_CODwithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/COD_Payment/userPabili_CODOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/COD_Payment/userPavbili_CODPaymentOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_GCash_withNotice/userPabili_GCASHOnlyWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_GCash_withNotice/userPabili_GCASHOtherPaymentWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_GCash_withNotice/userPabili_GcashStepsWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_Gcash_Below2k/userPabili_GCASHOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_Gcash_Below2k/userPabili_GCASHOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/User_Gcash_Below2k/userPabili_GcashSteps.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/userPabili_GCASHPaymentNew.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Gcash_payment/userPabili_GCASHpayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/KpWallet_Payment/userPabili_KPWalletOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/KpWallet_Payment/userPabili_KPWalletOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_Below2k/userPabili_PaymayaOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_Below2k/userPabili_PaymayaOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_Below2k/userPabili_PaymayaSteps.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_withNotice/userPabili_PaymayaOnlyWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_withNotice/userPabili_PaymayaOtherPaymentWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/User_Paymaya_withNotice/userPabili_PaymayaStepsWithNotice.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/Paymaya_payment/userPabili_PaymayaPaymentNew.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_Pabili_AddMerchant.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pabili/user_pabili_summary.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/COD_payment/userPahatid_CODOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/COD_payment/userPahatid_CODPaymentOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/COP_payment/userPahatid_COPOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/COP_payment/userPahatid_COPPaymentOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Gcash_payment/userPahatid_GCASHOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Gcash_payment/userPahatid_GCASHOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Gcash_payment/userPahatid_GcashSteps.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/KpWallet_Payment/userPahatid_KPWalletOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/KpWallet_Payment/userPahatid_KPWalletOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Paymaya_payment/userPahatid_PaymayaOnly.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Paymaya_payment/userPahatid_PaymayaOtherPayment.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/Paymaya_payment/userPahatid_PaymayaSteps.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/timelinetile.dart';
import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_Pahatid.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_repositionpage.dart';

void main() async {
  tz.initializeTimeZones();
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
          create: (context) => UserPabiliProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UserPahatidProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SellerPahatidProvider(),
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
                home: SellerMainDashboard(),
              );
            },
          );
        },
      ),
    );
  }
}
