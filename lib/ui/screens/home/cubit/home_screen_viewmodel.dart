import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/browse_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/home_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/search_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/watch_list_tab/watch_list_tab.dart';

class HomeScreenViewModel extends Cubit<HomeScreenStates> {
  HomeScreenViewModel() : super(HomeScreenInitialState());

  List<Widget> tabs = const [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];
  int selectedIndex = 0;

  void changeCurrentBottomNavBarTab(int newIndex) {
    emit(HomeScreenInitialState());
    selectedIndex = newIndex;
  }
}
