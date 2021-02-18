import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          shadowColor: Colors.blue,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1129084263,3532636474&fm=26&gp=0.jpg"),
              ),
              ListTile(
                leading: ClipOval(
                    child: Image.network(
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1129084263,3532636474&fm=26&gp=0.jpg",
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                )),
                title: Text('张三'),
                subtitle: Text(
                  "高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
          shadowColor: Colors.blue,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                    "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1129084263,3532636474&fm=26&gp=0.jpg"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1129084263,3532636474&fm=26&gp=0.jpg"),
                ),
                title: Text('张三'),
                subtitle: Text(
                  "高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师高级工程师",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ],
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
