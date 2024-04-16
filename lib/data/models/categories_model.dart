import 'package:json_annotation/json_annotation.dart';
import 'package:movies/data/models/movie_details_response.dart';

part 'categories_model.g.dart';

@JsonSerializable(createToJson: false)
class GenresResponse {
  GenresResponse({
    required this.genres,
  });

  final List<Genre>? genres;
  static const String genresKey = "genres";


  factory GenresResponse.fromJson(Map<String, dynamic> json) => _$GenresResponseFromJson(json);

}