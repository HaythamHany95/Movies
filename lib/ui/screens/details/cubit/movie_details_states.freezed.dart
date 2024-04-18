// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MovieDetailsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<T, $Res> {
  factory $MovieDetailsStateCopyWith(MovieDetailsState<T> value,
          $Res Function(MovieDetailsState<T>) then) =
      _$MovieDetailsStateCopyWithImpl<T, $Res, MovieDetailsState<T>>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<T, $Res,
        $Val extends MovieDetailsState<T>>
    implements $MovieDetailsStateCopyWith<T, $Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MovieDetailsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<T> implements MovieDetailsState<T> {
  const factory Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingDetailsImplCopyWith<T, $Res> {
  factory _$$LoadingDetailsImplCopyWith(_$LoadingDetailsImpl<T> value,
          $Res Function(_$LoadingDetailsImpl<T>) then) =
      __$$LoadingDetailsImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingDetailsImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res, _$LoadingDetailsImpl<T>>
    implements _$$LoadingDetailsImplCopyWith<T, $Res> {
  __$$LoadingDetailsImplCopyWithImpl(_$LoadingDetailsImpl<T> _value,
      $Res Function(_$LoadingDetailsImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingDetailsImpl<T> implements LoadingDetails<T> {
  const _$LoadingDetailsImpl();

  @override
  String toString() {
    return 'MovieDetailsState<$T>.loadingDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingDetailsImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return loadingDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return loadingDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingDetails != null) {
      return loadingDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return loadingDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return loadingDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadingDetails != null) {
      return loadingDetails(this);
    }
    return orElse();
  }
}

abstract class LoadingDetails<T> implements MovieDetailsState<T> {
  const factory LoadingDetails() = _$LoadingDetailsImpl<T>;
}

/// @nodoc
abstract class _$$LoadedDetailsImplCopyWith<T, $Res> {
  factory _$$LoadedDetailsImplCopyWith(_$LoadedDetailsImpl<T> value,
          $Res Function(_$LoadedDetailsImpl<T>) then) =
      __$$LoadedDetailsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T movie});
}

/// @nodoc
class __$$LoadedDetailsImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res, _$LoadedDetailsImpl<T>>
    implements _$$LoadedDetailsImplCopyWith<T, $Res> {
  __$$LoadedDetailsImplCopyWithImpl(_$LoadedDetailsImpl<T> _value,
      $Res Function(_$LoadedDetailsImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_$LoadedDetailsImpl<T>(
      freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoadedDetailsImpl<T> implements LoadedDetails<T> {
  const _$LoadedDetailsImpl(this.movie);

  @override
  final T movie;

  @override
  String toString() {
    return 'MovieDetailsState<$T>.loadedDetails(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedDetailsImpl<T> &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedDetailsImplCopyWith<T, _$LoadedDetailsImpl<T>> get copyWith =>
      __$$LoadedDetailsImplCopyWithImpl<T, _$LoadedDetailsImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return loadedDetails(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return loadedDetails?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedDetails != null) {
      return loadedDetails(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return loadedDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return loadedDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadedDetails != null) {
      return loadedDetails(this);
    }
    return orElse();
  }
}

abstract class LoadedDetails<T> implements MovieDetailsState<T> {
  const factory LoadedDetails(final T movie) = _$LoadedDetailsImpl<T>;

  T get movie;
  @JsonKey(ignore: true)
  _$$LoadedDetailsImplCopyWith<T, _$LoadedDetailsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingSimilarMoviesImplCopyWith<T, $Res> {
  factory _$$LoadingSimilarMoviesImplCopyWith(
          _$LoadingSimilarMoviesImpl<T> value,
          $Res Function(_$LoadingSimilarMoviesImpl<T>) then) =
      __$$LoadingSimilarMoviesImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingSimilarMoviesImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res,
        _$LoadingSimilarMoviesImpl<T>>
    implements _$$LoadingSimilarMoviesImplCopyWith<T, $Res> {
  __$$LoadingSimilarMoviesImplCopyWithImpl(_$LoadingSimilarMoviesImpl<T> _value,
      $Res Function(_$LoadingSimilarMoviesImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSimilarMoviesImpl<T> implements LoadingSimilarMovies<T> {
  const _$LoadingSimilarMoviesImpl();

  @override
  String toString() {
    return 'MovieDetailsState<$T>.loadingSimilarMovies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSimilarMoviesImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return loadingSimilarMovies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return loadingSimilarMovies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadingSimilarMovies != null) {
      return loadingSimilarMovies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return loadingSimilarMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return loadingSimilarMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadingSimilarMovies != null) {
      return loadingSimilarMovies(this);
    }
    return orElse();
  }
}

abstract class LoadingSimilarMovies<T> implements MovieDetailsState<T> {
  const factory LoadingSimilarMovies() = _$LoadingSimilarMoviesImpl<T>;
}

/// @nodoc
abstract class _$$LoadedSimilarMoviesImplCopyWith<T, $Res> {
  factory _$$LoadedSimilarMoviesImplCopyWith(_$LoadedSimilarMoviesImpl<T> value,
          $Res Function(_$LoadedSimilarMoviesImpl<T>) then) =
      __$$LoadedSimilarMoviesImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T movie});
}

/// @nodoc
class __$$LoadedSimilarMoviesImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res,
        _$LoadedSimilarMoviesImpl<T>>
    implements _$$LoadedSimilarMoviesImplCopyWith<T, $Res> {
  __$$LoadedSimilarMoviesImplCopyWithImpl(_$LoadedSimilarMoviesImpl<T> _value,
      $Res Function(_$LoadedSimilarMoviesImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_$LoadedSimilarMoviesImpl<T>(
      freezed == movie
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$LoadedSimilarMoviesImpl<T> implements LoadedSimilarMovies<T> {
  const _$LoadedSimilarMoviesImpl(this.movie);

  @override
  final T movie;

  @override
  String toString() {
    return 'MovieDetailsState<$T>.loadedSimilarMovies(movie: $movie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSimilarMoviesImpl<T> &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSimilarMoviesImplCopyWith<T, _$LoadedSimilarMoviesImpl<T>>
      get copyWith => __$$LoadedSimilarMoviesImplCopyWithImpl<T,
          _$LoadedSimilarMoviesImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return loadedSimilarMovies(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return loadedSimilarMovies?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedSimilarMovies != null) {
      return loadedSimilarMovies(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return loadedSimilarMovies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return loadedSimilarMovies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (loadedSimilarMovies != null) {
      return loadedSimilarMovies(this);
    }
    return orElse();
  }
}

abstract class LoadedSimilarMovies<T> implements MovieDetailsState<T> {
  const factory LoadedSimilarMovies(final T movie) =
      _$LoadedSimilarMoviesImpl<T>;

  T get movie;
  @JsonKey(ignore: true)
  _$$LoadedSimilarMoviesImplCopyWith<T, _$LoadedSimilarMoviesImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$MovieDetailsStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MovieDetailsState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingDetails,
    required TResult Function(T movie) loadedDetails,
    required TResult Function() loadingSimilarMovies,
    required TResult Function(T movie) loadedSimilarMovies,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingDetails,
    TResult? Function(T movie)? loadedDetails,
    TResult? Function()? loadingSimilarMovies,
    TResult? Function(T movie)? loadedSimilarMovies,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingDetails,
    TResult Function(T movie)? loadedDetails,
    TResult Function()? loadingSimilarMovies,
    TResult Function(T movie)? loadedSimilarMovies,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<T> value) initial,
    required TResult Function(LoadingDetails<T> value) loadingDetails,
    required TResult Function(LoadedDetails<T> value) loadedDetails,
    required TResult Function(LoadingSimilarMovies<T> value)
        loadingSimilarMovies,
    required TResult Function(LoadedSimilarMovies<T> value) loadedSimilarMovies,
    required TResult Function(Error<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<T> value)? initial,
    TResult? Function(LoadingDetails<T> value)? loadingDetails,
    TResult? Function(LoadedDetails<T> value)? loadedDetails,
    TResult? Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult? Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult? Function(Error<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<T> value)? initial,
    TResult Function(LoadingDetails<T> value)? loadingDetails,
    TResult Function(LoadedDetails<T> value)? loadedDetails,
    TResult Function(LoadingSimilarMovies<T> value)? loadingSimilarMovies,
    TResult Function(LoadedSimilarMovies<T> value)? loadedSimilarMovies,
    TResult Function(Error<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements MovieDetailsState<T> {
  const factory Error(final String message) = _$ErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
