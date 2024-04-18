import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/entities/search_entity.dart';
import 'package:movies/networking/models/movie_details_response.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/cubit/browse_state.dart';
import 'package:movies/ui/screens/home/home_tabs/browse_tab/repo/browse_repo.dart';

class BrowseCubit extends Cubit<BrowseState> {
  final BrowseRepo browseRepo;

  BrowseCubit({required this.browseRepo}) : super(const BrowseState.initial());

  List<Genre> genres = [];
  List<SearchEntity> moviesByGenre = [];

  Future<void> getGenre() async {
    emit(const BrowseState.loading());
    final result = await browseRepo.getGenres();
    result.when(
      success: (data) {
        genres = data;
        emit(BrowseState.loaded(data));
      },
      failure: (message) {
        emit(BrowseState.error(message.toString()));
      },
    );
  }

  getMoviesByGenre({required int id}) async {
    emit(const BrowseState.loading());
    final result = await browseRepo.getMovieByGenre(id: id);
    result.when(
      success: (data) {
        moviesByGenre = data;
        emit(BrowseState.loaded(data));
      },
      failure: (message) {
        emit(BrowseState.error(message.toString()));
      },
    );
  }

}
