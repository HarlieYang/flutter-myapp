import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {
              Navigator.pushNamed(
                context,
                '/list',
                arguments: {
                  "title": "测试表单",
                  "name": "参数名称",
                },
              ),
              // Navigator.of(context).push(
              // MaterialPageRoute(
              //   builder: (context) {
              //     return List(
              //       title: "测试表单",
              //     );
              //   },
              // ),
              // ),
            },
        child: Text("跳转到列表组件"));
  }
}
