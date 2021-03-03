import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FuncPage extends StatelessWidget {
  const FuncPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('功能示例'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('时间日期'),
              leading: Icon(Icons.timer),
              subtitle: Text('时间功能插件示例'),
              onTap: () {
                Navigator.pushNamed(context, '/timepage');
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('轮播图'),
              leading: Icon(Icons.swipe),
              subtitle: Text('轮播图功能插件示例-swiper'),
              onTap: () {
                Navigator.pushNamed(context, '/swiper');
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('弹层'),
              leading: Icon(Icons.add_alert),
              subtitle: Text('自定义弹框'),
              onTap: () {
                Navigator.pushNamed(context, '/alert');
              },
            ),
            Divider(
              color: Colors.black,
            )
          ],
        ));
  }
}
