import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_changer.dart';

class ThemeSwitchState extends State {
  bool switchControl = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Switch(
        onChanged: toggleSwitch,
        value: switchControl,
        activeColor: CustomColors().duskBlue,
        activeTrackColor: CustomColors().noroGrey,
        inactiveThumbColor: CustomColors().lureGrey,
        inactiveTrackColor: CustomColors().noroGrey,
      ),
    );
  }

  void toggleSwitch(bool value) {
    ThemeChanger _themeChanger =
        Provider.of<ThemeChanger>(context, listen: false);

    if (switchControl == false) {
      setState(() {
        switchControl = true;
      });
      print('Theme is Dark');

      _themeChanger.setTheme(CustomThemes.darkTheme.copyWith(
          textTheme:
              CustomThemes.darkTextTheme(CustomThemes.darkTheme.textTheme)));
    } else {
      setState(() {
        switchControl = false;
      });
      print('Theme is Light');

      _themeChanger.setTheme(CustomThemes.lightTheme.copyWith(
          textTheme:
              CustomThemes.lightTextTheme(CustomThemes.lightTheme.textTheme)));
    }
  }
}
