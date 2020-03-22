import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gambit_app/global/theme/theme.dart';
import 'package:gambit_app/models/cmd_nav_model.dart';
import 'package:gambit_app/utils/Constants.dart';

import 'cmd_nav bloc.dart';
import 'collapsing_list_tile.dart';

class CmdDrawer extends StatefulWidget {
  @override
  CmdDrawerState createState() {
    return new CmdDrawerState();
  }
}

class CmdDrawerState extends State<CmdDrawer>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  AnimationController _animationController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    widthAnimation = Tween<double>(
      begin: Constants.minWidth,
      end: Constants.maxWidth,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    final CmdNavBloc bloc = BlocProvider.of<CmdNavBloc>(context);

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, widget) => getWidget(bloc, context, widget),
    );
  }

  Widget getWidget(CmdNavBloc bloc, context, widget) {
    return Material(
      elevation: 80.0,
      child: Container(
        width: widthAnimation.value,
        color: drawerBackgroundColor,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: Constants.containerMargin,
              ),
              child: CollapsingListTile(
                title: 'Jaser Jsk',
                icon: Icons.person,
                animationController: _animationController,
              ),
            ),
            Divider(color: Colors.grey, height: 20.0),
            SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(height: 12.0);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        bloc.add(navigationItems[counter].navigationEvent);
                        currentSelectedIndex = counter;

                        isCollapsed = !isCollapsed;
                        _animationController.reverse();
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animationController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animationController.reverse()
                      : _animationController.forward();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.menu_close,
                progress: _animationController,
                color: Colors.white30,
                size: 40.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
