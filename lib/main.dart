import 'package:flutter/material.dart';
import 'package:vtunotes1/home.dart';
import 'pop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        PopupMenuButtonPage.id: (context) => PopupMenuButtonPage(),
      },
    );
  }
}
