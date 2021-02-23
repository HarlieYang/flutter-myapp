import 'package:flutter/material.dart';
import '../page/index.dart';
import '../page/mine.dart';

// ignore: must_be_immutable
class Tabs extends StatefulWidget {
  int currentIndex = 0;
  Tabs({Key key, this.currentIndex}) : super(key: key);

  _TabsState createState() => _TabsState(currentIndex: this.currentIndex);
}

class _TabsState extends State<Tabs> {
  _TabsState({this.currentIndex});

  int currentIndex = 0;

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
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('ceshi'),
                    accountEmail: Text('yanghui30212163.com'),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: NetworkImage(
                    //         "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c"),
                    //   ),
                    // ),
                    currentAccountPicture: ClipOval(
                      child: Image.network(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c"),
                    ),
                    otherAccountsPictures: [
                      Image.network(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c"),
                      Image.network(
                          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Ftxt39-1.book118.com%2F2018%2F0718%2Fbook177787%2F177786333.jpg&refer=http%3A%2F%2Ftxt39-1.book118.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1616151358&t=e2752e1b48ffde01e187db96f2eb587c"),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("sdfsdfsd"),
              onTap: () => {Navigator.pushNamed(context, "/search")},
            ),
            Divider(color: Colors.black),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("sdfsdfsd"),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧侧边栏'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.currentIndex,
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
