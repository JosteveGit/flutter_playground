import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'drawer/cmd_drawer.dart';
import 'drawer/cmd_nav bloc.dart';

import 'global/theme/theme_changer.dart';
import 'pages/dashboardpage.dart';
import 'pages/errorpage.dart';
import 'pages/notificationspage.dart';
import 'pages/searchpage.dart';
import 'pages/settingspage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<ThemeChanger>(
      create: (_) => ThemeChanger(CustomThemes.lightTheme.copyWith(
          textTheme:
              CustomThemes.lightTextTheme(CustomThemes.lightTheme.textTheme))),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      theme: theme.getTheme(),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'MD Drawer',
            style: TextStyle(color: CustomColors().novaWhite),
          ),
        ),
        body: BlocProvider<CmdNavBloc>(
          create: (context) => CmdNavBloc(),
          child: Stack(
            children: <Widget>[
              BlocBuilder<CmdNavBloc, NavigationStates>(
                builder: (context, state) {
                  if (state is Dashboard) {
                    return DashBoardPage();
                  } else if (state is Search) {
                    return SearchPage();
                  } else if (state is Notifications) {
                    return NotificationsPage();
                  } else if (state is Errors) {
                    return ErrorsPage();
                  } else if (state is Settings) {
                    return SettingsPage();
                  } else {
                    return DashBoardPage();
                  }
                },
              ),
              CmdDrawer(),
            ],
          ),
        ),
      ),
    );
  }
}
