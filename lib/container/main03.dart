import 'package:flutter/material.dart'; // 作为跟组件使用

// 无状态组件
class MyApp extends StatelessWidget {
  // 返回一个widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Harlie'),
          // backgroundColor: Color.fromRGBO(0, 0, 0, 1),
          // backgroundColor: Colors.yellow,
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello Harlie',
        textDirection: TextDirection.ltr, // 必须写上不然报错
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 40,
            color: Color.fromRGBO(0, 0, 0, 1),
            fontWeight: FontWeight.bold
            // color: Colors.red,
            ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
