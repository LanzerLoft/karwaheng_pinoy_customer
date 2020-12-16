import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';

class SellerReg extends StatefulWidget {
  @override
  _SellerRegState createState() => _SellerRegState();
}

class _SellerRegState extends State<SellerReg> {
  @override
  Widget build(BuildContext context) {
    final kpBlue = Color(0xff1076f6);

    final textFieldcolor = Colors.grey[300].withOpacity(0.2);

    String selected;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(color: kpBlue),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: kpBlue,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'First Name',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      color: Colors.white,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Last Name',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      color: Colors.white,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Username',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      color: Colors.white,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'mobile',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      color: Colors.white,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Business Name (Optional)',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      color: Colors.white,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Business Address?',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: textFieldcolor, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Pallete.kpBlue, width: 3.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<String>(
                      hint: Text("Gender",
                          style: TextStyle(
                            fontSize: 14,
                            color: Pallete.kpGrey,
                          )),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: textFieldcolor, width: 3.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Pallete.kpBlue, width: 3.0),
                        ),
                      ),
                      value: selected,
                      items: ["Female", "male", "Rather not Say"]
                          .map((label) => DropdownMenuItem(
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Pallete.kpBlue,
                                    )),
                                value: label,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() => selected = value);
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    DropdownButtonFormField<String>(
                      hint: Text("Age",
                          style: TextStyle(
                            fontSize: 14,
                            color: Pallete.kpGrey,
                          )),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: textFieldcolor, width: 3.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              BorderSide(color: Pallete.kpBlue, width: 3.0),
                        ),
                      ),
                      value: selected,
                      items: [
                        "18-30ys old ",
                        "30-40ys old",
                        "40-60ys old",
                      ]
                          .map((label) => DropdownMenuItem(
                                child: Text(label,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Pallete.kpBlue,
                                    )),
                                value: label,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() => selected = value);
                      },
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: RaisedButton(
                        elevation: 0,
                        color: Pallete.kpBlue,
                        focusColor: Colors.blueAccent,
                        onPressed: () {},
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
