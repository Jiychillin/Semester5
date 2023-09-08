import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Praktikum Button"),
        ),
        body: Column(
          children: [
            RaisedButton(
              color: Colors.amber,
              child: Text("Raised Button"),
              onPressed: () {},
              
            ),
            MaterialButton(
              color: Colors.lime,
              child: Text("Material Button"),
              onPressed: () {},
            ),
            FlatButton(
              color: Colors.lightGreenAccent,
              child: Text("FlatButton Button"),
              onPressed: () {},
            ),
          ],
        ));
  }
}
