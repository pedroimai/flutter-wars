
import 'package:flutter/material.dart';
import 'package:flutterwars/app.dart';
import 'package:flutterwars/starwarsapi.dart';

void main() {
  runApp(
    new FlutterWarsApp(
      api: new StarWarsApi(),
    ),
  );
}