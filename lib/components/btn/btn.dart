import 'package:flutter/material.dart';

class BtnPage extends StatelessWidget {
  final String text;
  BtnPage(this.text);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('点击');
      },
      style: ButtonStyle(
        visualDensity: VisualDensity(horizontal: 1.0),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStateProperty.all(Colors.orange),
      ),
      child: Text(this.text),
    );
  }
}
