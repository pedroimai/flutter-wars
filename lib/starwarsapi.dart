import 'dart:async';
import 'dart:convert';
import 'package:flutterwars/movie.dart';
import 'package:http/http.dart' as http;

class StarWarsApi {
  Future<List<SimpleMovie>> getMovies() async {
    var url = "https://swapi.co/api/films";
    var client = new http.Client();
    var streamedResponse =
        await client.send(new http.Request('get', Uri.parse(url)));

    return streamedResponse.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .expand((jsonBody) => (jsonBody as Map)['results'])
        .map((jsonMovie) => new SimpleMovie.fromJson(jsonMovie))
        .toList();
  }
}
