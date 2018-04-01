import 'package:flutter/material.dart';
import 'package:flutterwars/app_state.dart';
import 'package:flutterwars/keys.dart';
import 'package:flutterwars/widgets/movie_list.dart';
import 'package:meta/meta.dart';

class MovieListScreen extends StatefulWidget {
  final AppState appState;

  MovieListScreen({@required this.appState, Key key})
      : super(key: FlutterWarsKey.movieListScreen);

  @override
  State<StatefulWidget> createState() {
    return new MovieListScreenState();
  }
}

class MovieListScreenState extends State<MovieListScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Wars"),
      ),
      body: new MovieList(
        movies: widget.appState.movies,
        loading: widget.appState.isLoading,
      ),
    );
  }
}
