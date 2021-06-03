import 'package:flutter/material.dart';
import 'package:kp_mobile/provider/user_provider/customer_pahatid_provider.dart';
import 'package:provider/provider.dart';

class ReorderableViewPage extends StatefulWidget {
  @override
  _ReorderableViewPageState createState() => _ReorderableViewPageState();
}

class _ReorderableViewPageState extends State<ReorderableViewPage> {
  @override
  Widget build(BuildContext context) {
    final pahatidProvider = Provider.of<UserPahatidProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Reorderable ListView In Flutter",
          style: TextStyle(color: Colors.pinkAccent[100]),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.sort_by_alpha),
              tooltip: "Sort",
              onPressed: () {
                pahatidProvider.sorting();
              }),
        ],
      ),
      body: ReorderableListView(
        children: <Widget>[
          for (final items in pahatidProvider.itemss)
            Card(
              color: Colors.blueGrey,
              key: ValueKey(items),
              elevation: 2,
              child: ListTile(
                title: Text(items),
                leading: Icon(
                  Icons.work,
                  color: Colors.black,
                ),
              ),
            ),
        ],
        onReorder: pahatidProvider.reorderData,
      ),
    );
  }
}
