import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:kp_mobile/screen/pages/user_page/Dashboard/custom_widget/custom_pageRoute.dart';

Widget customChecbox(ValueChanged<bool> onChanged, bool value, String data,
    BuildContext context, Function gesture) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Checkbox(
        onChanged: onChanged,
        value: value,
        activeColor: Pallete.kpBlue,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      Text(
        data,
      ),
      GestureDetector(
        onTap: gesture,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.help,
            size: 20,
            color: Pallete.kpGrey,
          ),
        ),
      ),
    ],
  );
}

Widget customChecboxNoIcon(
  ValueChanged<bool> onChanged,
  bool value,
  String data,
  Function onTap,
) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      GestureDetector(
        onTap: onTap,
        child: Checkbox(
          onChanged: onChanged,
          value: value,
          activeColor: Pallete.kpBlue,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
      Container(
        width: 250,
        child: Text(
          data,
        ),
      ),
    ],
  );
}

Widget customChecboxConfirm(
  ValueChanged<bool> onChanged,
  bool value,
  String data,
) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.start,
    children: [
      Checkbox(
        onChanged: onChanged,
        value: value,
        activeColor: Pallete.kpBlue,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      Container(
        width: 250,
        child: Text(
          data,
          textAlign: TextAlign.center,
          style: CustomTextStyle.textStyleGrey13,
        ),
      ),
    ],
  );
}

Widget customRadiobutton(
  ValueChanged<bool> onChanged,
  bool value,
  String data,
  bool object,
) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Radio(value: object, groupValue: value, onChanged: onChanged),
      Text(
        data,
      ),
    ],
  );
}
