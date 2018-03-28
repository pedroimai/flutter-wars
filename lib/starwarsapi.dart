import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class SimpleMovie {
  final String title;
  final String releaseDate;

  SimpleMovie.fromJson(Map jsonMap)
      : title = jsonMap['title'],
        releaseDate = jsonMap['release_date'];
}

Future<Stream<SimpleMovie>> getMovies() async {
  var url = "https://swapi.co/api/films";
  var client = new http.Client();
  var streamedRes = await client.send(new http.Request('get', Uri.parse(url)));

  return streamedRes.stream
      .transform(UTF8.decoder)
      .transform(JSON.decoder)
      .expand((jsonBody) => (jsonBody as Map)['results'])
      .map((jsonMovie) => new SimpleMovie.fromJson(jsonMovie));
}