import 'package:flutter/material.dart';
import 'package:tek_post/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primaryColor: Colors.teal,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent, primary: Colors.teal)),
        textTheme: TextTheme(
            headline6: TextStyle(fontWeight: FontWeight.w600, fontSize: 17))),
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
