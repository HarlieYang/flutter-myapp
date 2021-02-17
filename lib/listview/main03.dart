import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200.0,
      height: 180.0,
      // decoration: BoxDecoration(color: Colors.black),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.red),
            child: ListView(children: <Widget>[
              ListTile(
                title: Text('11111111'),
                subtitle: Text('2222'),
              ),
              ListTile(
                title: Text('11111111'),
                subtitle: Text('2222'),
              ),
              ListTile(
                title: Text('11111111'),
                subtitle: Text('2222'),
              )
            ]),
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.yellow),
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(color: Colors.orange),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('listview')),
        body: HomePage(),
      ),
    );
  }
}

void main() => runApp(MyApp());
