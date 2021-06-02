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
      home: ClickMe()
    );
  }
}

class ClickMe extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => ChangeText();
}

class ChangeText extends State<ClickMe> {

  //String defaultText = "Hello";
  String defaultText = "Click: ";

  int i = 0;

  void changeText() {
    setState(() {
      /*if (i % 2 == 0) {
        defaultText = "Text has been changed";
      }
      else {*/
      i++;
        defaultText = "Click: " + i.toString();
     /* }*/

    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Center(child: new Text(defaultText, style: new TextStyle(fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.red),),),
    floatingActionButton: FloatingActionButton(onPressed: changeText,
      tooltip: "Click Me",
    child: Icon(Icons.mouse),),);
  }

}
