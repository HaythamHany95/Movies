import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:movies/data/api/api_service.dart';
import 'package:movies/data/api/dio_factory.dart';
import 'package:movies/domain/repos/home_repo_impl.dart';
import 'package:movies/domain/use_cases/popular_movies.dart';
import 'package:movies/ui/screens/home/cubit/home_screen_viewmodel.dart';

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
}