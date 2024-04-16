// ignore_for_file: avoid_print

import 'package:movies/data/api/api_constants.dart';
import 'package:movies/data/api/api_error_handler.dart';
import 'package:movies/data/api/api_result.dart';
import 'package:movies/data/api/api_service.dart';
import 'package:movies/domain/entities/popular_movies_entity.dart';

class HomeRepoImpl{
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  Future<ApiResult<List<PopularMoviesEntity>>> getPopularMovies() async {
    try {
      final response = await apiService.getPopularMovies(ApiConstants.apiToken);
      List<PopularMoviesEntity> popularMovies = response.results!
          .map((movie) => PopularMoviesEntity(
                id: movie.id!,
                title: movie.title!,
                year: movie.releaseDate!.year.toString(),
                poster: movie.posterPath!,
              ),)
          .toList();
      return ApiResult.success(popularMovies);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}