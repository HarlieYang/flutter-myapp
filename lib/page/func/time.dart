import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePage extends StatelessWidget {
  const TimePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('时间组件'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('官方组件'),
            leading: Icon(Icons.timer),
            onTap: () {
              Navigator.pushNamed(context, '/timemain');
            },
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            title: Text('第三方组件'),
            leading: Icon(Icons.timer),
            onTap: () {
              Navigator.pushNamed(context, '/timenet');
            },
          ),
          Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
