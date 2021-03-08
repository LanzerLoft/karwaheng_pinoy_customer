import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:kp_mobile/screen/custom/custom_ListText.dart';
import 'package:kp_mobile/screen/custom/custom_Switch.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_card.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/login/user_Login.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'change_accountDetails/Home_Address/user_changeHomeAddress.dart';
import 'change_accountDetails/Work_Address/user_changeWorkAddress.dart';
import 'change_accountDetails/user_changeEmail.dart';
import 'change_accountDetails/user_changeFullName.dart';
import 'change_accountDetails/user_changeHomeTown.dart';
import 'change_accountDetails/user_changeMobileNumber.dart';
import 'change_accountDetails/user_changePass.dart';
import 'change_accountDetails/user_changeUserName.dart';

class UserMyAccount extends StatefulWidget {
  @override
  _UserMyAccountState createState() => _UserMyAccountState();
}

class _UserMyAccountState extends State<UserMyAccount> {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Pallete.kpBlue,
          ),
          backgroundColor: Pallete.kpWhite,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "My Account",
            style: CustomTextStyle.textStyleBlue18,
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: customButton2(() {
            pageRoute(context, UserLoginResponsive());
          }, "Logout", 5, double.infinity, 55, Pallete.kpBlue, Pallete.kpBlue),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: customButton2(() {}, "Logout", 5, double.infinity, 40,
        //       Pallete.kpBlue, Pallete.kpBlue),
        // ),
        backgroundColor: Pallete.kpWhite,
        body: Container(
          padding: EdgeInsets.all(
            getValueForScreenType<double>(
              context: context,
              mobile: 12,
            ),
          ),
          child: ListView(
            children: [
              customListTextProfile(
                "Profile Picture",
                "KPSonny",
                () {
                  userProvider.getImgFromGallery();
                },
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/login_images/KP_LOGO.png'),
                    ),
                  ),
                ),
              ),
              customListTextIcon("Username", "KPSonny", () {
                pageRoute(
                  context,
                  UserChangeUsernameRes(
                    userName: "KPSonny",
                  ),
                );
              }),
              customListTextIcon("Full Name", "Juan dela cruz", () {
                pageRoute(
                  context,
                  UserChangeFullnameRes(
                    firstName: "Juan ",
                    lastName: "Dela cruz",
                  ),
                );
              }),
              customListTextIcon("Cellphone Number", "09126456789", () {
                pageRoute(
                  context,
                  UserChangeMobileNumberRes(
                    mobileNumber: "09126456789",
                  ),
                );
              }),
              customListTextIcon("Email", "KPSonny@karwahengpinoy.ph", () {
                pageRoute(
                  context,
                  UserChangeEmailrRes(
                    email: "KPSonny@karwahengpinoy.ph",
                  ),
                );
              }),
              customListTextIcon("Hometown", "Manila", () {
                pageRoute(
                  context,
                  UserChangeHometownRes(
                    hometown: "Manila",
                  ),
                );
              }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customCard(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Home Address",
                          style: CustomTextStyle.textStyleGrey16,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            pageRoute(
                              context,
                              ChangeHomeAddress(
                                address: "Metro Manila",
                                landmark: "near School",
                                contactPerson: "Juan Dela Cruz",
                                phoneNumber: "09123456789",
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                size: 15,
                                color: Pallete.kpGrey,
                              ),
                              Text(
                                " Edit",
                                style: CustomTextStyle.textStyleGrey14,
                              ),
                            ],
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "123 Brgy. 2468, Metro Manila ",
                        style: CustomTextStyle.textStyleBluebold16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text("Landmark: Near Ace Hardware",
                          style: CustomTextStyle.textStyleGrey14),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Contact Person: Juan Dela Cruz",
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Cellphone Number: 09123456789",
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                    ),
                  ],
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: customCard(Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Work Address",
                          style: CustomTextStyle.textStyleGrey16,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            pageRoute(
                              context,
                              ChangeWorkAddress(
                                address: "Metro Manila",
                                landmark: "near School",
                                contactPerson: "Juan Dela Cruz",
                                phoneNumber: "09123456789",
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit,
                                size: 15,
                                color: Pallete.kpGrey,
                              ),
                              Text(
                                " Edit",
                                style: CustomTextStyle.textStyleGrey14,
                              ),
                            ],
                          ),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "123 Brgy. 2468, Metro Manila ",
                        style: CustomTextStyle.textStyleBluebold16,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text("Landmark: Near Ace Hardware",
                          style: CustomTextStyle.textStyleGrey14),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Contact Person: Juan Dela Cruz",
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Cellphone Number: 09123456789",
                        style: CustomTextStyle.textStyleGrey14,
                      ),
                    ),
                  ],
                )),
              ),
              // customListTextIcon("Home Address", "Metro Manila", () {
              //   pageRoute(
              //     context,
              //     ChangeHomeAddress(
              //       address: "Metro Manila",
              //       landmark: "near School",
              //       contactPerson: "Juan Dela Cruz",
              //       phoneNumber: "09123456789",
              //     ),
              //   );
              // }),
              // customListTextIcon(
              //     "Work Address", "street 123 barangay 246,city 43 ,2423", () {
              //   pageRoute(
              //     context,
              //     ChangeWorkAddress(
              //       street: "street 123",
              //       barangay: "barangay 246",
              //       city: "city 43",
              //       zipcode: "2423",
              //     ),
              //   );
              // }),
              Divider(),
              customSwitchIOSAndroidVibrate(
                  Text(
                    "Vibrate",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchvibrate, (value) {
                userProvider.customSwitchVibrate();
              }),
              customSwitchIOSAndroidSound(
                  Text(
                    "Sound",
                    style: CustomTextStyle.textStyleGrey14,
                  ),
                  userProvider.customSwitchsound, (value) {
                userProvider.customSwitchSound();
              }),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              customListTextColIcon(
                  "Change Passcode",
                  "Click here to change the Passcode",
                  "Last changed: February 25, 2021 5:00PM", () {
                pageRoute(context, UserchangePassResponsive());
              }),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ));
  }
}
