import 'package:flutter/material.dart';

class FlutterWarsTheme {
  static get theme {
    final originalTextTheme = new ThemeData.dark().textTheme;
    final originalBody1 = originalTextTheme.body1;

    return new ThemeData.dark().copyWith(
        primaryColor: Colors.red[800],
        accentColor: Colors.red[700],
        buttonColor: Colors.grey[800],
        textSelectionColor: Colors.red[400],
        backgroundColor: Colors.grey[800],
        textTheme: originalTextTheme.copyWith(
            body1:
                originalBody1.copyWith(decorationColor: Colors.transparent)));
  }
}
