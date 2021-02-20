import 'package:flutter/material.dart';

class List extends StatelessWidget {
  final String title;
  final Map arguments;
  // List({this.title = "表单harlie"}); 普通路由传惨
  List({this.arguments, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text('返回'),
        onPressed: () => {
          Navigator.of(context).pop(),
        },
      ),
      appBar: AppBar(
        title: Text(this.arguments['title']),
      ),
      body: ListView(
        children: [
          ListTile(
              title: Text(this.arguments['name']),
              subtitle: Text("副标题"),
              onTap: () => {
                    Navigator.pushReplacementNamed(
                      context,
                      '/search',
                      arguments: {
                        "title": "参数传递",
                      },
                    )
                  }),
          ListTile(
            title: Text("名称"),
            subtitle: Text("副标题"),
          ),
          ListTile(
            title: Text("名称"),
            subtitle: Text("副标题"),
          ),
          ListTile(
            title: Text("名称"),
            subtitle: Text("副标题"),
          )
        ],
      ),
    );
  }
}
