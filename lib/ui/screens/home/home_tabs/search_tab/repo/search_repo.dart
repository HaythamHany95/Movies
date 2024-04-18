import 'package:movies/networking/api/api_constants.dart';
import 'package:movies/networking/api/api_error_handler.dart';
import 'package:movies/networking/api/api_result.dart';
import 'package:movies/networking/api/api_service.dart';
import 'package:movies/networking/entities/search_entity.dart';
import 'package:movies/shared/string_constants.dart';

class SearchRepoImpl{
  final ApiService apiService;
  SearchRepoImpl({required this.apiService});

  Future<ApiResult<List<SearchEntity>>> search({required String query}) async {
    try {
      final response = await apiService.searchMovies(query: query, auth: ApiConstants.apiToken,);
      List<SearchEntity> searchResult = response.results!
          .map(
            (movie) => SearchEntity(
              id: movie.id ?? 0,
              title: movie.title ?? 'Unknown',
              poster: '${StringConstants.imageBaseUrl}${movie.posterPath}',
              year: movie.releaseDate!.year.toString(),
              description: movie.overview ?? 'Unknown',
            ),
          )
          .toList();
      return ApiResult.success(searchResult);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}