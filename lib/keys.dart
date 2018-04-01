import 'package:flutter/widgets.dart';

class FlutterWarsKey{
  //Screens
  static final movieListScreen = const Key('__movieListScreen__');
  static final movieDetailsScreen = const Key('__movieDetailsScreen__');

  //Movies
  static final movieList = const Key('__movieList__');
  static final moviesLoading = const Key('__moviesLoading__');
  static final movieItem = (String id) => new Key('MovieItem__${id}');
}