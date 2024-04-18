import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/di/di.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/browse_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/home_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/search_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/watch_list_tab/watch_list_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int index = 0;

  List<Widget> tabs = [
    BlocProvider.value(
      value: getIt<HomeScreenViewModel>(),
        child: const HomeTab(),
    ),
    BlocProvider.value(
      value: getIt<SearchCubit>(),
        child: const SearchTab(),
    ),
    BlocProvider.value(
      value: getIt<BrowseCubit>(),
        child: const BrowseTab(),
    ),
    const WatchListTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) {
          index = newIndex;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/home_icon.png')),
              label: 'HOME'),
          BottomNavigationBarItem(
              icon:
              ImageIcon(AssetImage('assets/images/search_icon.png')),
              label: 'SEARCH'),
          BottomNavigationBarItem(
              icon:
              ImageIcon(AssetImage('assets/images/browse_icon.png')),
              label: 'BROWSE'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/watch_icon.png')),
              label: 'WATCHLIST'),
        ],
      ),
      body: tabs[index],
    );
  }
}
