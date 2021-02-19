import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((value) {
            return Text(value);
          }).toList(),
        ),
        ElevatedButton(
            onPressed: () => {
                  this.setState(() {
                    this.list.add('添加数据01');
                    this.list.add('添加数据02');
                  })
                },
            child: Text('增加数据'))
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: HomePage()),
      ),
    );
  }
}

main(List<String> args) {
  runApp(MyApp());
}
