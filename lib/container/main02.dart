import 'package:flutter/material.dart';

// 无状态组件
class MyApp extends StatelessWidget {
  // 返回一个widget
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello Harlie',
        textDirection: TextDirection.ltr, // 必须写上不然报错
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold
            // color: Colors.red,
            ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw null;
  }
}

void main() {
  runApp(MyApp());
}
