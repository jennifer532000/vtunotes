import 'package:flutter/material.dart';
import 'pop.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Expanded sembtn(String sem) {
    return Expanded(
      child: RaisedButton(
        color: Colors.white,
        child: Text(
          'SEMESTER $sem',
          style: TextStyle(
            color: Color(0xFFFF1744),
            fontSize: 20.0,
            fontFamily: 'pacifico',
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            side: BorderSide(color: Color(0xFFFF1744))),
        onPressed: () {
          // Navigate to the second screen using a named route.
          Navigator.pushNamed(context, PopupMenuButtonPage.id);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('NOTES')),
        backgroundColor: Color(0xFFFF1744),
      ),
      body: SafeArea(
        child: Center(
          //padding:EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 5.0,
              ),
              sembtn('I'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('II'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('III'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('IV'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('V'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('VI'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('VII'),
              SizedBox(
                height: 5.0,
              ),
              sembtn('VIII'),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
