

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/networking/entities/search_entity.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/cubit/search_states.dart';
import 'package:movies/ui/screens/home/home_tabs/search_tab/repo/search_repo.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepoImpl searchRepoImpl;

  SearchCubit({required this.searchRepoImpl}) : super(const SearchState.initial());

  List<SearchEntity> searchResults = [];

  void search({required String query}) async {
    emit(const SearchState.loading());
      final searchResult = await searchRepoImpl.search(query: query);
      searchResult.whenOrNull(
        success: (data) {
          searchResults = data;
          emit(SearchState.loaded(data));
        },
        failure: (error) {
          emit(SearchState.error(error.toString()));
        },
      );

  }
}
