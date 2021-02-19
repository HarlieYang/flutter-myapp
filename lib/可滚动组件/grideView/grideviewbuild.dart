import 'package:flutter/material.dart';
import '../../data/data.dart';

class HomePage extends StatelessWidget {
  Widget _getData(context, index) {
    return Container(
        padding: EdgeInsets.all(10),
        height: 400.0,
        color: Colors.red,
        child: Column(
          children: [
            Image.network(
              "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg",
              height: 100.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(listData[index]["title"])
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: listData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1, // 调整x\y轴比例
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              crossAxisCount: 2,
            ),
            itemBuilder: this._getData));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('网格列表')),
      body: HomePage(),
    ));
  }
}

void main() {
  runApp(MyApp());
}
