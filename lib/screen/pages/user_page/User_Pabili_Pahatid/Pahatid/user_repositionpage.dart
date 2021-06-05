import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

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
      body: ReorderableListView(
        children: <Widget>[
          for (final items in pahatidProvider.listItem)
            Row(
              key: ValueKey(items),
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: new BoxDecoration(
                    color: Pallete.kpGrey,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      items.length.toString(),
                      style: TextStyle(color: Pallete.kpWhite),
                    ),
                  ),
                ),
                Container(
                  width: 80.0.w,
                  child: locationTextFieldReposition(
                    (value) {},
                    items,
                    items,
                    () {},
                    () {
                      print("REMOVE");
                    },
                  ),
                ),
              ],
            ),
        ],
        onReorder: pahatidProvider.reorderData,
      ),
    );
  }
}
