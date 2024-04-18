// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:movies/networking/api/api_constants.dart';
import 'package:movies/networking/models/categories_model.dart';
import 'package:movies/networking/models/movie_details_response.dart';
import 'package:movies/networking/models/movie_model.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //------------------ Home View --------------------------

  @GET(ApiConstants.popularMovies)
  Future<MovieResponse> getPopularMovies(@Header('Authorization') String auth);

  @GET(ApiConstants.upcomingMovies)
  Future<MovieResponse> getUpcomingMovies(@Header('Authorization') String auth);

  @GET(ApiConstants.recommendationMovies)
  Future<MovieResponse> getRecommendationMovies(
      @Header('Authorization') String auth);

  //------------------ Movie Detail View ------------------

  @GET(ApiConstants.movieDetail)
  Future<MovieDetailsResponse> getMovieDetail({
    @Path('id') required int id,
    @Header('Authorization') required String auth,
  });

  @GET(ApiConstants.similarMovie)
  Future<MovieResponse> getSimilarMovies({
    @Path('id') required int id,
    @Header('Authorization') required String auth,
  });

  //------------------ Search View ------------------------

  @GET(ApiConstants.searchMovie)
  Future<MovieResponse> searchMovies({
    @Query('query') required String query,
    @Header('Authorization') required String auth,
  });

  //------------------ Categories ---------------------

  @GET(ApiConstants.genre)
  Future<GenresResponse> getGenres({
    @Header('Authorization') required String auth,
  });

  @GET(ApiConstants.discoverMoviesByGenre)
  Future<MovieResponse> getMoviesByGenres({
    @Query('with_genres') required int genreID,
    @Header('Authorization') required String auth,
  });


}
