import 'package:flutter_bloc/flutter_bloc.dart';

enum NavigationEvents {
  DashboardClickedEvent,
  SearchClickedEvent,
  NotificationsClickedEvent,
  ErrorsClickedEvent,
  SettingsClickedEvent,
}

abstract class NavigationStates {}

class Dashboard extends NavigationStates {}

class Search extends NavigationStates {}

class Notifications extends NavigationStates {}

class Errors extends NavigationStates {}

class Settings extends NavigationStates {}

class CmdNavBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => Dashboard();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DashboardClickedEvent:
        yield Dashboard();
        break;
      case NavigationEvents.SearchClickedEvent:
        yield Search();
        break;
      case NavigationEvents.NotificationsClickedEvent:
        yield Notifications();
        break;
      case NavigationEvents.ErrorsClickedEvent:
        yield Errors();
        break;
      case NavigationEvents.SettingsClickedEvent:
        yield Settings();
        break;
    }
  }
}
