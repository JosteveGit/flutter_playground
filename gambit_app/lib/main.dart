import 'package:flutter/material.dart';

import 'drawer/cmd_drawer.dart';
import 'global/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text('MD Drawer'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFF4AC8EA),
          ),
          CmdDrawer(),
        ],
      ),
    );
  }
}
