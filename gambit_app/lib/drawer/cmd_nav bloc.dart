import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/dashboardpage.dart';
import '../pages/searchpage.dart';
import '../pages/notificationspage.dart';
import '../pages/errorpage.dart';
import '../pages/settingspage.dart';

enum NavigationEvents {
  DashboardClickedEvent,
  SearchClickedEvent,
  NotificationsClickedEvent,
  ErrorsClickedEvent,
  SettingsClickedEvent,
}

abstract class NavigationStates {}

class CmdNavBloc extends Bloc<NavigationEvents, NavigationStates> {

  @override
  NavigationStates get initialState => DashBoardPage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield DashBoardPage();
        break;
      case NavigationEvents.SearchClickedEvent:
        yield SearchPage();
        break;
      case NavigationEvents.NotificationsClickedEvent:
        yield NotificationsPage();
        break;
      case NavigationEvents.ErrorsClickedEvent:
        yield ErrorsPage();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield SettingsPage();
        break;
    }
  }


}