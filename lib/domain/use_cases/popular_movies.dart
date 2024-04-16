import 'package:movies/domain/repos/home_repo_impl.dart';

class PopularMoviesUseCase{
  final HomeRepoImpl homeRepoImpl;

  PopularMoviesUseCase({required this.homeRepoImpl});


  getPopularMovies() async {
    final movies = await homeRepoImpl.getPopularMovies();
    movies.whenOrNull(
      success: (movies) {
        print(movies);
      },
      failure: (error) {
        print(error);
      },
    );
  }

}