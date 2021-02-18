import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      color: Colors.blue,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.sanitizer,
              color: Colors.white,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(
              Icons.east,
              color: Colors.white,
            ),
          ),
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
        appBar: AppBar(
          title: Text('定位组件1'),
        ),
        body: Center(child: HomePage()),
      ),
    );
  }
}

void main() => runApp(MyApp());
