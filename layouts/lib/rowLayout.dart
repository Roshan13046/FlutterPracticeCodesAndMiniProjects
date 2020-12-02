import "package:flutter/material.dart";
import 'stackLayout.dart';

class row_layout extends StatefulWidget {
  @override
  _row_layoutState createState() => _row_layoutState();
}

class _row_layoutState extends State<row_layout> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FlutterLogo(size: 40),
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Title of the Card",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text("some description",
                      style: Theme.of(context).textTheme.headline6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    child:
    FlatButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return stack_layout();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 120.0),
        child: Text(
          "Next",
          style: TextStyle(
            shadows: [
              Shadow(blurRadius: 10.0, color: Colors.grey[600]),
            ],
            color: Colors.pink[50],
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
    );
  }
}
