import 'package:flutter/material.dart';

class AppTheme {
  ThemeData darkTheme = ThemeData(
    iconTheme: const IconThemeData(color: Color(0xfff8f8ff)),
    focusColor: const Color(0xfff8f8ff),
    appBarTheme: AppBarTheme(color: Colors.grey.shade900),
    cardColor: Colors.grey.shade900,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    backgroundColor: Colors.grey.shade900,
  );
}

Map<String, Color> colors = {
  "primaryYellow": const Color(0xffFFBF00),
  "primaryPurple": const Color(0xffBF00FF),
  "primaryAqua": const Color(0xff00FFBF)
};
