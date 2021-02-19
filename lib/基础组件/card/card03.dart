import 'package:flutter/material.dart';
import '../../data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return ListView(
      children: listData.map(
        (value) {
          return Card(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            shadowColor: Colors.blue,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  leading: ClipOval(
                      child: Image.network(
                    value["imageUrl"],
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  )),
                  title: Text(value["anythor"]),
                  subtitle: Text(
                    value["title"],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          );
        },
      ).toList(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(Object build) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('图文卡片'),
          ),
          body: Center(
            child: HomePage(),
          )),
    );
  }
}

void main() => runApp(MyApp());
