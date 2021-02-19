import 'package:flutter/material.dart';
import './index.dart';
import './mine.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
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
      body: this._tabPages[this._currentIndex]["widget"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) => {
                this.setState(() {
                  this._currentIndex = index;
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
