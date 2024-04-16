// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:movies/data/api/api_constants.dart';
import 'package:movies/data/models/movie_model.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  //------------------ GET POPULAR MOVIES ------------------

  @GET(ApiConstants.popularMovies)
  Future<MovieResponse> getPopularMovies(@Header('Authorization') String auth);

  @GET(ApiConstants.upcomingMovies)
  Future<MovieResponse> getUpcomingMovies(@Header('Authorization') String auth);

  @GET(ApiConstants.recommendationMovies)
  Future<MovieResponse> getRecommendationMovies(@Header('Authorization') String auth);


}