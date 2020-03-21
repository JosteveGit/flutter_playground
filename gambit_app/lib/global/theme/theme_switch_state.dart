import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:provider/provider.dart';

import 'theme_changer.dart';

class ThemeSwitchState extends State {
  bool switchControl = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Transform.scale(
        scale: 1.5,
        child: Switch(
          onChanged: toggleSwitch,
          value: switchControl,
          activeColor: CustomColors().skyBlue,
          activeTrackColor: CustomColors().loreGrey,
          inactiveThumbColor: CustomColors().limeGreen,
          inactiveTrackColor: CustomColors().loreGrey,
        ),
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

      // This will change the background color of the statusbar.
      //FlutterStatusbarcolor.setStatusBarColor(CustomColors().backGroundDark);

      // This will change the statusbar text color.
      FlutterStatusbarcolor.setStatusBarWhiteForeground(true);

      _themeChanger.setTheme(CustomThemes.darkTheme.copyWith(
          textTheme:
              CustomThemes.darkTextTheme(CustomThemes.darkTheme.textTheme)));
    } else {
      setState(() {
        switchControl = false;
      });
      print('Theme is Light');

      // This will change the background color of the statusbar.
      //FlutterStatusbarcolor.setStatusBarColor(CustomColors().backGroundLight);

      // This will change the statusbar text color.
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

      _themeChanger.setTheme(CustomThemes.lightTheme.copyWith(
          textTheme:
              CustomThemes.lightTextTheme(CustomThemes.lightTheme.textTheme)));
    }
  }
}
