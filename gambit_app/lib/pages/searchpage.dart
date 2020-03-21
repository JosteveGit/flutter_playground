import 'package:flutter/material.dart';

import '../drawer/cmd_nav%20bloc.dart';

class SearchPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Search',
        //style: Theme.of(context).textTheme.display1
      ),
    );
  }
}