import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200.0,
      // height: 200.0,
      // decoration: BoxDecoration(color: Colors.black),
      child: ListView(
        // scrollDirection: ,
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
              title: Text("标题"),
              subtitle: Text("二级标题"),
              leading: Icon(Icons.home),
              // tileColor: Colors.red,
              selectedTileColor: Colors.yellow),
          ListTile(
            title: Text("标题"),
            subtitle: Text("二级标题"),
            leading: Icon(Icons.search),
          ),
          ListTile(
            title: Text("标题"),
            subtitle: Text("二级标题"),
            leading: Icon(Icons.outbond),
          ),
          ListTile(
            title: Text("标题"),
            subtitle: Text("二级标题"),
            leading: Image.network(
                'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg'),
            trailing: Icon(Icons.offline_bolt, color: Colors.red, size: 28.0),
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('listview')),
        body: Center(child: HomePage()),
      ),
    );
  }
}

void main() => runApp(MyApp());
