import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'YouTube App',
          ),
          actions: <Widget>[
            FlatButton(
              child: Icon(Icons.search),
            ),
            FlatButton(
              child: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}