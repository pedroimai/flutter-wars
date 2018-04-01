import 'package:flutter/material.dart';
import 'package:flutterwars/movie.dart';
import 'package:meta/meta.dart';

class MovieListTile extends StatelessWidget {
  final GestureTapCallback onTap;
  final SimpleMovie movie;

  MovieListTile({
    Key key,
    @required this.onTap,
    @required this.movie,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var listTile = new ListTile(
      title: new Text(movie.title),
      subtitle: new Text(movie.releaseDate),
      isThreeLine: false,
      onTap: this.onTap,
    );

    return listTile;
  }
}