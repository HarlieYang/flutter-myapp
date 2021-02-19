import 'package:flutter/material.dart';
import '../components/btn/btn.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 300.0,
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10.0,
        // direction: Axis.vertical,
        // runAlignment: WrapAlignment.end,
        alignment: WrapAlignment.start,
        children: [
          BtnPage('测试场景一'),
          BtnPage('测试场景二'),
          BtnPage('测试场景三'),
          BtnPage('测试场景三'),
          BtnPage('测试场景三'),
          BtnPage('测试场景三'),
          BtnPage('测景三'),
          BtnPage('测景三'),
          BtnPage('测景三'),
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
          title: Text('流式布局wrap'),
        ),
        body: HomePage(),
      ),
    );
  }
}

void main() => runApp(MyApp());
