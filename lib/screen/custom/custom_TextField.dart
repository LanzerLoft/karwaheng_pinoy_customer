import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kp_mobile/provider/user_provider/user_provider.dart';
import 'package:kp_mobile/screen/custom/custom_Button.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'hexcolor.dart';
import 'textStyle.dart';

void setState(Null Function() param0) {}

Widget usernameField(
  ValueChanged<String> onChanged,
  FormFieldValidator<String> validator,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      validator: validator,
      style: CustomTextStyle.textfield16,
      textCapitalization: TextCapitalization.words,
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintStyle: CustomTextStyle.textStyleGrey18,
        hintText: 'Username or Cellphone number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
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

Widget passcodeField(BuildContext context, ValueChanged<String> onChanged,
    FormFieldValidator<String> validator) {
  final userProvider = Provider.of<UserProvider>(context);
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      toolbarOptions: ToolbarOptions(),
      validator: validator,
      style: CustomTextStyle.textfield,
      onChanged: onChanged,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.go,
      maxLength: 4,
      decoration: InputDecoration(
        hintStyle: CustomTextStyle.textStyleGrey18,
        hintText: 'Passcode',
        counterText: "",
        contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
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
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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

Widget customTextFieldResetViaEmail(
  ValueChanged<String> onChanged,
  String hintext,
  String labelText,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
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

Widget customTextFieldResetViaPhone(
  ValueChanged<String> onChanged,
  String hintext,
  String labelText,
) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      enableSuggestions: true,
      style: TextStyle(color: Pallete.kpBlue),
      onChanged: onChanged,
      autofocus: false,
      keyboardType: TextInputType.number,
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
        hintText: 'Enter Promo Code',
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

Widget customTextFieldGcashAccColumn(
    ValueChanged<String> onChanged, Color color, String hintText) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Pallete.kpGreyOkpGreypacity,
    ),
    child: TextFormField(
      style: CustomTextStyle.textfieldBlack18,
      onChanged: onChanged,
      keyboardType: TextInputType.phone,
      maxLength: 10,
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

Widget customTextFieldAmmount(ValueChanged<String> onChanged, String hintext,
    TextEditingController controller, Function onTap) {
  return TextField(
    onTap: onTap,
    controller: controller,
    textAlign: TextAlign.left,
    textDirection: TextDirection.rtl,
    style: TextStyle(color: Pallete.kpBlue, fontSize: 22),
    onChanged: onChanged,
    keyboardType: TextInputType.number,
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
    maxLines: 3,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: "Put your order here",
      floatingLabelBehavior: FloatingLabelBehavior.always,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
  String label,
) {
  return TextFormField(
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
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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
  return TextFormField(
    textCapitalization: TextCapitalization.words,
    onChanged: onChanged,
    autofocus: false,
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
      hintStyle: CustomTextStyle.textStyleGrey18,
      hintText: 'Price',
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      labelText: label,
      labelStyle: CustomTextStyle.textStyleGrey18,
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
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

Widget customTextFieldFeedback(
  ValueChanged<String> onChanged,
) {
  return TextFormField(
    minLines: 10,
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
