import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, ans = 0;

  final TextEditingController text1 = new TextEditingController(text: "0");
  final TextEditingController text2 = new TextEditingController(text: "0");

  void onAdd() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = num1 + num2;
    });
  }

  void onSub() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = num1 - num2;
    });
  }

  void onMul() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = num1 * num2;
    });
  }

  void onDiv() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = (num2 ~/ num1); //note : Truncate operator used here
    });
  }

  void onMod() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = num1 % num2;
    });
  }

  void onPow() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      ans = num1 ^ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Roshan Calculator"),
        ),
        body: new Container(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Output : $ans",
                    style: new TextStyle(
                        fontSize: 30.0,
                        color: Colors.indigoAccent,
                        backgroundColor: Colors.lime)),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter num1"),
                  controller: text1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter num2"),
                  controller: text2,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("+"),
                      color: Colors.greenAccent,
                      onPressed: () {
                        onAdd();
                      },
                    ),
                    new MaterialButton(
                      child: new Text("-"),
                      color: Colors.pink,
                      onPressed: () {
                        onSub();
                      },
                    )
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 5.00),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("x"),
                      color: Colors.deepPurple,
                      onPressed: () {
                        onMul();
                      },
                    ),
                    new MaterialButton(
                        child: new Text('/'),
                        color: Colors.deepOrange,
                        onPressed: () {
                          onDiv();
                        }),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 5.00),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("^"),
                      color: Colors.deepOrange,
                      onPressed: () {
                        onPow();
                      },
                    ),
                    new MaterialButton(
                      child: new Text("%"),
                      color: Colors.deepPurple,
                      onPressed: () {
                        onMod();
                      },
                    )
                  ],
                )
              ],
            )));
  }
}
