import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/di/di.dart';
import 'package:movies/ui/screens/category/category_screen.dart';
import 'package:movies/ui/screens/details/cubit/movie_details_cubit.dart';
import 'package:movies/ui/screens/details/movie_details_screen.dart';
import 'package:movies/ui/screens/home/home_screen.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/movies_list.dart';

// var appRoutes = {
//   HomeScreen.routeName: (_) => const HomeScreen(),
//   //MovieDetailsScreen.routeName: (_) => const MovieDetailsScreen(),
//   CategoryScreen.routeName: (_) => const CategoryScreen(),
//   MoviesList.routeName: (_) => const MoviesList()
// };


class AppRoutes{

  static const String homeScreen = '/';
  static const String movieDetailsScreen = '/movie_details_screen';
  static const String categoryScreen = '/category_screen';
  static const String moviesList = '/movies_list';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case movieDetailsScreen:
        var id = settings.arguments as int;
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<MovieDetailsCubit>()..getMovieDetails(id)..getSimilarMovies(id),
              child: MovieDetailsScreen(id: id,),),
        );

      case categoryScreen:
        return MaterialPageRoute(
          builder: (context) => const CategoryScreen(),
        );

        case moviesList:
          var id = settings.arguments as int;
          return MaterialPageRoute(
          builder: (context) => MoviesList(id: id,),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}