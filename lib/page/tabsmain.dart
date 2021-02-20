import 'package:flutter/material.dart';
import 'tabs.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
    );
  }
}

main(List<String> args) {
  runApp(MyApp());
}
