import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int text = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('${this.text}'),
        onPressed: () => {
          print('点击'),
          setState(() {
            this.text++;
          })
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

main(List<String> args) {
  runApp(MyApp());
}
