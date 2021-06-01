import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Center(child: new Text("Hello World", style: new TextStyle(fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.red),),),
      ),

    );
  }
}

