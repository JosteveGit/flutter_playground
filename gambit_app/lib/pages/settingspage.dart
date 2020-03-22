import 'package:flutter/material.dart';
import 'package:gambit_app/utils/Constants.dart';
import 'package:gambit_app/global/theme/theme_switch_widget.dart';
import 'package:gambit_app/utils/screensize_reducers.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Column(children: <Widget>[])), /* Do not remove! */
        Container(
          width: screenSize(context).width - Constants.minWidth,
          padding: EdgeInsets.symmetric(horizontal: Constants.containerPadding),
          //color: Colors.purple[300],
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Text('Activate Night Mode',
                            style: Theme.of(context).textTheme.title),
                      ],
                    ),
                  ),
                  ThemeSwitch(),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
