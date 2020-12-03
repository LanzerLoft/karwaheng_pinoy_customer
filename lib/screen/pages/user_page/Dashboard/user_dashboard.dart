import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

import 'user_homepage.dart';

class UserDashboard extends StatefulWidget {
  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  List<String> myAccount = ["My Account", "My Dashboard", "My Dashboard", "4"];
  final List lista = [
    {
      "id": 1,
      "title": "My ",
      "My Account": "Recognize",
      "My Dashboard": "Account",
    },
    {"id": 2, "My Account": "test2"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Pallete.kpBlue,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return Center(
                child: Container(
                  child: ExpansionTile(
                    title: Text(
                      lista[index]["title"].toString(),
                    ),
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {},
                        child: ListTile(
                          trailing: FittedBox(
                            fit: BoxFit.fill,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            lista[index]["My Account"].toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
        // ListView(
        //   physics: BouncingScrollPhysics(),
        //   // Important: Remove any padding from the ListView.
        //   padding: EdgeInsets.zero,
        //   children: <Widget>[
        //     // UserAccountsDrawerHeader(
        //     //   accountName: Text("Ashish Rawat"),
        //     //   accountEmail: Text("ashishrawat2911@gmail.com"),
        //     //   currentAccountPicture: CircleAvatar(
        //     //     backgroundColor:
        //     //         Theme.of(context).platform == TargetPlatform.iOS
        //     //             ? Pallete.kpRed
        //     //             : Colors.white,
        //     //     child: Text(
        //     //       "A",
        //     //       style: TextStyle(fontSize: 40.0),
        //     //     ),
        //     //   ),
        //     // ),
        //     DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Pallete.kpBlue,
        //         // image: DecorationImage(
        //         //     image: AssetImage("assets/login_images/KP_LOGO.png"),
        //         //     fit: BoxFit.cover)),
        //       ),
        //       child: Stack(
        //         alignment: AlignmentDirectional.topStart,
        //         overflow: Overflow.clip,
        //         children: [
        //           Positioned(
        //             top: 20,
        //             child: RichText(
        //               textAlign: TextAlign.center,
        //               text: TextSpan(
        //                 text: 'Good day,',
        //                 style: TextStyle(color: Pallete.kpWhite, fontSize: 26),
        //                 children: <TextSpan>[
        //                   TextSpan(
        //                     text: '\n Sonny!',
        //                     style:
        //                         TextStyle(color: Pallete.kpWhite, fontSize: 24),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //           Positioned(
        //             height: 150,
        //             width: 150,
        //             top: 12,
        //             left: 150,
        //             child: Container(
        //               child: Image.asset(
        //                 "assets/login_images/KP_profile.png",
        //               ),
        //             ),
        //           ),
        //           Positioned(
        //             left: 1,
        //             bottom: 30,
        //             child: RichText(
        //               text: TextSpan(
        //                 text: '09123456789',
        //                 style: TextStyle(color: Pallete.kpWhite, fontSize: 12),
        //                 children: <TextSpan>[
        //                   TextSpan(
        //                     text: '/Karwaheng pinoy',
        //                     style:
        //                         TextStyle(color: Pallete.kpWhite, fontSize: 12),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ),

        //     ExpansionTile(
        //       title: Text("My Account"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "My Profile",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Change Passcode",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Notifications & Sounds",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     ExpansionTile(
        //       title: Text("My Dashboard"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Recognize",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Celebrate",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     ExpansionTile(
        //       title: Text("My Bookings"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Scheduled",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Ongoing",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Delivered",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     ExpansionTile(
        //       title: Text("My ToolBox"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Inbox",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Track My Delivery",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Calculate Volumetric Weight",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Refer a Friend",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Manage Partner Riders",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     ExpansionTile(
        //       title: Text("My Wallet"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Top-up",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Transfer",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "History",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Rewards",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     ExpansionTile(
        //       title: Text("Help Center"),
        //       children: <Widget>[
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "FAQS",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Chat With Us",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "About Us",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Pricing Schedule",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Send Feedback",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Privacy Policy",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //         FlatButton(
        //           onPressed: () {},
        //           child: ListTile(
        //               trailing: FittedBox(
        //                 fit: BoxFit.fill,
        //                 child: Row(
        //                   children: <Widget>[
        //                     Icon(
        //                       Icons.arrow_forward_ios,
        //                       size: 16,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               title: Text(
        //                 "Terms of use",
        //                 textAlign: TextAlign.left,
        //                 style: TextStyle(
        //                   fontWeight: FontWeight.w400,
        //                 ),
        //               )),
        //         ),
        //       ],
        //     ),
        //     Wrap(
        //       crossAxisAlignment: WrapCrossAlignment.center,
        //       children: [
        //         IconButton(
        //           icon: Icon(Icons.logout),
        //           onPressed: () {},
        //         ),
        //         Text("Logout"),
        //       ],
        //     ),
        //   ],
        // ),
      ),
      body: UserHomepage(),
    );
  }
}

class SongDetail {
  String strTitle;
  var isFavorite = false;
  SongDetail(this.strTitle, this.isFavorite);
}

List<SongDetail> arrSongList = [];
