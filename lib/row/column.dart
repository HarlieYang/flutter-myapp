import 'package:flutter/material.dart';
import '../components/icon/icon.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 500.0,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconContainer(Icons.ac_unit),
          IconContainer(
            Icons.search,
            color: Colors.orange,
          ),
          IconContainer(
            Icons.offline_bolt,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
