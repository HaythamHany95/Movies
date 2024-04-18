

import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_states.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.loaded(T searchResults) = Loaded;
  const factory SearchState.error(String message) = Error;
}
