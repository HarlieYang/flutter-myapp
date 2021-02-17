import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 300.0,
        padding: EdgeInsets.all(20),
        // padding: EdgeInsets.fromLTRB(10, 20, 10,– 20),
        // padding: EdgeInsets.only(left: 20),
        // transform: Matrix4.translationValues(10, 0, 0),  // 移动
        // transform: Matrix4.rotationZ(0.2), //旋转
        alignment: Alignment.topLeft,
        transform: Matrix4.diagonal3Values(1, 1.2, 1),
        decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black, width: 2.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Text('huihui',
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic, // 倾斜
                decoration: TextDecoration.lineThrough, // 划线
                decorationColor: Colors.yellow, // 划线颜色
                decorationStyle: TextDecorationStyle.dashed, // 虚线 直线
                letterSpacing: 3 //行间距
                )));
  }
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('demo'),
              backgroundColor: Colors.blue,
            ),
            body: new HomeContent()));
  }
}

void main() => (runApp(Myapp()));
