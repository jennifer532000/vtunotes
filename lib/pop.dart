import 'package:flutter/material.dart';

class PopupMenuButtonPage extends StatefulWidget {
  static const String id = 'popup';
  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenuButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POPUP_MENU"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code.
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}

Widget _childPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "DAA",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "COMPUTER NETWORKS",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            "OBJECT ORIENTED PROGRAMMING",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ],
      child: Container(
        height: 50,
        width: 200,
        decoration: ShapeDecoration(
          color: Colors.green,
          shape: StadiumBorder(
            side: BorderSide(color: Colors.black, width: 2),
          ),
        ),
        child: Icon(Icons.note),
      ),
    );
