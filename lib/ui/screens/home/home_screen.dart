import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/di.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final _viewModel = HomeScreenViewModel();
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenViewModel>(
      create: (context) => getIt<HomeScreenViewModel>()..getPopularMovies(),
      child: BlocBuilder<HomeScreenViewModel, HomeScreenStates>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: context.read<HomeScreenViewModel>().selectedIndex,
              onTap: (newIndex) {
                context.read<HomeScreenViewModel>().changeCurrentBottomNavBarTab(newIndex);
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
            body: context.read<HomeScreenViewModel>().tabs[context.read<HomeScreenViewModel>().selectedIndex],
          );
        },
      ),
    );
  }
}
