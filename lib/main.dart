import 'package:flutter/material.dart';
import 'package:vtunotes1/home.dart';
import 'pop.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      initialRoute: HomePage.id,
      home: new MyHomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        PopupMenuButtonPage.id: (context) => PopupMenuButtonPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('TestProject'),
        ),
        body: new Center(
            child: new FlatButton(
                child: const Text('Go to Settings'),
                onPressed: () =>
                    Navigator.of(context).pushNamed(HomePage.id))));
  }
}

//
//void main() {
//  runApp(new MyApp());
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Flutter Demo',
//      home: new MyHomePage(),
//      routes: <String, WidgetBuilder>{
//        '/settings': (BuildContext context) => new SettingsPage(),
//      },
//    );
//  }
//}
