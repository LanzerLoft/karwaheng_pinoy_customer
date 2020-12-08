// import 'package:flutter/material.dart';
// import 'package:kp_mobile/screen/custom/hexcolor.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text("SAMPLE"),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         onPressed: () {
//           _settingModalBottomSheet(context);
//         },
//         child: new Icon(Icons.add),
//       ),
//       body: flatButtons(
//         buttontext("Manage Partner Riders"),
//         () {
//           _settingModalBottomSheet(context);
//         },
//       ),
//     );
//   }
// }

// Widget listTitle(String text) {
//   return Text(
//     text,
//     textAlign: TextAlign.left,
//     style: TextStyle(
//       fontWeight: FontWeight.w400,
//     ),
//   );
// }

// Widget flatButtons(
//   Widget text,
//   Function function,
// ) {
//   return FlatButton(
//     onPressed: function,
//     child: ListTile(
//       trailing: FittedBox(
//         fit: BoxFit.fill,
//         child: Row(
//           children: <Widget>[
//             Icon(
//               Icons.arrow_forward_ios,
//               size: 16,
//             ),
//           ],
//         ),
//       ),
//       title: text,
//     ),
//   );
// }

// Widget buttontext(String text) {
//   return Text(
//     text,
//     textAlign: TextAlign.left,
//     style: TextStyle(
//       fontWeight: FontWeight.w400,
//     ),
//   );
// }

// void _settingModalBottomSheet(context) {
//   showModalBottomSheet(
//       context: context,
//       builder: (BuildContext bc) {
//         return Container(
//           height: 500,
//           child: new Wrap(
//             children: <Widget>[
//               new ListTile(
//                   leading: new Icon(Icons.music_note),
//                   title: new Text('Music'),
//                   onTap: () => {}),
//               new ListTile(
//                 leading: new Icon(Icons.videocam),
//                 title: new Text('Video'),
//                 onTap: () => {},
//               ),
//             ],
//           ),
//         );
//       });
// }
