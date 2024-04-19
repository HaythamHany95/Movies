import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/entities/movie_details_entity.dart';
import 'package:movies/networking/entities/recommendation_movies_entity.dart';
import 'package:movies/ui/screens/details/cubit/movie_details_states.dart';
import 'package:movies/ui/screens/details/repo/movie_details_repo.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {

  final MovieDetailsRepo movieDetailsRepo;
  MovieDetailsCubit({required this.movieDetailsRepo}) : super(const MovieDetailsState.initial());

  MovieDetailsEntity movieDetails = MovieDetailsEntity(
    id: 0,
    title: 'Unknown',
    year: 'Unknown',
    description: 'Unknown',
    duration: 'Unknown',
    posterPath: 'Unknown',
    backdropPath: 'Unknown',
    voteAverage: 'Unknown',
    genres: [],
  );

  List<RecommendationMoviesEntity> similarMovies= [];

  getMovieDetails(int movieId) async {
    emit(const MovieDetailsState.loadingDetails());
    final result = await movieDetailsRepo.getMovieDetails(movieId: movieId);
    result.whenOrNull(
      success: (data) {
        movieDetails = data;
        emit(MovieDetailsState.loadedDetails(data));
      },
      failure: (error) {
        print(error.failure.message);
        emit(MovieDetailsState.error(error.toString()));
      },
    );
  }

  getSimilarMovies(int movieId) async {
    print('start getSimilarMovies');
    emit(const MovieDetailsState.loadingSimilarMovies());
    final result = await movieDetailsRepo.getSimilarMovies(movieId: movieId);
    result.whenOrNull(
      success: (data) {
        print('Similar Movies---------------------: $data');
        similarMovies = data;
        emit(MovieDetailsState.loadedSimilarMovies(data));
      },
      failure: (error) {
        emit(MovieDetailsState.error(error.toString()));
      },
    );
  }

  emitGoOut() {
    emit(const MovieDetailsState.goOut());
  }

}