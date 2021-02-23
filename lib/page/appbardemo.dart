import 'package:flutter/material.dart';

class AppbarDemoPage extends StatefulWidget {
  final Map arguments;
  AppbarDemoPage({Key key, this.arguments}) : super(key: key);
  @override
  _AppbarDemoPageState createState() =>
      _AppbarDemoPageState(arguments: this.arguments);
}

class _AppbarDemoPageState extends State<AppbarDemoPage> {
  Map arguments;
  _AppbarDemoPageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true, // 无论安卓、ios都居中显示
          // leading: Icon(Icons.menu),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => {
              Navigator.pop(context),
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => {
                // Navigator.pop(context),
              },
            ),
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: () => {
                // Navigator.pop(context),
              },
            ),
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Text('热门'),
              Text('推荐'),
              Text('热门'),
              Text('推荐'),
              Text('推荐'),
            ],
          ),
          title: Text('AppbarDemoPage'),
        ),
        body: TabBarView(
          children: [
            Text('1'),
            Text('2'),
            Text('3'),
            Text('4'),
            Text('5'),
          ],
        ),
      ),
    );
  }
}
