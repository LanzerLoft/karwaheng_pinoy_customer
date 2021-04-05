import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'hexcolor.dart';
import 'textStyle.dart';
import 'package:intl/intl.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

void setState(Null Function() param0) {}

Widget usernameField(
  ValueChanged<String> onChanged,
  FormFieldValidator<String> validator,
) {
  return TextFormField(
    validator: validator,
    style: CustomTextStyle.textfield16,
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.next,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    maxLength: 25,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: 'Username or Cellphone number',
      counterText: "",
      contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      errorMaxLines: 2,
      errorStyle: TextStyle(),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
      ),
    ),
  );
}

Widget passcodeField(BuildContext context, ValueChanged<String> onChanged,
    FormFieldValidator<String> validator) {
  final userProvider = Provider.of<UserProvider>(context);
  return TextFormField(
    toolbarOptions: ToolbarOptions(),
    validator: validator,
    style: CustomTextStyle.textfield,
    onChanged: onChanged,
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.go,
    maxLength: 4,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: 'Passcode',
      counterText: "",
      focusColor: Pallete.kpRed,
      contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      errorMaxLines: 2,
      errorStyle: TextStyle(),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
      ),
      suffixIcon: GestureDetector(
        onTap: () {
          userProvider.passcodeIcon();
        },
        child: Icon(userProvider.showpassword
            ? Icons.visibility
            : Icons.visibility_off),
      ),
    ),
    obscureText: !userProvider.showpassword,
  );
}

Widget passcodeFieldicon(BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context);
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      toolbarOptions: ToolbarOptions(),
      style: CustomTextStyle.textfield,
      onChanged: (value) {},
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
        hintText: 'Passcode',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            userProvider.passcodeIcon();
          },
          child: Icon(userProvider.showpassword
              ? Icons.visibility
              : Icons.visibility_off),
        ),
      ),
      obscureText: !userProvider.showpassword,
    ),
  );
}

Widget changePassTextField(BuildContext context, ValueChanged<String> onChanged,
    String passcode, FormFieldValidator<String> validator) {
  final userProvider = Provider.of<UserProvider>(context);
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
        onTap: () {
          userProvider.passcodeIcon();
        },
        child: Icon(userProvider.showpassword
            ? Icons.visibility
            : Icons.visibility_off),
      ),
    ),
    obscureText: !userProvider.showpassword,
  );
}

Widget customTextField(
  ValueChanged<String> onChanged,
  String hintext,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      textInputAction: TextInputAction.next,
      style: CustomTextStyle.textStyleBluebold16,
      onChanged: onChanged,
      autofocus: false,
      toolbarOptions: ToolbarOptions(),
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintStyle: CustomTextStyle.textStyleGrey16,
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customPasscodeTextField(ValueChanged<String> onChanged, String hintext,
    FormFieldValidator<String> validator, BuildContext context) {
  final userProvider = Provider.of<UserProvider>(context);
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      style: CustomTextStyle.textStyleBluebold16,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
      validator: validator,
      maxLength: 4,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        counterText: "",
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            userProvider.passcodeIcon();
          },
          child: Icon(userProvider.showpassword
              ? Icons.visibility
              : Icons.visibility_off),
        ),
      ),
      obscureText: !userProvider.showpassword,
    ),
  );
}

Widget customPasscodeTextFieldIcon(
  ValueChanged<String> onChanged,
  String hintext,
  FormFieldValidator<String> validator,
) {
  bool _showpasswordField = false;
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      validator: validator,
      keyboardType: TextInputType.number,
      maxLength: 4,
      decoration: InputDecoration(
        counterText: "",
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
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
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      suffixIcon: suffixicon,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customlocationTextField(ValueChanged<String> onChanged, String hintext,
    String labelText, void Function() onTap, void Function() removeIcon) {
  return Stack(
    alignment: Alignment.centerRight,
    children: <Widget>[
      TextFormField(
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
          contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
          ),
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.remove_circle,
          color: Pallete.kpRed,
        ),
        onPressed: removeIcon,
      ),
    ],
  );
}

Widget customTextFieldNOicon(ValueChanged<String> onChanged, String hintext,
    String labelText, void Function() onTap) {
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
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget textFieldChangeDetailsVal(
    ValueChanged<String> onChanged,
    TextEditingController controller,
    String hintext,
    String labelText,
    FormFieldValidator<String> validator,
    void Function() onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetailsCP(
    ValueChanged<String> onChanged,
    TextEditingController controller,
    String hintext,
    String labelText,
    FormFieldValidator<String> validator,
    void Function() onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 11,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        counterText: "",
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetails(
    ValueChanged<String> onChanged,
    TextEditingController controller,
    String hintext,
    String labelText,
    void Function() onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetailsName(
    ValueChanged<String> onChanged,
    TextEditingController controller,
    String hintext,
    String labelText,
    FormFieldValidator<String> validator,
    void Function() onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      inputFormatters: [
        new FilteringTextInputFormatter.allow(RegExp(r"[a-zA-Z]+|\s")),
      ],
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        counterText: "",
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetailsHometown(
  ValueChanged<String> onChanged,
  TextEditingController controller,
  String hintext,
  String labelText,
  void Function() onTap,
  FormFieldValidator<String> validator,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetailsEmail(
  ValueChanged<String> onChanged,
  TextEditingController controller,
  String hintext,
  String labelText,
  void Function() onTap,
  FormFieldValidator<String> validator,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldChangeDetailsNumber(
  ValueChanged<String> onChanged,
  TextEditingController controller,
  String hintext,
  String labelText,
  void Function() onTap,
  FormFieldValidator<String> validator,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      validator: validator,
      controller: controller,
      onTap: onTap,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: true,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldResetViaEmail(
  ValueChanged<String> onChanged,
  String hintext,
  String labelText,
  FormFieldValidator<String> validator,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      validator: validator,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 20,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        counterText: "",
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldResetViaPhone(
  ValueChanged<String> onChanged,
  String hintext,
  String labelText,
  FormFieldValidator<String> validator,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      validator: validator,
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLength: 11,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        counterText: "",
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldEnterID(ValueChanged<String> onChanged, String hintext,
    String labelText, void Function() onTap) {
  return TextFormField(
    onTap: onTap,
    enableSuggestions: true,
    style: TextStyle(color: Pallete.kpBlue),
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hintext,
      labelText: labelText,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldFeedbackEnterID(ValueChanged<String> onChanged,
    String hintext, String labelText, void Function() onTap) {
  return TextFormField(
    onTap: onTap,
    enableSuggestions: true,
    style: TextStyle(color: Pallete.kpBlue),
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.characters,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: hintext,
      labelText: labelText,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldPabiliPickup(
    TextEditingController controller,
    ValueChanged<String> onChanged,
    String hintext,
    String labelText,
    void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      controller: controller,
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldPickupInstruction(ValueChanged<String> onChanged,
    String hintext, String labelText, void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onTap: onTap,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      maxLines: 3,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textPickUpHint,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldNoBorder(ValueChanged<String> onChanged, String hintext,
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

Widget customTextFieldBorder(ValueChanged<String> onChanged, String hintext,
    String labelText, void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      onTap: onTap,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textPickUpHint,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        labelText: labelText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldPabiliPickupIcon(
    TextEditingController controller,
    ValueChanged<String> onChanged,
    String hintext,
    String labelText,
    Widget suffixicon,
    void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextFormField(
      controller: controller,
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

Widget customTextFieldPickupIcon(ValueChanged<String> onChanged, String hintext,
    String labelText, Widget suffixicon, void Function() onTap) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 7),
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
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
    padding: EdgeInsets.symmetric(vertical: 7),
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldPayment(ValueChanged<String> onChanged, Color color) {
  return TextFormField(
    style: CustomTextStyle.textfieldBlack16,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    keyboardType: TextInputType.numberWithOptions(decimal: true),
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly
    ],
    maxLength: 10,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: '000.00',
      counterText: "",
      contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: color, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: color, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldPaymentPromoCode(
    ValueChanged<String> onChanged, Color color) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      style: CustomTextStyle.textfieldBlack16,
      textCapitalization: TextCapitalization.sentences,
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      maxLength: 10,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: 'KP12345',
        counterText: "",
        contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: color, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldPromoCodePabili(
    ValueChanged<String> onChanged, Color color) {
  return TextFormField(
    style: CustomTextStyle.textfieldBlack16,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    keyboardType: TextInputType.text,
    maxLength: 10,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: 'Enter Promo Code',
      counterText: "",
      contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity3, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: color, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldReferralCodePabili(
    ValueChanged<String> onChanged, Color color) {
  return TextFormField(
    style: CustomTextStyle.textfieldBlack16,
    textCapitalization: TextCapitalization.sentences,
    onChanged: onChanged,
    keyboardType: TextInputType.text,
    maxLength: 10,
    textAlign: TextAlign.center,
    decoration: InputDecoration(
      hintStyle: TextStyle(color: Colors.grey),
      hintText: 'Enter Referral Code',
      counterText: "",
      contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity3, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: BorderSide(color: color, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldGcashAccColumn(
    ValueChanged<String> onChanged, Color color, String hintText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextField(
      style: CustomTextStyle.textfieldBlack18,
      onChanged: onChanged,
      keyboardType: TextInputType.phone,
      maxLength: 11,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintText,
        counterText: "",
        contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: color, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldGcashTransferName(
    ValueChanged<String> onChanged, Color color, String hintText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextField(
      textInputAction: TextInputAction.next,
      style: CustomTextStyle.textfieldBlack18,
      onChanged: onChanged,
      keyboardType: TextInputType.name,
      textAlign: TextAlign.start,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: color, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customListTextField(
  String text,
  ValueChanged<String> onChanged,
) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15),
    child: Row(
      children: [
        Text(text),
        Spacer(),
        Text(
          "P",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
            height: 30,
            width: 80,
            child: customTextFieldPayment(onChanged, Pallete.kpYellow)),
      ],
    ),
  );
}

Widget customListTextFieldIcon(
  String text,
  ValueChanged<String> onChanged,
) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Text(text),
        Spacer(),
        Icon(
          Icons.add,
          size: 18,
          color: Colors.grey,
        ),
        Text(
          "P",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        // Icon(
        //   Icons.attach_money,
        //   size: 20,
        // ),
        Container(
            height: 30,
            width: 80,
            child: customTextFieldPayment(onChanged, Pallete.kpYellow)),
      ],
    ),
  );
}

Widget customListTextFieldIconBlue(String text, ValueChanged<String> onChanged,
    ValueChanged<String> onChangedPromo) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  child: customTextFieldPaymentPromoCode(
                      onChangedPromo, Pallete.kpBlue),
                ),
                customButton3(
                    () {}, "Apply", 5, 30, Pallete.kpBlue, Pallete.kpBlue),
              ],
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.add,
          size: 18,
          color: Colors.grey,
        ),
        Text(
          "P",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        SizedBox(
          width: 5,
        ),
        // Icon(
        //   Icons.attach_money,
        //   size: 20,
        // ),
        Container(
          height: 30,
          width: 80,
          child: customTextFieldPayment(onChanged, Pallete.kpBlue),
        ),
      ],
    ),
  );
}

Widget customListTextFieldColumn(
  String text,
  ValueChanged<String> onChanged,
  String hintText,
) {
  return Padding(
    padding: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: CustomTextStyle.textStyleGrey18),
        SizedBox(
          height: 5,
        ),
        // Icon(
        //   Icons.attach_money,
        //   size: 20,
        // ),
        Container(
            height: 50,
            width: 230,
            child: customTextFieldGcashAccColumn(
                onChanged, Pallete.kpYellow, hintText)),
      ],
    ),
  );
}

Widget customTextfieldCalculate(
    ValueChanged<String> onChanged, String hintText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    width: 40.0.w,
    child: TextFormField(
      style: CustomTextStyle.textfield16,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
      textAlignVertical: TextAlignVertical.center,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        labelText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Colors.transparent, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldAmmount(
    ValueChanged<String> onChanged,
    FormFieldValidator<String> validator,
    String hintext,
    TextEditingController controller,
    Function onTap) {
  return TextFormField(
    validator: validator,
    onTap: onTap,
    controller: controller,
    textAlign: TextAlign.left,
    style: TextStyle(color: Pallete.kpBlue, fontSize: 22),
    onChanged: onChanged,
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.done,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    inputFormatters: [
      CurrencyTextInputFormatter(
        locale: 'en-PH',
        decimalDigits: 0,
        symbol: '₱',
      )
    ],
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: TextStyle(color: Pallete.kpBlue, fontSize: 22),
      labelStyle: CustomTextStyle.textPickUpLabel,
      hintText: hintext,
      contentPadding: EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
      // enabledBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10.0),
      //   borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
      // ),
      // focusedBorder: OutlineInputBorder(
      //   borderRadius: BorderRadius.circular(10.0),
      //   borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
      // ),
    ),
  );
}

Widget customTextFieldOrder(
  ValueChanged<String> onChanged,
  String label,
) {
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: "Put your order here",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldMerchant(
  ValueChanged<String> onChanged,
  Function onTap,
  String label,
  TextEditingController controller,
) {
  return TextFormField(
    controller: controller,
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.search,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: 'Merchant',
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
      suffixIcon: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.search,
        ),
      ),
    ),
  );
}

Widget customTextFieldSpecNotes(
  ValueChanged<String> onChanged,
  String label,
) {
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.go,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: "Type here",
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldNotes(
  ValueChanged<String> onChanged,
  String label,
) {
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.go,
    maxLines: 4,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: "Type here.....",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextNotesToRider(
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    textInputAction: TextInputAction.go,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,

      labelText: "Notes to rider",
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      // enabledBorder: InputBorder.none,
      // focusedBorder: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldPrice(
  ValueChanged<String> onChanged,
  String label,
) {
  return Container(
    height: 35,
    width: 30.0.w,
    child: TextFormField(
      textCapitalization: TextCapitalization.words,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      inputFormatters: [
        CurrencyTextInputFormatter(
          locale: 'en-PH',
          decimalDigits: 0,
          symbol: '₱',
        )
      ],
      decoration: InputDecoration(
        hintStyle: CustomTextStyle.textStyleGrey18,
        hintText: 'Price',
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: label,
        labelStyle: CustomTextStyle.textStyleGrey18,
        contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldItemCount(
  ValueChanged<String> onChanged,
  String label,
  FormFieldValidator<String> validator,
) {
  return Container(
    height: 35,
    width: 22.0.w,
    child: TextFormField(
      validator: validator,
      textCapitalization: TextCapitalization.words,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      style: CustomTextStyle.textfieldBlack18,
      textAlign: TextAlign.center,
      maxLength: 2,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        errorMaxLines: 2,
        errorStyle: TextStyle(),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpRed, width: 1.0),
        ),
        hintStyle: CustomTextStyle.textStyleGrey18,
        hintText: 'Item Count',
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelText: label,

        counterText: "",
        labelStyle: CustomTextStyle.textStyleGrey18,
        contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
        // enabledBorder: InputBorder.none,
        // focusedBorder: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget customTextFieldFeedback(
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    minLines: 10,
    maxLines: 15,
    style: TextStyle(
      color: Pallete.kpBlue,
    ),
    onChanged: (value) {},
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelStyle: CustomTextStyle.textPickUpLabel,
      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget customTextFieldFeedbackdelivered(
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    minLines: 5,
    maxLines: 15,
    style: TextStyle(color: Pallete.kpBlue, fontSize: 20),
    onChanged: (value) {},
    keyboardType: TextInputType.text,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      hintStyle: CustomTextStyle.textPickUpHint,
      labelStyle: CustomTextStyle.textPickUpLabel,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGrey, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpBlue, width: 1.0),
      ),
    ),
  );
}

Widget textFieldScheduledTimelineTile(
  String textController,
  Function onTap,
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    controller: TextEditingController(
      text: textController,
    ),
    onTap: onTap,
    style: TextStyle(color: Pallete.kpBlue),
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    maxLines: 3,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget textFieldScheduledEdit(
  String textController,
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    controller: TextEditingController(
      text: textController,
    ),
    style: TextStyle(color: Pallete.kpBlue),
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
      ),
    ),
  );
}

Widget textFieldEnterAmount(
  ValueChanged<String> onChanged,
  String hintext,
  double width,
  TextEditingController controller,
) {
  return Container(
    width: width,
    child: TextFormField(
      controller: controller,
      textInputAction: TextInputAction.next,
      style: CustomTextStyle.textStyleBlue20,
      onChanged: onChanged,
      autofocus: false,
      toolbarOptions: ToolbarOptions(),
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      textAlign: TextAlign.right,
      inputFormatters: [
        CurrencyTextInputFormatter(
          locale: 'en-PH',
          decimalDigits: 0,
          symbol: '₱',
        )
      ],
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textStyleGrey20,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}

Widget textFieldEnterAmountCOD(
  ValueChanged<String> onChanged,
  String hintext,
  double width,
  TextEditingController controller,
) {
  return Container(
    height: 40,
    width: width,
    child: TextFormField(
      controller: controller,
      textInputAction: TextInputAction.done,
      style: CustomTextStyle.textStyleBlue20,
      onChanged: onChanged,
      autofocus: false,
      toolbarOptions: ToolbarOptions(),
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.words,
      textAlign: TextAlign.left,
      inputFormatters: [
        CurrencyTextInputFormatter(
          locale: 'en-PH',
          decimalDigits: 0,
          symbol: '₱',
        )
      ],
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: CustomTextStyle.textStyleGrey20,
        labelStyle: CustomTextStyle.textPickUpLabel,
        hintText: hintext,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide:
              BorderSide(color: Pallete.kpGreyOkpGreypacity2, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: Pallete.kpYellow, width: 1.0),
        ),
      ),
    ),
  );
}
