import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: TabBar(
                    tabs: [
                      Text('列表'),
                      Text('分类'),
                      Text('列表'),
                      Text('分类'),
                      Text('列表'),
                      Text('分类'),
                      Text('列表'),
                      Text('分类'),
                    ],
                    isScrollable: true,
                    labelColor: Colors.red,
                    indicatorColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.only(top: 20)),
              )
            ],
          ),
          // bottom: TabBar(tabs: [
          //   Text('列表'),
          //   Text('分类'),
          // ]),
        ),
        body: TabBarView(
          children: [
            Text('1111'),
            Text('222'),
            Text('333'),
            Text('444'),
            Text('1111'),
            Text('222'),
            Text('333'),
            Text('444'),

            // ElevatedButton(
            //   onPressed: () => {
            //     Navigator.pushNamed(context, '/appbardemo')
            //     // Navigator.pushNamed(
            //     //   context,
            //     //   '/list',
            //     //   arguments: {
            //     //     "title": "测试表单",
            //     //     "name": "参数名称",
            //     //   },
            //     // ),
            //     // Navigator.of(context).push(
            //     // MaterialPageRoute(
            //     //   builder: (context) {
            //     //     return List(
            //     //       title: "测试表单",
            //     //     );
            //     //   },
            //     // ),
            //     // ),
            //   },
            //   child: Text("跳转到列表组件"),
            // ),
            // ElevatedButton(
            //   onPressed: () => {
            //     Navigator.pushNamed(context, '/appbardemo')
            //     // Navigator.pushNamed(
            //     //   context,
            //     //   '/list',
            //     //   arguments: {
            //     //     "title": "测试表单",
            //     //     "name": "参数名称",
            //     //   },
            //     // ),
            //     // Navigator.of(context).push(
            //     // MaterialPageRoute(
            //     //   builder: (context) {
            //     //     return List(
            //     //       title: "测试表单",
            //     //     );
            //     //   },
            //     // ),
            //     // ),
            //   },
            //   child: Text("跳转到分类组件"),
            // )
          ],
        ),
      ),
    );
  }
}
