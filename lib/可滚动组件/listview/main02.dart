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
        children: <Widget>[
          Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg'),
          Container(
            height: 40,
            child: Text('标题', textAlign: TextAlign.center),
          ),
          Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg'),
          Container(
            height: 40,
            child: Text('标题', textAlign: TextAlign.center),
          ),
          Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg'),
          Container(
            height: 40,
            child: Text('标题', textAlign: TextAlign.center),
          ),
          Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg'),
          Container(
            height: 40,
            child: Text('标题', textAlign: TextAlign.center),
          ),
          Image.network(
              'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg')
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
