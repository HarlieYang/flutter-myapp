import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 200.0,
        child: AspectRatio(
      aspectRatio: 3,
      child: Container(
        color: Colors.red,
      ),
    ));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AspectRatio组件'),
        ),
        body: Center(child: HomePage()),
      ),
    );
  }
}

void main() => runApp(MyApp());
