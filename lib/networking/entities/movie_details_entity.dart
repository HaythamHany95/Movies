class MovieDetailsEntity {
  final int id;
  final String title;
  final String description;
  final String year;
  final String posterPath;
  final String backdropPath;
  final double voteAverage;
  final List<GenreEntity> genres;
  final String rated = 'PG-13';
  final String duration;

  MovieDetailsEntity( {
    required this.duration,
    required this.id,
    required this.title,
    required this.description,
    required this.year,
    required this.posterPath,
    required this.backdropPath,
    required this.voteAverage,
    required this.genres,
  });
}

class GenreEntity {
  final int id;
  final String name;

  GenreEntity({
    required this.id,
    required this.name,
  });
}