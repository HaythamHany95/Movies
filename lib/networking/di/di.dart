import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:movies/domain/repos/home_repo_impl.dart';
import 'package:movies/domain/use_cases/popular_movies.dart';
import 'package:movies/networking/api/api_service.dart';
import 'package:movies/networking/api/dio_factory.dart';
import 'package:movies/ui/screens/details/cubit/movie_details_cubit.dart';
import 'package:movies/ui/screens/details/repo/movie_details_repo.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_cubit.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/repo/search_repo.dart';

final getIt = GetIt.instance;

Future<void> setUpSetIt() async {
  // dio && api service
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // home

  getIt.registerLazySingleton<HomeRepoImpl>(() => HomeRepoImpl(apiService: getIt<ApiService>()) );
  getIt.registerLazySingleton<PopularMoviesUseCase>(() => PopularMoviesUseCase(homeRepoImpl: getIt<HomeRepoImpl>()));
  getIt.registerLazySingleton<HomeScreenViewModel>(() => HomeScreenViewModel(
      popularMoviesUseCase: getIt<PopularMoviesUseCase>(), homeRepoImpl: getIt<HomeRepoImpl>(),),
  );

  // details

  getIt.registerLazySingleton<MovieDetailsRepo>(() => MovieDetailsRepo(apiService: getIt<ApiService>()));
  getIt.registerLazySingleton<MovieDetailsCubit>(() => MovieDetailsCubit(movieDetailsRepo: getIt<MovieDetailsRepo>()));

  //search

  getIt.registerLazySingleton<SearchRepoImpl>(() => SearchRepoImpl(apiService: getIt<ApiService>()));
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(searchRepoImpl: getIt<SearchRepoImpl>()));

}