import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/padding.dart';

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
) {
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
