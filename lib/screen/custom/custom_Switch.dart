import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

import 'custom_TextField.dart';
import 'hexcolor.dart';

Widget customSwitchCupertino(
    Text title, bool value, ValueChanged<bool> onChanged) {
  return Column(
    children: [
      ListTileSwitch(
        switchScale: 0.7,
        value: value,
        onChanged: onChanged,
        visualDensity: VisualDensity.comfortable,
        switchType: SwitchType.cupertino,
        switchActiveColor: Pallete.kpBlue,
        switchInactiveColor: Pallete.kpGrey,
        title: title,
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Divider(),
      ),
    ],
  );
}

Widget customSwitchMaterial(
    Text title, bool value, ValueChanged<bool> onChanged) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        ListTileSwitch(
          switchScale: 0.7,
          value: value,
          onChanged: onChanged,
          visualDensity: VisualDensity.comfortable,
          switchType: SwitchType.material,
          switchActiveColor: Pallete.kpBlue,
          switchInactiveColor: Pallete.kpGrey,
          title: title,
          contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
        ),
        Divider(),
      ],
    ),
  );
}
