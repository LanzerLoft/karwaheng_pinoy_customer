import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidDropOffInfo%20.dart';
import 'package:kp_mobile/screen/pages/user_page/User_Pabili_Pahatid/Pahatid/user_pahatidPickUpInfo.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';

class ReorderableViewPage extends StatefulWidget {
  @override
  _ReorderableViewPageState createState() => _ReorderableViewPageState();
}

class _ReorderableViewPageState extends State<ReorderableViewPage> {
  @override
  Widget build(BuildContext context) {
    final pahatidProvider = Provider.of<UserPahatidProvider>(context);
    return Scaffold(
      backgroundColor: Pallete.kpWhite,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        backgroundColor: Pallete.kpWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Reposition",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Container(
          height: 50,
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Pallete.kpBlue,
            child:
                Text("Apply Change", style: CustomTextStyle.textStyleWhite16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Expanded(
          //   flex: 1,
          //   child: ReorderableListView(
          //     shrinkWrap: true,
          //     children: <Widget>[
          //       for (final items in pahatidProvider.listItem)
          //         Row(
          //           key: ValueKey(items),
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Container(
          //               decoration: new BoxDecoration(
          //                 color: Pallete.kpGrey,
          //                 shape: BoxShape.circle,
          //               ),
          //               child: Padding(
          //                 padding: EdgeInsets.all(8.0),
          //                 child: Text(
          //                   items,
          //                   style: TextStyle(color: Pallete.kpWhite),
          //                 ),
          //               ),
          //             ),
          //             Container(
          //               width: 80.0.w,
          //               child: locationTextFieldReposition(
          //                 (value) {},
          //                 items,
          //                 items,
          //                 () {},
          //                 () {
          //                   print("REMOVE");
          //                 },
          //               ),
          //             ),
          //           ],
          //         ),
          //     ],
          //     onReorder: pahatidProvider.reorderData,
          //   ),
          // ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Dummy Product Data Here
  final List myProducts = List.generate(100, (index) {
    return {"id": index, "title": "Product \#$index", "price": index + 1};
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kindacode.com'),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              // Display the list item
              return Dismissible(
                key: UniqueKey(),

                // only allows the user swipe from right to left
                direction: DismissDirection.endToStart,

                // Remove this product from the list
                // In production enviroment, you may want to send some request to delete it on server side
                onDismissed: (_) {
                  setState(() {
                    myProducts.removeAt(index);
                  });
                  print(myProducts.length);
                },

                // Display item's title, price...
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 10),
                      child: customTextFieldiCon(
                        (value) {},
                        myProducts[index]["id"].toString(),
                        myProducts[index]["id"].toString(),
                        IconButton(
                          icon: Icon(
                            Icons.location_on,
                          ),
                          onPressed: () {},
                        ),
                        () {
                          pageRoute(context, UserPahatidPickUpInfo());
                        },
                      ),
                    ),
                  ),

                  // ListTile(
                  //   leading: CircleAvatar(
                  //     child: Text(myProducts[index]["id"].toString()),
                  //   ),
                  //   title: Text(myProducts[index]["title"]),
                  //   subtitle:
                  //       Text("\$${myProducts[index]["price"].toString()}"),
                  //   trailing: Icon(Icons.arrow_back),
                  // ),
                ),

                // This will show up when the user performs dismissal action
                // It is a red background and a trash icon
                background: Container(
                  color: Colors.red,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ));
  }
}
