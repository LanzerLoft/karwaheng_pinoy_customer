import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

import 'hexcolor.dart';
import 'textStyle.dart';

void setState(Null Function() param0) {}

Widget usernameField(
  ValueChanged<String> onChanged,
  FormFieldValidator<String> validator,
) {
  return Material(
    color: Pallete.kpGreyOkpGreypacity,
    borderRadius: BorderRadius.circular(10.0),
    child: TextFormField(
      validator: validator,
      style: CustomTextStyle.textfield16,
      textCapitalization: TextCapitalization.sentences,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: 'Username or Phone Numbers',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 3.0),
        ),
      ),
    ),
  );
}

Widget passcodeField(
    ValueChanged<String> onChanged, FormFieldValidator<String> validator) {
  bool _showpassword = false;
  return Material(
    color: Pallete.kpGreyOkpGreypacity,
    borderRadius: BorderRadius.circular(10.0),
    child: TextFormField(
      toolbarOptions: ToolbarOptions(),
      validator: validator,
      keyboardType: TextInputType.visiblePassword,
      style: CustomTextStyle.textfield,
      onChanged: onChanged,
      autofocus: false,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
        hintText: 'Passcode',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 3.0),
        ),
        suffixIcon: GestureDetector(
          child: Icon(
            // Based on passwordVisible state choose the icon
            _showpassword ? Icons.visibility : Icons.visibility_off,
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
  );
}

Widget changePassTextField(ValueChanged<String> onChanged, String passcode,
    FormFieldValidator<String> validator) {
  bool _showpasswordField = false;
  return TextFormField(
    toolbarOptions: ToolbarOptions(),
    validator: validator,
    keyboardType: TextInputType.visiblePassword,
    style: CustomTextStyle.textfield,
    onChanged: onChanged,
    autofocus: false,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
      hintText: passcode,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      suffixIcon: GestureDetector(
        child: Icon(
          // Based on passwordVisible state choose the icon
          _showpasswordField ? Icons.visibility : Icons.visibility_off,
          color: Pallete.kpBlue,
        ),
        onTap: () {
          // Update the state i.e. toogle the state of passwordVisible variable
          setState(() {
            _showpasswordField = !_showpasswordField;
            print("hello");
          });
        },
      ),
    ),
    obscureText: !_showpasswordField,
  );
}

Widget customTextField(
  ValueChanged<String> onChanged,
  String hintext,
) {
  return Material(
    color: Pallete.kpGreyOkpGreypacity,
    borderRadius: BorderRadius.circular(10.0),
    child: TextFormField(
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 3.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldiCon(ValueChanged<String> onChanged, String hintext,
    String labelText, Widget suffixicon, void Function() onTap) {
  return TextFormField(
    onTap: onTap,
    enableSuggestions: true,
    style: TextStyle(color: Pallete.kpBlue),
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hintext,
      labelText: labelText,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      suffixIcon: suffixicon,
    ),
  );
}

Widget customTextFieldPickup(ValueChanged<String> onChanged, String hintext,
    String labelText, void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onTap: onTap,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textPickUpHint,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    ),
  );
}

Widget customTextFieldPickupIcon(ValueChanged<String> onChanged, String hintext,
    String labelText, Widget suffixicon, void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onTap: onTap,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textPickUpHint,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        suffixIcon: suffixicon,
      ),
    ),
  );
}

Widget customTextFieldPickupPrefix(
    ValueChanged<String> onChanged,
    String hintext,
    String labelText,
    Widget suffixicon,
    void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onTap: onTap,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textPickUpHint,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        prefixIcon: suffixicon,
      ),
    ),
  );
}
// }

// Widget customTextFieldPickup(ValueChanged<String> onChanged, String hintext,
//     String labelText, Widget suffixicon, void Function() onTap) {
//   return TextFormField(
//     style: TextStyle(color: Pallete.kpBlue),
//     onChanged: onChanged,
//     autofocus: false,
//     keyboardType: TextInputType.text,
//     decoration: InputDecoration(
//       hintStyle: TextStyle(color: Colors.grey),
//       hintText: hintext,
//       labelText: labelText,
//       contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//     ),
//   );
// }
