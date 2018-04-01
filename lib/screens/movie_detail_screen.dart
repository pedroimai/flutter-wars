import 'package:flutter/material.dart';
import 'package:flutterwars/keys.dart';
import 'package:flutterwars/movie.dart';
import 'package:meta/meta.dart';

class MovieDetailScreen extends StatelessWidget {
  final SimpleMovie movie;

  MovieDetailScreen({@required this.movie, Key key})
      : super(key: FlutterWarsKey.movieDetailsScreen);

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        movie.title,
      ),
    );
  }
}
