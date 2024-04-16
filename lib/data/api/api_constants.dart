class ApiConstants{
  static const String apiKey = "Bearer 677e09e4a2857676a3d8bbbfe51ae184";
  static const String apiToken = "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2NzdlMDllNGEyODU3Njc2YTNkOGJiYmZlNTFhZTE4NCIsInN1YiI6IjY2MWVhOWM5ZDc1YmQ2MDE0OTMwZDQxNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.f9mrCr0GLGKQUZYzHce_ygJ7dUbiJjBQNPV1VBD59OQ";
  static const String baseUrl = "https://api.themoviedb.org/3/";
  static const String popularMovies = "movie/popular";
  static const String upcomingMovies = "movie/upcoming";
  static const String recommendationMovies = "movie/top_rated";
  static const String movieDetail = "movie/{id}";
  static const String similarMovie = "movie/{id}/similar";
  static const String searchMovie = "search/movie";
  static const String genre = "genre/movie/list";
  static const String discoverMoviesByGenre = "discover/movie";

}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}