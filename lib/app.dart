// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterwars/app_state.dart';
import 'package:flutterwars/routes.dart';
import 'package:flutterwars/screens/movie_list_screen.dart';
import 'package:flutterwars/starwarsapi.dart';
import 'package:flutterwars/theme.dart';


class FlutterWarsApp extends StatefulWidget {
  final StarWarsApi api;

  FlutterWarsApp({@required this.api});

  @override
  State<StatefulWidget> createState() {
    return new FlutterWarsAppState();
  }
}

class FlutterWarsAppState extends State<FlutterWarsApp> {
  AppState appState = new AppState.loading();

//  _getMovies() async {
//    final stream = await widget.api.getMovies();
//    stream.listen((movie) => setState(() => appState.movies.add(movie)));
//  }

  @override
  void initState() {
    super.initState();

    widget.api.getMovies().then((loadedMovies){
      setState((){
        appState = new AppState(
          movies: loadedMovies
        );
      });
    }).catchError((err) {
      setState(() {
        appState.isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Flutter Wars",
      theme: FlutterWarsTheme.theme,
      routes: {
        FlutterWarsRoutes.movielist: (context) {
          return new MovieListScreen(
            appState: appState
          );
        },
      },
    );
  }
}
