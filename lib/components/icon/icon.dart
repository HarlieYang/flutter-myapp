import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  // 定义构造函数
  IconData icon;
  double size;
  Color color;
  IconContainer(IconData icon, {Color color = Colors.red, double size = 32.0}) {
    this.icon = icon;
    this.color = color;
    this.size = size;
  }
  @override
  Widget build(BuildContext context) {
    print(this.icon);
    print(this.color);
    print(this.size);
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icon,
          color: Colors.white,
          size: this.size,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text('dddd')),
//           body: IconContainer(Icons.search)),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }
