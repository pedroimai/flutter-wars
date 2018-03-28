
import 'package:flutter/material.dart';
import 'starwarsapi.dart' as MoviesApi;

void main() {
  runApp(new FlutterWarsApp());
}

class FlutterWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Wars',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Wars'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var movies = <MoviesApi.SimpleMovie>[];

  _getMovies() async {
    final stream = await MoviesApi.getMovies();
    stream.listen((movie) => setState(() => movies.add(movie)));
  }

  @override
  initState() {
    super.initState();
    _getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new ListView(
        children: movies.map((movie) => new MovieWidget(movie)).toList(),
      ),
    );
  }
}

class MovieWidget extends StatelessWidget {
  MovieWidget(this.movie);
  final MoviesApi.SimpleMovie movie;

  @override
  Widget build(BuildContext context) {
    var listTile = new ListTile(
      title: new Text(movie.title),
      subtitle: new Text(movie.releaseDate),
      isThreeLine: false,
    );

    return listTile;
  }
}