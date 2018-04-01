class SimpleMovie {
  final String title;
  final String releaseDate;

  SimpleMovie.fromJson(Map jsonMap)
      : title = jsonMap['title'],
        releaseDate = jsonMap['release_date'];
}
