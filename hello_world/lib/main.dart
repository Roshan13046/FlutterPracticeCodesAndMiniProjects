import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeInOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.purple,
      body: new Stack(
        fit: StackFit.expand, //fits to the stack
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/wrokoutfinal.png"),
            fit: BoxFit.cover,
            color: Colors.pink,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: _iconAnimation.value * 100,
              ),
              new Form(
                  child: new Theme(
                data: new ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.yellow,
                    inputDecorationTheme: new InputDecorationTheme(
                        labelStyle:
                            new TextStyle(color: Colors.green, fontSize: .0))),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText:
                              "Enter Name", //label text will show label of input field
                        ),
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Enter Ph-no", //will give hint at top
                        ),
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Enter Email",
                        ),
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Enter Password",
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      new Padding(padding: const EdgeInsets.only(top: 20.0)),
                      new MaterialButton(
                        height: 50.0,
                        minWidth: 70.0,
                        color: Colors.greenAccent,
                        textColor: Colors.white,
                        child: new Text("Login"),
                        onPressed: () => {},
                        splashColor: Colors.deepPurple,
                      )
                    ],
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
