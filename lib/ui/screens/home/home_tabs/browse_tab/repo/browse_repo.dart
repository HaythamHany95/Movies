import 'package:movies/networking/api/api_constants.dart';
import 'package:movies/networking/api/api_error_handler.dart';
import 'package:movies/networking/api/api_result.dart';
import 'package:movies/networking/api/api_service.dart';
import 'package:movies/networking/entities/search_entity.dart';
import 'package:movies/networking/models/movie_details_response.dart';
import 'package:movies/shared/string_constants.dart';

class BrowseRepo{

  final ApiService apiService;
  BrowseRepo({required this.apiService});

  Future<ApiResult<List<Genre>>> getGenres() async {
    try {
      final response = await apiService.getGenres(auth: ApiConstants.apiToken);
      List<Genre> genres = response.genres!.map((genre) {
        return Genre(
          id: genre.id,
          name: genre.name,
        );
      }).toList();
      return ApiResult.success(genres);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

  Future<ApiResult<List<SearchEntity>>> getMovieByGenre({ required int id}) async {
    try {
      final response = await apiService.getMoviesByGenres(genreID: id, auth: ApiConstants.apiToken);
      List<SearchEntity> moviesByGenre = response.results!.map((movie) {
        return SearchEntity(
          id: movie.id ?? 0,
          title: movie.title ?? '',
          description: movie.overview ?? '',
          year: movie.releaseDate!.year.toString(),
          poster: '${AppStringConstants.imageBaseUrl}${movie.posterPath}',
        );
      }).toList();
      return ApiResult.success(moviesByGenre);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

}