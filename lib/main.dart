import 'package:dark_mode/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dark Mode',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.amber[700],
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
