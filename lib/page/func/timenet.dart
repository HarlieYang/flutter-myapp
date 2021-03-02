import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeNetPage extends StatelessWidget {
  const TimeNetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三方时间示例'),
      ),
      body: Text('第三方'),
    );
  }
}
