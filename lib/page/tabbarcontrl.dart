import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarControllPage extends StatefulWidget {
  TabBarControllPage({Key key}) : super(key: key);

  @override
  _TabBarControllPageState createState() => _TabBarControllPageState();
}

class _TabBarControllPageState extends State<TabBarControllPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // 生命周期 初始化
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2,
    );
    _tabController.addListener(() {
      print('1122222');
    });
  }

  // 生命周期 销毁
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabController'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: [
            Text('热门'),
            Text('推荐'),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          Text('热门'),
          Text('推荐'),
        ],
      ),
    );
  }
}
