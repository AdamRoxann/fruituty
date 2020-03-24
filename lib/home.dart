import 'package:flutter/material.dart';

import 'inside_app/interface.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(
            //   "FRUITUTY",
            //   style: new TextStyle(fontSize: 25.0),
            // ),
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Image.asset("assets/images/apple.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: RaisedButton(
                elevation: 15,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),),
                    // side: BorderSide(color: Colors.yellow)),
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                splashColor: Colors.grey,
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => Start(),
                    ),
                  );
                },
                child: Text(
                  "LET'S GO!!!",
                  style: new TextStyle(fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
