import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

//stf and stl

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My app",
      home: new HomePage(),
      theme: new ThemeData(
          primarySwatch: Colors.green,
          brightness: Brightness.light,
          accentColor: Colors.red),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  __HomePageState createState() => new __HomePageState();
}

class __HomePageState extends State<HomePage> {
  String myTextData = "Roshan is genious";

  void _changeText() {
    setState(() {
      if (myTextData.startsWith("Ro")) {
        myTextData = "Welcome to Roshan App";
      } else {
        myTextData = " Ramesh bhaiyaa welcomes you";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: const EdgeInsets.all(8.0),
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              myTextData,
              style: new TextStyle(
                color: Colors.amber,
                fontSize: 25.0,
              ),
            ),
            new RaisedButton(
              child: new Text(
                "Click",
                style: new TextStyle(
                  color: Colors.indigo,
                  fontSize: 15.0,
                ),
              ),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("text Button project"),
      ),
      body: _bodyWidget(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: _changeText,
      ),
    );
  }
}
