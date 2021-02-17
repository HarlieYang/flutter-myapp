import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1,
        children: [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg")),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg")),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg")),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg")),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Image.network(
                  "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg")),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
