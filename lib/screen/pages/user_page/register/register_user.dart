import "package:flutter/material.dart";
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:sizer/sizer.dart';

import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:responsive_builder/responsive_builder.dart';

class UserRegisterResponsive extends StatefulWidget {
  @override
  _UserRegisterResponsiveState createState() => _UserRegisterResponsiveState();
}

class _UserRegisterResponsiveState extends State<UserRegisterResponsive> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Pallete.kpBlue,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 10.0.h, horizontal: 10.0.h),
                  child: UserRegistration(),
                ),
              ),
            ),
            landscape: (context) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                iconTheme: IconThemeData(
                  color: Pallete.kpBlue,
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 20.0.h),
                  child: UserRegistration(),
                ),
              ),
            ),
          );
        }

        return OrientationLayoutBuilder(
          portrait: (context) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Pallete.kpBlue,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: UserRegistration(),
            ),
          ),
          landscape: (context) => Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Pallete.kpBlue,
              ),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 0.0.h, horizontal: 5.0.h),
                child: UserRegistration(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class UserRegistration extends StatefulWidget {
  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  void initState() {
    super.initState();
    _continue();
  }

  int _currentStep = 0;
  void _continue() {
    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
    print(_currentStep);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        getValueForScreenType<double>(
          context: context,
          mobile: 4,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(
          //   child: Stepper(
          //     currentStep: _currentStep,
          //     onStepTapped: (int _currentStep) =>
          //         setState(() => _currentStep = _currentStep),
          //     onStepContinue: _continue,
          //     onStepCancel: _continue,
          //     steps: <Step>[
          //       Step(
          //         title: Text('Shipping'),
          //         content: Text('This is the first step.'),
          //         isActive: _currentStep >= 0,
          //         state: _currentStep >= 0
          //             ? StepState.complete
          //             : StepState.disabled,
          //       ),
          //       Step(
          //         title: Text('Payment'),
          //         content: Text('This is the second step.'),
          //         isActive: _currentStep >= 0,
          //         state: _currentStep >= 1
          //             ? StepState.complete
          //             : StepState.disabled,
          //       ),
          //       Step(
          //         title: Text('Order'),
          //         content: Text('This is the third step.'),
          //         isActive: _currentStep >= 0,
          //         state: _currentStep >= 2
          //             ? StepState.complete
          //             : StepState.disabled,
          //       ),
          //     ],
          //   ),
          // ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     customTextField((value) {}, "First Name"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     customTextField((value) {}, "Last Name"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     customTextField((value) {}, "User Name"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     customTextField((value) {}, "Mobile"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     customTextField((value) {}, "Business Name (Optional)"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     customTextField((value) {}, "Business Address?"),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     DropdownButtonFormField<String>(
          //       hint: Text("Gender",
          //           style: TextStyle(
          //             fontSize: 14,
          //             color: Colors.grey,
          //           )),
          //       decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //           borderSide: BorderSide(color: textFieldcolor, width: 3.0),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //           borderSide: BorderSide(color: kpBlue, width: 3.0),
          //         ),
          //       ),
          //       value: selected,
          //       items: ["Female", "male", "Rather not Say"]
          //           .map((label) => DropdownMenuItem(
          //                 child: Text(label,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       color: kpBlue,
          //                     )),
          //                 value: label,
          //               ))
          //           .toList(),
          //       onChanged: (value) {
          //         setState(() => selected = value);
          //       },
          //     ),
          //     SizedBox(
          //       height: 15,
          //     ),
          //     DropdownButtonFormField<String>(
          //       hint: Text("Age",
          //           style: TextStyle(
          //             fontSize: 14,
          //             color: Colors.grey,
          //           )),
          //       decoration: InputDecoration(
          //         enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //           borderSide: BorderSide(color: textFieldcolor, width: 3.0),
          //         ),
          //         focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //           borderSide: BorderSide(color: kpBlue, width: 3.0),
          //         ),
          //       ),
          //       value: selected,
          //       items: [
          //         "18-30ys old ",
          //         "30-40ys old",
          //         "40-60ys old",
          //       ]
          //           .map((label) => DropdownMenuItem(
          //                 child: Text(label,
          //                     style: TextStyle(
          //                       fontSize: 14,
          //                       color: kpBlue,
          //                     )),
          //                 value: label,
          //               ))
          //           .toList(),
          //       onChanged: (value) {
          //         setState(() => selected = value);
          //       },
          //     ),
          //     SizedBox(
          //       height: 25,
          //     ),
          //     Container(
          //       width: MediaQuery.of(context).size.width,
          //       height: 45,
          //       child: RaisedButton(
          //         elevation: 0,
          //         color: kpBlue,
          //         focusColor: Colors.blueAccent,
          //         onPressed: () {},
          //         child: Text(
          //           "Register",
          //           style: TextStyle(color: Colors.white, fontSize: 16),
          //         ),
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(10.0),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
