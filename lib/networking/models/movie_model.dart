import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(createToJson: false)
class MovieResponse {
  MovieResponse({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  final num? page;
  static const String pageKey = "page";

  final List<Result>? results;
  static const String resultsKey = "results";


  @JsonKey(name: 'total_pages')
  final num? totalPages;
  static const String totalPagesKey = "total_pages";


  @JsonKey(name: 'total_results')
  final num? totalResults;
  static const String totalResultsKey = "total_results";


  factory MovieResponse.fromJson(Map<String, dynamic> json) => _$MovieResponseFromJson(json);

}

@JsonSerializable(createToJson: false)
class Result {
  Result({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool? adult;
  static const String adultKey = "adult";


  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  static const String backdropPathKey = "backdrop_path";


  @JsonKey(name: 'genre_ids')
  final List<num>? genreIds;
  static const String genreIdsKey = "genre_ids";

  final int? id;
  static const String idKey = "id";


  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  static const String originalLanguageKey = "original_language";


  @JsonKey(name: 'original_title')
  final String? originalTitle;
  static const String originalTitleKey = "original_title";

  final String? overview;
  static const String overviewKey = "overview";

  final num? popularity;
  static const String popularityKey = "popularity";


  @JsonKey(name: 'poster_path')
  final String? posterPath;
  static const String posterPathKey = "poster_path";


  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  static const String releaseDateKey = "release_date";

  final String? title;
  static const String titleKey = "title";

  final bool? video;
  static const String videoKey = "video";


  @JsonKey(name: 'vote_average')
  final num? voteAverage;
  static const String voteAverageKey = "vote_average";


  @JsonKey(name: 'vote_count')
  final num? voteCount;
  static const String voteCountKey = "vote_count";


  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

}
