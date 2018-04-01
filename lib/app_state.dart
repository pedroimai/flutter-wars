import 'movie.dart';

class AppState {
  bool isLoading;
  List<SimpleMovie> movies;

  AppState({
    this.isLoading = false,
    this.movies = const [],
  });

  factory AppState.loading() => new AppState(isLoading: true);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is AppState &&
              runtimeType == other.runtimeType &&
              movies == other.movies &&
              isLoading == other.isLoading;

  @override
  String toString() {
    return 'AppState{movies: $movies, isLoading: $isLoading}';
  }
}