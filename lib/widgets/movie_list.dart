import 'package:flutter/material.dart';
import 'package:flutterwars/movie.dart';
import 'package:flutterwars/keys.dart';
import 'package:flutterwars/screens/movie_detail_screen.dart';
import 'package:flutterwars/widgets/movie_list_tile.dart';
import 'package:meta/meta.dart';

class MovieList extends StatelessWidget {
  final List<SimpleMovie> movies;
  final bool loading;

  MovieList({@required this.movies, @required this.loading})
      : super(key: FlutterWarsKey.movieList);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: loading
          ? new Center(
              child: new CircularProgressIndicator(
              key: FlutterWarsKey.moviesLoading,
            ))
          : new ListView.builder(
              key: FlutterWarsKey.movieList,
              itemCount: movies.length,
              itemBuilder: (BuildContext context, int index) {
                return new MovieListTile(
                  movie: movies[index],
                  onTap: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                        builder: (_) {
                          return new MovieDetailScreen(movie: movies[index]);
                        },
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
