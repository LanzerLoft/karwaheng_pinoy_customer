import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/pages/user_page/register/register.dart';

class UserLogin extends StatefulWidget {
  @override
  _UserLoginState createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  bool _showpassword = false;
  @override
  Widget build(BuildContext context) {
    final scaleSize = MediaQuery.of(context).size.aspectRatio;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SafeArea(
                  child: Image.asset(
                    "assets/login_images/KP_LOGO.png",
                    scale: scaleSize,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: 35,
                    // ),
                    Material(
                      color: Pallete.kpGrey,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        style: TextStyle(color: Pallete.kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Username or Phone Number',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 3.0),
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
                    Material(
                      color: Pallete.kpGrey,
                      // elevation: 6.0,
                      // shadowColor: background,
                      borderRadius: BorderRadius.circular(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Pallete.kpBlue),
                        onChanged: (value) {},
                        autofocus: false,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'Passcode',
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Colors.transparent, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(color: Pallete.kpBlue, width: 3.0),
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              // Based on passwordVisible state choose the icon
                              _showpassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Pallete.kpBlue,
                            ),
                            onTap: () {
                              // Update the state i.e. toogle the state of passwordVisible variable
                              setState(() {
                                _showpassword = !_showpassword;
                                print("hello");
                              });
                            },
                          ),
                        ),
                        obscureText: !_showpassword,
                      ),
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
                          "Login",
                          style:
                              TextStyle(color: Pallete.kpWhite, fontSize: 16),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forgot Passcode?",
                          style: TextStyle(
                            color: Pallete.kpBlue,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Pallete.kpBlue, fontSize: 14),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register()));
                          },
                          child: Text(
                            "Register Now",
                            style: TextStyle(
                                color: Pallete.kpBlue,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
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
