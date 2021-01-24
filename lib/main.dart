import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _ApplicationState createState() => new _ApplicationState();
}

class _ApplicationState extends State<MyApp> {
  String ptext = '';
  void method1(str) {
    setState(() {
      ptext = str; //'you clicked raised button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Button Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Button Example"),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "There are basically 4 Types of button",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Text(
                ptext,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  method1("You Clicked Raised Button.");
                },
                child: Text(
                  "Raised Button",
                  textDirection: TextDirection.ltr,
                ),
              ),
              FlatButton(
                onPressed: () {
                  method1("You Clicked Flat Button.");
                },
                child: Text(
                  "Flat Button",
                  textDirection: TextDirection.ltr,
                ),
              ),
              IconButton(
                onPressed: () {
                  method1("You Clicked Icon Button.");
                },
                icon: Icon(Icons.add),
              ),
              FloatingActionButton(
                backgroundColor: const Color(0xff03dac6),
                foregroundColor: Colors.black,
                onPressed: () {
                  method1(
                      "You Pressed Floating Button."); // Respond to button press
                },
                child: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
