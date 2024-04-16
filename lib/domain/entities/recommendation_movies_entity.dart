class RecommendationMoviesEntity {
  final int id;
  final String title;
  final String poster;
  final String year;
  final String voteAverage;
  final String rated = 'R';

  RecommendationMoviesEntity({
    required this.id,
    required this.title,
    required this.poster,
    required this.year,
    required this.voteAverage,
  });

}