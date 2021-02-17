import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300,
      // height: 300,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(150),
      //   image: DecorationImage(
      //     image: NetworkImage(
      //       'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg',
      //     ),
      //     fit: BoxFit.cover,
      //   ),
      //   // borderRadius: BorderRadius.all(Radius.circular(150))
      // ),
      child: ClipOval(
        child: Image.asset(
          'images/4.png',
          width: 150,
          height: 100,
        ),
        // child: Image.network(
        //     "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg",
        //     height: 150,
        //     width: 150,
        //     fit: BoxFit.cover),
      ),
      // child: Image.network(
      //   "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3593964987,1999043304&fm=15&gp=0.jpg",
      // alignment: Alignment.bottomCenter,
      // color: Colors.red, // 图片颜色
      // colorBlendMode: BlendMode.screen, // 混合颜色
      // fit: BoxFit.cover,
      // repeat: ImageRepeat.repeatY,
      // ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('demo')),
            body: Center(child: HomePage())));
  }
}

void main() => runApp(MyApp());
