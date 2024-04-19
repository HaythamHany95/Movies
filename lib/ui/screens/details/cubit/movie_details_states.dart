import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_details_states.freezed.dart';
@freezed
class MovieDetailsState<T> with _$MovieDetailsState<T> {
  const factory MovieDetailsState.initial() = Initial;
  const factory MovieDetailsState.loadingDetails() = LoadingDetails;
  const factory MovieDetailsState.loadedDetails(T movie) = LoadedDetails;
  const factory MovieDetailsState.loadingSimilarMovies() = LoadingSimilarMovies;
  const factory MovieDetailsState.loadedSimilarMovies(T movie) = LoadedSimilarMovies;
  const factory MovieDetailsState.goOut() = GoOut;
  const factory MovieDetailsState.error(String message) = Error;
}
