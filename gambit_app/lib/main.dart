import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gambit_app/drawer/cmd_nav%20bloc.dart';
import 'package:gambit_app/pages/dashboardpage.dart';
import 'drawer/cmd_drawer.dart';
import 'global/theme/theme.dart';
import 'pages/searchpage.dart';

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
                  return SearchPage();
                } else if (state is Errors) {
                  return SearchPage();
                } else if (state is Settings) {
                  return SearchPage();
                } else {
                  return DashBoardPage();
                }
              },
            ),
            CmdDrawer(),
          ],
        ),
      ),

      /*Stack(
        children: <Widget>[
          Container(
            color: Color(0xFF4AC8EA),
          ),
          CmdDrawer(),
        ],
      ),*/
    );
  }
}
