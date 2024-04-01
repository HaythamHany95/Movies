import 'package:movies/core/screens/category/category_screen.dart';
import 'package:movies/core/screens/details/movie_details_screen.dart';
import 'package:movies/core/screens/home/home_screen.dart';

var appRoutes = {
  HomeScreen.routeName: (_) => const HomeScreen(),
  MovieDetailsScreen.routeName: (_) => const MovieDetailsScreen(),
  CategoryScreen.routeName: (_) => const CategoryScreen()
};
