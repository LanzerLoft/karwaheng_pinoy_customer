import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_Calculate_Provider.dart';
import 'package:kp_mobile/provider/user_provider/user_provier.dart';
import 'package:kp_mobile/screen/pages/user_page/Pahatid/user_Pahatid.dart';
import 'package:kp_mobile/screen/pages/user_page/login/Passcode_reset/Email_otp/user_EmailOTP.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_changePass.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myAccount/user_notifications.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/user_Celebrate.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myDashboard/celebrate_Today.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_Refer.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_calculateVolumetric.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_manageParterRiders.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myToolbox/user_trackMydelivery.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_Topup.dart';
import 'screen/pages/user_page/Dashboard/User_Drawer/User_myWallet/user_kpWallet.dart';
import 'screen/pages/user_page/Dashboard/custom_widget/sample.dart';
import 'screen/pages/user_page/Pahatid/Gcash_payment/user_gcashConfirmation.dart';
import 'screen/pages/user_page/Pahatid/Gcash_payment/user_gcashPayment.dart';
import 'screen/pages/user_page/Pahatid/KpWallet_Payment/pahatid_kpWallet.dart';
import 'screen/pages/user_page/Pahatid/textField_add.dart';
import 'screen/pages/user_page/Dashboard/user_dashBoard.dart';
import 'screen/pages/user_page/Pahatid/user_Pahatid.dart';
import 'screen/pages/user_page/Pahatid/user_pickUpInfo.dart';
import 'screen/pages/user_page/login/Passcode_reset/Phone_otp/user_phoneOTP.dart';
import 'screen/pages/user_page/login/Passcode_reset/user_passcodeReset.dart';
import 'screen/pages/user_page/register/user_accountInformation.dart';
import 'screen/pages/user_page/register/user_register.dart';

void main() {
  runApp(MyApp());
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
        )
      ],
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              SizerUtil().init(constraints, orientation);
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                home: UserLoginResponsive(),
              );
            },
          );
        },
      ),
    );
  }
}
