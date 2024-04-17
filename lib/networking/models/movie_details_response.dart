
import 'package:json_annotation/json_annotation.dart';
part 'movie_details_response.g.dart';

@JsonSerializable(createToJson: false)
class MovieDetailsResponse {
  MovieDetailsResponse({
    required this.adult,
    required this.backdropPath,
    required this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originCountry,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
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


  @JsonKey(name: 'belongs_to_collection')
  final dynamic belongsToCollection;
  static const String belongsToCollectionKey = "belongs_to_collection";

  final num? budget;
  static const String budgetKey = "budget";

  final List<Genre>? genres;
  static const String genresKey = "genres";

  final String? homepage;
  static const String homepageKey = "homepage";

  final int? id;
  static const String idKey = "id";


  @JsonKey(name: 'imdb_id')
  final String? imdbId;
  static const String imdbIdKey = "imdb_id";


  @JsonKey(name: 'origin_country')
  final List<String>? originCountry;
  static const String originCountryKey = "origin_country";


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


  @JsonKey(name: 'production_companies')
  final List<ProductionCompany>? productionCompanies;
  static const String productionCompaniesKey = "production_companies";


  @JsonKey(name: 'production_countries')
  final List<ProductionCountry>? productionCountries;
  static const String productionCountriesKey = "production_countries";


  @JsonKey(name: 'release_date')
  final DateTime? releaseDate;
  static const String releaseDateKey = "release_date";

  final num? revenue;
  static const String revenueKey = "revenue";

  final num? runtime;
  static const String runtimeKey = "runtime";


  @JsonKey(name: 'spoken_languages')
  final List<SpokenLanguage>? spokenLanguages;
  static const String spokenLanguagesKey = "spoken_languages";

  final String? status;
  static const String statusKey = "status";

  final String? tagline;
  static const String taglineKey = "tagline";

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


  factory MovieDetailsResponse.fromJson(Map<String, dynamic> json) => _$MovieDetailsResponseFromJson(json);

}

@JsonSerializable(createToJson: false)
class Genre {
  Genre({
    required this.id,
    required this.name,
  });

  final int? id;
  static const String idKey = "id";

  final String? name;
  static const String nameKey = "name";


  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

}

@JsonSerializable(createToJson: false)
class ProductionCompany {
  ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  final int? id;
  static const String idKey = "id";


  @JsonKey(name: 'logo_path')
  final String? logoPath;
  static const String logoPathKey = "logo_path";

  final String? name;
  static const String nameKey = "name";


  @JsonKey(name: 'origin_country')
  final String? originCountry;
  static const String originCountryKey = "origin_country";


  factory ProductionCompany.fromJson(Map<String, dynamic> json) => _$ProductionCompanyFromJson(json);

}

@JsonSerializable(createToJson: false)
class ProductionCountry {
  ProductionCountry({
    required this.iso31661,
    required this.name,
  });

  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  static const String iso31661Key = "iso_3166_1";

  final String? name;
  static const String nameKey = "name";


  factory ProductionCountry.fromJson(Map<String, dynamic> json) => _$ProductionCountryFromJson(json);

}

@JsonSerializable(createToJson: false)
class SpokenLanguage {
  SpokenLanguage({
    required this.englishName,
    required this.iso6391,
    required this.name,
  });

  @JsonKey(name: 'english_name')
  final String? englishName;
  static const String englishNameKey = "english_name";


  @JsonKey(name: 'iso_639_1')
  final String? iso6391;
  static const String iso6391Key = "iso_639_1";

  final String? name;
  static const String nameKey = "name";


  factory SpokenLanguage.fromJson(Map<String, dynamic> json) => _$SpokenLanguageFromJson(json);

}

