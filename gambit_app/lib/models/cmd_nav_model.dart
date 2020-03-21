import 'package:flutter/material.dart';
import 'package:gambit_app/drawer/cmd_nav%20bloc.dart';

class CmdNavModel {
  String title;
  IconData icon;
  NavigationEvents navigationEvent;

  CmdNavModel({this.title, this.icon, this.navigationEvent});
}

List<CmdNavModel> navigationItems = [
  CmdNavModel(
    title: 'Dashboard',
    icon: Icons.insert_chart,
    navigationEvent: NavigationEvents.DashboardClickedEvent
  ),
  CmdNavModel(
    title: 'Search',
    icon: Icons.search,
    navigationEvent: NavigationEvents.SearchClickedEvent
  ),
  CmdNavModel(
    title: 'Notifications',
    icon: Icons.error,
    navigationEvent: NavigationEvents.NotificationsClickedEvent
  ),
  CmdNavModel(
    title: 'Errors',
    icon: Icons.notifications,
    navigationEvent: NavigationEvents.ErrorsClickedEvent
  ),
  CmdNavModel(
    title: 'Settings',
    icon: Icons.settings,
    navigationEvent: NavigationEvents.SettingsClickedEvent
  ),
];
