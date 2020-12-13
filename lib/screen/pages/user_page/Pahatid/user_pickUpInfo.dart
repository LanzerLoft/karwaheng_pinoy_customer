import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/custom_TextField.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_checkBox.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class UserPickUpInfo extends StatefulWidget {
  @override
  _UserPickUpInfoState createState() => _UserPickUpInfoState();
}

class _UserPickUpInfoState extends State<UserPickUpInfo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Pallete.kpWhite,
        appBar: AppBar(
          leading: BackButton(color: Pallete.kpBlue),
          automaticallyImplyLeading: true,
          backgroundColor: Pallete.kpWhite,
          title: Text(
            "Enter Pick-Up Information",
            style: TextStyle(color: Pallete.kpBlue),
          ),
          centerTitle: true,
          elevation: 0,
          // bottom: _tabBarPickupAddressMap(),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(
              getValueForScreenType<double>(
                context: context,
                mobile: 16,
              ),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    customTextFieldPickup(
                        (value) {},
                        "House No./Unit/Suite/Room No./Building/Street Name",
                        "Address:",
                        () {}),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FlatButton(
                        height: 25,
                        color: Pallete.kpGreyOkpGreypacity2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        onPressed: () {},
                        child: Text("Clear All"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 5,
                  ),
                  child: Container(
                    child: _tabBarPickup(),
                    height: 35,
                  ),
                ),
                customTextFieldPickupIcon(
                    (value) {},
                    "House No./Unit/Suite/Room No./Building/Street Name",
                    "Address:",
                    GestureDetector(
                      onTap: () {
                        showAlertAddress(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.help,
                          size: 20,
                          color: Pallete.kpGrey,
                        ),
                      ),
                    ),
                    () {}),
                customTextFieldPickupIcon(
                    (value) {},
                    "e.g. 3rd House to the left of Lucky Charm Bakeshop po",
                    "Landmark:",
                    GestureDetector(
                      onTap: () {
                        showAlertAddress(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.help,
                          size: 20,
                          color: Pallete.kpGrey,
                        ),
                      ),
                    ),
                    () {}),
                customTextFieldPickup(
                    (value) {},
                    "e.g. Documents,Flowers,Grocery",
                    "Item Description:",
                    () {}),
                customTextFieldPickup(
                    (value) {},
                    "e.g. Call me when you get here",
                    "Instruction to Rider (Optional):",
                    () {}),
                customTextFieldPickupIcon((value) {}, "First and Last Name",
                    "Contact Person", Icon(Icons.perm_contact_cal), () {}),
                customTextFieldPickupPrefix(
                    (value) {},
                    "09978888880",
                    "Phone",
                    Icon(
                      Icons.flag_outlined,
                      size: 20,
                    ),
                    () {}),
                customRadiobutton(
                    (value) {}, true, "In charge of delivery payment", true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _tabBarPickup() {
  return TabBar(
    tabs: [
      Tab(
        text: "Home",
      ),
      Tab(
        text: "Work",
      ),
      Tab(
        text: "Recent",
      ),
    ],
    labelColor: Colors.white,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpBlue,
      bottomLeftRadius: 25,
      bottomRightRadius: 25,
      topLeftRadius: 25,
      topRightRadius: 25,
    ),
  );
}

Widget _tabBarPickupAddressMap() {
  return TabBar(
    tabs: [
      Tab(
        text: "Home",
      ),
      Tab(
        text: "Work",
      ),
    ],
    labelColor: Colors.white,
    unselectedLabelColor: Pallete.kpBlue,
    indicator: RectangularIndicator(
      color: Pallete.kpBlue,
      bottomLeftRadius: 25,
      bottomRightRadius: 25,
      topLeftRadius: 25,
      topRightRadius: 25,
    ),
  );
}

showAlertAddress(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
