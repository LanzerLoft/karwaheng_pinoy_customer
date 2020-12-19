import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

import 'custom_TextField.dart';
import 'hexcolor.dart';

Widget customSwitch(Text title, bool value, ValueChanged<bool> onChanged) {
  return ListTileSwitch(
    switchScale: 0.9,
    value: value,
    onChanged: onChanged,
    visualDensity: VisualDensity.comfortable,
    switchType: SwitchType.cupertino,
    switchActiveColor: Pallete.kpBlue,
    switchInactiveColor: Pallete.kpGrey,
    title: title,
  );
}
