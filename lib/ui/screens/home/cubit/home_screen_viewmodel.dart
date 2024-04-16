// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/domain/entities/popular_movies_entity.dart';
import 'package:movies/domain/entities/recommendation_movies_entity.dart';
import 'package:movies/domain/entities/upcoming_movies_entity.dart';
import 'package:movies/domain/repos/home_repo_impl.dart';
import 'package:movies/domain/use_cases/popular_movies.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_states.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/browse_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/home_tab/home_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/search_tab.dart';
import 'package:movies/ui/screens/home/home_tabs/watch_list_tab/watch_list_tab.dart';

class HomeScreenViewModel extends Cubit<HomeScreenStates> {

  final PopularMoviesUseCase popularMoviesUseCase;
  final HomeRepoImpl homeRepoImpl;

  HomeScreenViewModel({required this.popularMoviesUseCase,required this.homeRepoImpl}) : super(const HomeScreenStates.initial());

  List<Widget> tabs = const [
    HomeTab(),
    SearchTab(),
    BrowseTab(),
    WatchListTab(),
  ];
  int selectedIndex = 0;

  void changeCurrentBottomNavBarTab(int newIndex) {
    selectedIndex = newIndex;
    emit(const HomeScreenStates.initial());
  }

  List<PopularMoviesEntity> popularMovies = [];
  List<UpcomingMoviesEntity> upcomingMovies = [];
  List<RecommendationMoviesEntity> recommendationMovies = [];

  getPopularMovies() async {
    emit(const HomeScreenStates.loadingPopularMovies());
    final movies = await homeRepoImpl.getPopularMovies();
    movies.whenOrNull(
      success: (movies) {
        print(movies.length);
        popularMovies = movies;
        emit(HomeScreenStates.loadedPopularMovies(popularMovies));
      },
      failure: (error) {
        print(error);
        emit(HomeScreenStates.error(error.failure.message ?? 'An error occurred during fetching popular movies'));
      },
    );
  }

  getUpcomingMovies() async {
    emit(const HomeScreenStates.loadingUpcomingMovies());
    final movies = await homeRepoImpl.getUpcomingMovies();
    movies.whenOrNull(
      success: (movies) {
        print(movies.length);
        upcomingMovies = movies;
        emit(HomeScreenStates.loadedUpcomingMovies(popularMovies));
      },
      failure: (error) {
        print(error);
        emit(HomeScreenStates.error(error.failure.message ?? 'An error occurred during fetching popular movies'));
      },
    );
  }

  getRecommendedMovies() async {
    emit(const HomeScreenStates.loadingRecommendedMovies());
    final movies = await homeRepoImpl.getRecommendationMovies();
    movies.whenOrNull(
      success: (movies) {
        print(movies.length);
        recommendationMovies = movies;
        emit(HomeScreenStates.loadedRecommendedMovies(popularMovies));
      },
      failure: (error) {
        print(error);
        emit(HomeScreenStates.error(error.failure.message ?? 'An error occurred during fetching popular movies'));
      },
    );
  }

}
