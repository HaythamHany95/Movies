

import 'package:freezed_annotation/freezed_annotation.dart';
part 'browse_state.freezed.dart';

@freezed
class BrowseState<T> with _$BrowseState<T> {
  const factory BrowseState.initial() = Initial;
  const factory BrowseState.loading() = Loading;
  const factory BrowseState.loaded(T recipes) = Loaded;
  const factory BrowseState.error( String message) = Error;
}