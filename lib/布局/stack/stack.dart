import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        // alignment: Alignment(0, 1),
        children: [
          Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
          Icon(
            Icons.ac_unit,
            color: Colors.white,
          ),
          Icon(
            Icons.sanitizer,
            color: Colors.white,
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
        appBar: AppBar(
          title: Text('灰灰'),
        ),
        body: Center(child: HomePage()),
      ),
    );
  }
}

void main() => runApp(MyApp());
