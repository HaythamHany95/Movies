import 'package:movies/networking/api/api_constants.dart';
import 'package:movies/networking/api/api_error_handler.dart';
import 'package:movies/networking/api/api_result.dart';
import 'package:movies/networking/api/api_service.dart';
import 'package:movies/networking/entities/movie_details_entity.dart';
import 'package:movies/networking/entities/recommendation_movies_entity.dart';
import 'package:movies/shared/string_constants.dart';

class MovieDetailsRepo {
  final ApiService apiService;

  MovieDetailsRepo({required this.apiService});

  Future<ApiResult<MovieDetailsEntity>> getMovieDetails(
      {required int movieId}) async {
    try {
      final response = await apiService.getMovieDetail(
        id: movieId,
        auth: ApiConstants.apiToken,
      );
      MovieDetailsEntity movieDetails = MovieDetailsEntity(
        duration: response.runtime.toString(),
        id: response.id ?? 0,
        title: response.title ?? 'Unknown',
        description: response.overview ?? 'Unknown',
        year: response.releaseDate?.year.toString() ?? 'Unknown',
        posterPath: '${StringConstants.imageBaseUrl}${response.posterPath}',
        backdropPath:
            '${StringConstants.imageBaseUrl}${response.backdropPath}',
        voteAverage: response.voteAverage.toString(),
        genres: response.genres!
            .map((genre) => GenreEntity(
                  id: genre.id ?? 0,
                  name: genre.name ?? 'Unknown',
                ))
            .toList(),
      );
      return ApiResult.success(movieDetails);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<RecommendationMoviesEntity>>> getSimilarMovies(
      {required int movieId}) async {
    try {
      final response = await apiService.getSimilarMovies(
        id: movieId,
        auth: ApiConstants.apiToken,
      );
      List<RecommendationMoviesEntity> similarMovies = response.results!
          .map(
            (movie) => RecommendationMoviesEntity(
              id: movie.id ?? 0,
              title: movie.title ?? 'Unknown',
              poster: '${StringConstants.imageBaseUrl}${movie.posterPath}',
              year: movie.releaseDate!.year.toString(),
              voteAverage: movie.voteAverage.toString(),
            ),
          )
          .toList();
      return ApiResult.success(similarMovies);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
