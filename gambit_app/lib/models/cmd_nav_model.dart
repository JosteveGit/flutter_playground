import 'package:flutter/material.dart';

class CmdNavModel {
  String title;
  IconData icon;

  CmdNavModel({this.title, this.icon});
}

List<CmdNavModel> navigationItems = [
  CmdNavModel(title: 'Dashboard', icon: Icons.insert_chart),
  CmdNavModel(title: 'Search', icon: Icons.search),
  CmdNavModel(title: 'Notifications', icon: Icons.error),
  CmdNavModel(title: 'Errors', icon: Icons.notifications),
  CmdNavModel(title: 'Settings', icon: Icons.settings),
];