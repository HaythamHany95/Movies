class PopularMoviesEntity {
  final int id;
  final String title;
  final String year;
  final String poster;
  final String rated = 'PG-13';

  PopularMoviesEntity({
    required this.id,
    required this.title,
    required this.year,
    required this.poster,
  });
}
