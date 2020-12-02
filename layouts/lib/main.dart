import 'package:flutter/material.dart';
import 'columnLayout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //************** roshan changes  added splashscreen
      home: column_layout(),
    );
  }
}
