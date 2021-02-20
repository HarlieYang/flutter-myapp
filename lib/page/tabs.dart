import 'package:flutter/material.dart';
import './index.dart';
import './mine.dart';

// ignore: must_be_immutable
class Tabs extends StatefulWidget {
  int currentIndex = 0;
  Tabs({Key key, this.currentIndex}) : super(key: key);
  _TabsState createState() => _TabsState(currentIndex: this.currentIndex);
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  _TabsState({this.currentIndex});
  List _tabPages = [
    {"icon": Icon(Icons.home), "label": '首页', "widget": IndexPage()},
    {"icon": Icon(Icons.person), "label": '个人中心', "widget": MinePage()},
    {"icon": Icon(Icons.person), "label": '个人中心', "widget": MinePage()},
    {"icon": Icon(Icons.person), "label": '个人中心', "widget": MinePage()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('底部导航')),
      body: this._tabPages[this.currentIndex]["widget"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
          // ignore: sdk_version_set_literal
          onTap: (int index) => {
                this.setState(() {
                  this.currentIndex = index;
                }),
              },
          iconSize: 26.0,
          // fixedColor: Colors.orange,
          type: BottomNavigationBarType.fixed, // 3个以上的导航需要添加这个属性
          items: this._tabPages.map((value) {
            return BottomNavigationBarItem(
                icon: value["icon"], label: value["label"]);
          }).toList()),
    );
  }
}
