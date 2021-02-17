import 'package:flutter/material.dart';
import '../data/data.dart';

class HomePage extends StatelessWidget {
  // 自定义组件

  // List<Widget> _getData() {
  //   // 3
  //   var list = listData.map((value) {
  //     return ListTile(
  //       title: Text(value["title"]),
  //       subtitle: Text(value["anythor"]),
  //     );
  //   });
  //   return list.toList();
  //   // 2
  //   // for (var i = 0; i < 20; i++) {
  //   //   list.add(ListTile(
  //   //     title: Text('11111111'),
  //   //     subtitle: Text('2222'),
  //   //   ));
  //   // }
  //   // return list;
  //   // 1
  //   //   return [
  //   //     ListTile(
  //   //       title: Text('test'),
  //   //       subtitle: Text('2222'),
  //   //     ),
  //   //     ListTile(
  //   //       title: Text('11111111'),
  //   //       subtitle: Text('2222'),
  //   //     ),
  //   // ListTile(
  //   //   title: Text('11111111'),
  //   //   subtitle: Text('2222'),
  //   // ),
  //   //   ];
  // }
  List<Widget> _getData() {
    var templist = listData.map((value) {
      return ListTile(
          title: Text(value["title"]), subtitle: Text(value["anythor"]));
    });
    return templist.toList();
  }

  // Widget _getlistData(context, index) {
  //   // 4
  //   return ListTile(
  //     leading: Icon(Icons.home),
  //     title: Text(listData[index]["title"]),
  //     subtitle: Text(listData[index]["anythor"]),
  //   );
  // }
  Widget _getlistData(context, index) {
    return ListTile(
        title: Text(listData[index]["title"]),
        subtitle: Text(listData[index]["anythor"]));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200.0,
      // height: 180.0,
      // decoration: BoxDecoration(color: Colors.black),
      // child: ListView(
      //   children: this._getData(),
      // ),
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: this._getlistData,
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
        body: HomePage(),
      ),
    );
  }
}

void main() => runApp(MyApp());
