import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_screen_states.freezed.dart';

@freezed
abstract class HomeScreenStates<T> with _$HomeScreenStates<T> {
  const factory HomeScreenStates.initial() = Initial;
  const factory HomeScreenStates.loadingPopularMovies() = LoadingPopularMovies;
  const factory HomeScreenStates.loadedPopularMovies(T popularMovies) = LoadedPopularMovies;
  const factory HomeScreenStates.error(String message) = Error;
}