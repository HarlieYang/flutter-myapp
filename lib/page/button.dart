import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatefulWidget {
  ButtonDemo({Key key}) : super(key: key);

  @override
  _ButtonDemoState createState() => _ButtonDemoState();
}

class _ButtonDemoState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮'),
        actions: [
          IconButton(
            icon: Icon(Icons.ac_unit_outlined),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('dianji');
        },
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('普通按钮'),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text('颜色按钮'),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  elevation: MaterialStateProperty.all(20.0),
                ),
                child: Text('阴影按钮'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
                label: Text('icon按钮'),
              ),
              SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                child: Text('radius按钮'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                ),
                child: Text('border按钮'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  child: Text('圆形按钮'),
                ),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  child: Text('波纹按钮'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300.0,
                height: 40.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('指定宽度'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('自适应宽度'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // floatButton
              TextButton(
                onPressed: () {},
                child: Text('我是一个按钮'),
                style: TextButton.styleFrom(
                    // shape: CircleBorder(
                    //   side: BorderSide(
                    //     color: Colors.yellow,
                    //   ),
                    // ),
                    ),
              ),
              // outlinButton
              OutlinedButton(
                onPressed: () {},
                child: Container(
                  height: 50,
                  child: Text('outline'),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('按钮组1')),
                  ElevatedButton(onPressed: () {}, child: Text('按钮组2')),
                  ElevatedButton(onPressed: () {}, child: Text('按钮组3'))
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                '自定义',
                () {
                  print('1111111111');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

// 自定义组件
class MyButton extends StatelessWidget {
  final title;
  final onPressed;
  final width;
  final height;
  MyButton(this.title, this.onPressed,
      {this.width = 100.0, this.height = 40.0});
  @override
  Widget build(BuildContext context) {
    print(this.title);

    return Container(
      width: this.width,
      height: this.height,
      child: ElevatedButton(
        onPressed: this.onPressed,
        child: Text(this.title),
      ),
    );
  }
}
