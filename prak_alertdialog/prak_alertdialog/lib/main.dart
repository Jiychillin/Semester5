import 'dart:html';

import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Praktikum Alert Dialog"),
        ),
        body: Container(
          color: Colors.red,
          child: MaterialButton(
            child: Text("Alert Dialog"),
            textColor: Colors.white,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (_) => NetworkGiffyDialog(
                        image: Image.asset('images/men_wearing_jacket.gif'),
                        title: Text(
                          'Men Wearing Jackets',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w600),
                        ),
                        description: Text(
                          'This is a men wearing jackets',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        onOkButtonPressed: () {},
                      ));
            },
          ),
        ));
  }
}
