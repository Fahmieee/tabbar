import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hi!"),
            bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.comment), text: "Comment",
                  ),
                  Tab(
                    icon: Icon(Icons.image), text: "Image",
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text("Tab 1"),
              ),
              Center(
                child: Text("Tab 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
