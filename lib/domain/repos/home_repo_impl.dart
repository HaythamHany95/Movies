// ignore_for_file: avoid_print
import 'package:movies/networking/api/api_constants.dart';
import 'package:movies/networking/api/api_error_handler.dart';
import 'package:movies/networking/api/api_result.dart';
import 'package:movies/networking/api/api_service.dart';
import 'package:movies/networking/entities/popular_movies_entity.dart';
import 'package:movies/networking/entities/recommendation_movies_entity.dart';
import 'package:movies/networking/entities/upcoming_movies_entity.dart';
import 'package:movies/shared/string_constants.dart';

class HomeRepoImpl {

  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  Future<ApiResult<List<PopularMoviesEntity>>> getPopularMovies() async {
    try {
      final response = await apiService.getPopularMovies(ApiConstants.apiToken);
      List<PopularMoviesEntity> popularMovies = response.results!
          .map(
            (movie) => PopularMoviesEntity(
              id: movie.id!,
              title: movie.title!,
              year: movie.releaseDate!.year.toString(),
              poster: '${AppStringConstants.imageBaseUrl}${movie.posterPath!}',
              backgroundPoster:
                  '${AppStringConstants.imageBaseUrl}${movie.backdropPath!}',
            ),
          )
          .toList();
      return ApiResult.success(popularMovies);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<UpcomingMoviesEntity>>> getUpcomingMovies() async {
    try {
      final response =
          await apiService.getUpcomingMovies(ApiConstants.apiToken);
      List<UpcomingMoviesEntity> upcomingMovies = response.results!
          .map(
            (movie) => UpcomingMoviesEntity(
              id: movie.id ?? 11575,
              poster: '${AppStringConstants.imageBaseUrl}${movie.posterPath!}',
              title: movie.title ?? 'Null',
              year: movie.releaseDate!.year.toString(),
            ),
          )
          .toList();
      return ApiResult.success(upcomingMovies);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<RecommendationMoviesEntity>>>
      getRecommendationMovies() async {
    try {
      final response =
          await apiService.getRecommendationMovies(ApiConstants.apiToken);
      List<RecommendationMoviesEntity> recommendationMovies = response.results!
          .map(
            (movie) => RecommendationMoviesEntity(
              id: movie.id!,
              title: movie.title!,
              year: movie.releaseDate!.year.toString(),
              poster: '${AppStringConstants.imageBaseUrl}${movie.posterPath!}',
              voteAverage: movie.voteAverage!.toString(),
            ),
          )
          .toList();
      return ApiResult.success(recommendationMovies);
    } catch (error) {
      print(error.toString());
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
