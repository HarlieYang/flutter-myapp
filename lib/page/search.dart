import 'package:flutter/material.dart';
import 'package:myapp/page/tabs.dart';

class Search extends StatefulWidget {
  final Map arguments;

  Search({Key key, this.arguments}) : super(key: key);
  @override
  _SearchState createState() => _SearchState(arguments: this.arguments);
}

class _SearchState extends State<Search> {
  Map arguments;
  _SearchState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: ElevatedButton(
        onPressed: () {
          // 返回跟组件
          Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(
                builder: (context) => Tabs(currentIndex: 1),
              ),
              (route) => route == null);
        },
        child: Text(this.arguments['title']),
      ),
    );
  }
}
