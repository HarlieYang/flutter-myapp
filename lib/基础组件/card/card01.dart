import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return ListView(
      children: [
        Card(
          child: Column(
            children: [
              ListTile(
                title: Text('张三'),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('地址'),
                subtitle: Text('xxxxx'),
              ),
              ListTile(
                title: Text('电话'),
                subtitle: Text('00000'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object build) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('卡片组件'),
          ),
          body: Center(
            child: HomePage(),
          )),
    );
  }
}

void main() => runApp(MyApp());
