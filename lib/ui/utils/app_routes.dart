import 'package:movies/ui/screens/category/category_screen.dart';
import 'package:movies/ui/screens/details/movie_details_screen.dart';
import 'package:movies/ui/screens/home/home_screen.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/movies_list.dart';

var appRoutes = {
  HomeScreen.routeName: (_) => const HomeScreen(),
  MovieDetailsScreen.routeName: (_) => const MovieDetailsScreen(
    movieId: 11575,
  ),
  CategoryScreen.routeName: (_) => const CategoryScreen(),
  MoviesList.routeName: (_) => const MoviesList(
  )
};
